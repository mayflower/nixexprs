{ config, lib, pkgs, ... }:

with lib;

let

  cfg = config.mayflower.router;
  base = cfg.baseConfig;
  # FIXME: addrConf needs refactoring because ip4/ip6 was renamend to ipv4/ipv6.addresses
  componentConfig = base.routers."${config.networking.hostName}";

  netConfig = types.submodule {
    options = {
      interface = mkOption {
        type = types.nullOr types.str;
        default = null;
        description = "Use the specified interface for this network instead of creating a VLAN";
      };

      dnsSubdomain = mkOption {
        type = types.nullOr types.str;
        default = null;
        description = "Subdomain to be used for this net, defaults to the net name";
      };

      extraFirewallFlowRules = mkOption {
        default = [];
        description = "Additional firewall rules to be used by the router";
        example = [
          {action="DROP"; direction="in"; netPrefix="192.168.172.0/24"; remoteInterface="s2s"; }
          {action="ACCEPT"; direction="out"; remotePrefix="2a00:cb0:8002:0100::/64"; }
        ];
        type = types.listOf (types.submodule {
          options = {
            action = mkOption {
              type = types.enum [ "ACCEPT" "DROP" "REJECT" "LOG" ];
              description = "Action for the specified rule";
            };

            direction = mkOption {
              type = types.enum [ "in" "out" ];
              description = "Direction of the traffic flow, into the net or out from it";
            };

            netPrefix = mkOption {
              type = types.nullOr types.string;
              default = null;
              description = "Net IPv4/IPv6 prefix for this traffic flow";
            };

            remotePrefix = mkOption {
              type = types.nullOr types.string;
              default = null;
              description = "Remote IPv4/IPv6 prefix for this traffic flow";
            };

            remoteInterface = mkOption {
              type = types.nullOr types.string;
              default = null;
              description = "Remote Interface for this traffic flow";
            };

            remoteNet = mkOption {
              type = types.nullOr types.string;
              default = null;
              description = "Remote net for this traffic flow";
            };

            conntrackMatch = mkOption {
              type = types.bool;
              default = false;
              description = "Whether to match RELATED,ESTABLISHED connections";
            };

            extraOption = mkOption {
              type = types.nullOr types.string;
              default = null;
              description = "Extra options for the iptables command";
              example = "-p tcp --dport 80";
            };
          };
        });
      };

      enableDHCP = mkEnableOption "Enable DHCP server for this network";
      enableRA = mkEnableOption "Enable RA";
      enableNAT = mkEnableOption "Enable NAT from hosts of this network";
      enableDNS = mkEnableOption "Act as DNS server for this network";
    };
  };

  specifiedNetworks = remove null (flip map mayflowerNetworks (x: if (getAttr x cfg.networks) != null then x else null));
  createInterfaceNetworks = (filter (net: isNull cfg.networks."${net}".interface) specifiedNetworks);
  natNetworks = (filter (net: cfg.networks."${net}".enableNAT) specifiedNetworks);
  natInterfaces = (map interfaceForNet natNetworks);
  dhcpNetworks = (filter (net: cfg.networks."${net}".enableDHCP) specifiedNetworks);
  raNetworks = (filter (net: cfg.networks."${net}".enableRA) specifiedNetworks);
  dnsNetworks = (filter (net: cfg.networks."${net}".enableDNS) specifiedNetworks);

  mgmtIP = compConf: v: (head compConf.networks.mgmt.addressConfig."ip${toString v}").address;
  s2sIP4 = compConf: otherConf: "10.123.${toString compConf.index}.${toString otherConf.index}";
  s2sIP6 = compConf: otherConf: "fe80::${toString compConf.index}:${toString otherConf.index}";
  s2sIfName = name: "s2s-${substring 0 10 name}";

  otherRouters = filterAttrs (n: v: n != config.networking.hostName) base.routers;

  remoteSpecifiedNetworks = flip mapAttrs otherRouters (router: value:
    remove null (flip map mayflowerNetworks (x: if (value.networks."${x}" or null) != null then x else null)));

  remoteMeshIPs = remove null (flip mapAttrsToList otherRouters (router: value: value.s2s.listenAddress or null));

  vlans = base.common.vlans;
  zones = base.common.zones;
  dnsServers = (base.common.dnsServers or {}) // cfg.additionalDnsServers;

  # Parse zone definitions, currently only removes unspecified nets
  zonesRevised = flip mapAttrs zones (zone: value:
    {
      "nets" = (intersectLists (value.nets or []) specifiedNetworks);
      "interfaces" = (value.interfaces or []);
      "subnets" = (value.subnets or []);
      "allowFrom" = value.allowFrom or [];
      "allowFromRemote" = value.allowFromRemote or [];
    });

  remoteZonesRevised = flip mapAttrs (filterAttrs (n: v: n != config.networking.hostName) base.routers) (router: value:
    flip mapAttrs zones (zone: value2:
      {
        "nets" = (intersectLists (value2.nets or []) (remoteSpecifiedNetworks."${router}"));
        "subnets" = value2.subnets or [];
        "allowFromRemote" = value2.allowFromRemote or [];
      }
    )
  );

  iptablesZoneComment = zone: net: "-m comment --comment \"zone: ${zone} net: ${net}\"";

  # Use -i -o -s and -d flags of iptables rules according to chosen traffic flow direction
  iptablesExtraRuleParameterised = net: rule: ni: ri: np: rp:
    #assert (!((isString rule.remoteInterface or false) && (isString rule.remoteNet or false)));
    "${ni} ${interfaceForNet net}" + (optionalString (isString rule.remoteInterface or false) " ${ri} ${rule.remoteInterface}") +
    (optionalString (isString rule.remoteNet or false) " ${ri} ${interfaceForNet rule.remoteNet}") +
    (optionalString (isString rule.netPrefix or false) " ${np} ${rule.netPrefix}") + (optionalString (isString rule.remotePrefix or false) " ${rp} ${rule.remotePrefix}") +
    (optionalString (rule.conntrackMatch or false) " -m conntrack --ctstate RELATED,ESTABLISHED") + (optionalString (isString rule.extraOption or false) " ${rule.extraOption}");
  iptablesExtraRule = net: rule: if rule.direction == "in"
    then iptablesExtraRuleParameterised net rule "-o" "-i" "-d" "-s"
    else iptablesExtraRuleParameterised net rule "-i" "-o" "-s" "-d";

  interfaceForNet = net: (if (isString cfg.networks."${net}".interface) then cfg.networks."${net}".interface else net);
  subdomainForNet = net: (if (isString cfg.networks."${net}".dnsSubdomain) then cfg.networks."${net}".dnsSubdomain else net);

  mayflowerNetworks = attrNames vlans;

  mkVLAN = net: baseInterface: {
    name = net;
    value = {
      id = (getAttr net vlans);
      interface = baseInterface;
    };
  };

  mkVLANIface = interface: addressConfig: {
    name = interface;
    value = addressConfig;
  };

  mkRA = interface: "dhcp-range=::,constructor:${toString interface},ra-names,24h\n";
  mkDHCPv4 = interface: dhcpRange: "dhcp-range=${toString interface},${dhcpRange}\n";

  mkIPString = ipconf: "${ipconf.address}/${toString ipconf.prefixLength}";
  mkIPStrings = addressConfs: map mkIPString addressConfs;

  runCommand = name: script: pkgs.runCommand name {} script;

  mkNetworkString = addressConf: removeSuffix "\n" (builtins.readFile (runCommand "sipcalc-result" ''
    ${pkgs.sipcalc}/bin/sipcalc ${mkIPString addressConf} | grep Network\ range | cut -d' ' -f 3 > $out
  ''));
  mkNetworkPrefixString = addressConf: "${mkNetworkString addressConf}/${toString addressConf.prefixLength}";

  # dnsmasq fails with /23 /o\
  mkNetworkFirstIP = addressConf: removeSuffix "\n" (builtins.readFile (runCommand "sipcalc-result" ''
    ${pkgs.sipcalc}/bin/sipcalc ${mkIPString addressConf} | grep Network\ range | cut -d' ' -f 3 > $out
  ''));
  mkNetworkLastIP = addressConf: removeSuffix "\n" (builtins.readFile (runCommand "sipcalc-result" ''
    ${pkgs.sipcalc}/bin/sipcalc ${mkIPString addressConf} | grep Network\ range | cut -d' ' -f 5 > $out
  ''));

  # Result can be 'ipv4' or 'ipv6'
  getIPVersion = address: removeSuffix "\n" (builtins.readFile (runCommand "sipcalc-result" ''
    ${pkgs.sipcalc}/bin/sipcalc ${address} | head -n 1 | cut -d ' ' -f 1 | cut -c 3- > $out
  ''));
  getIPVersionAddrconfStyle = address: replaceStrings [ "v" ] [ "" ] (getIPVersion address);

  mkIptablesPrefix = subnet: if (getIPVersion subnet) == "ipv4" then "iptables" else "ip6tables";

  mkPrimaryAddr = type: if (componentConfig.networks != {})
    then (head (componentConfig.networks.mgmt.addressConfig."${type}" or [{"address" = "";}])).address
    else "127.0.0.1";

  birdConfig = ipVersion: let
    ip = if ipVersion == 4 then s2sIP4 else s2sIP6;
    hostPrefixLen = if ipVersion == 4 then "32" else "128";
    mkBirdNetList = list: ''[ ${concatStringsSep ", " list} ]'';
    mkBirdFilterCond = list: action: optionalString (list != []) "if net ~ ${mkBirdNetList list} then ${action};";
    AS = x: toString (4200000000 + x);
  in ''
    router id ${s2sIP4 componentConfig componentConfig};
    define OWNAS = ${AS componentConfig.index};

    protocol device {
      scan time 10;
    }

    protocol kernel {
      learn;
      scan time 10;
      device routes;
      metric 2000;
      import keep filtered;
      import filter {
        if dest = RTD_UNREACHABLE then reject;
        accept;
      };
      export filter {
        ${optionalString (ipVersion == 4) "krt_prefsrc = ${mgmtIP componentConfig 4};"}
        accept;
      };
    }

    protocol direct {
      interface "s2s-*", "${concatStringsSep ''", "'' (flip map (specifiedNetworks ++ cfg.routing.extraInterfaces) (net: let intf = cfg.networks."${net}".interface or null; in if intf != null then intf else net))}";
    };

    template bgp s2speers {
      local as OWNAS;
      direct;
      next hop self;
      path metric 1;
      missing lladdr ignore;
      import keep filtered;
      import filter {
        ${mkBirdFilterCond cfg.routing."importWhitelist${toString ipVersion}" "accept"}
        ${mkBirdFilterCond cfg.routing."importBlacklist${toString ipVersion}" "reject"}
        accept;
      };
      export filter {
        ${mkBirdFilterCond cfg.routing."exportWhitelist${toString ipVersion}" "accept"}
        ${mkBirdFilterCond cfg.routing."exportBlacklist${toString ipVersion}" "reject"}
        accept;
      };
      hold time 60;
      startup hold time 60;
      keepalive time 20;
      connect delay time 1;
      connect retry time 10;
      error wait time 30,120;
      error forget time 120;
    }
  '' + (concatStrings (mapAttrsToList (name: routerConfig: ''
    protocol bgp 's2s_${name}' from s2speers {
      neighbor ${ip routerConfig componentConfig}${optionalString (ipVersion == 6) " % '${s2sIfName name}'" } as ${AS routerConfig.index};
    }
  '') otherRouters));

in {

  ###### interface

  options = {
    mayflower.router = {
      enable = mkEnableOption "Mayflower Router Configuration";

      # Create options for each Mayflower network specified in MayflowerNetworks
      # Options for each network are specified in netConfig
      networks = mkOption {
        type = (types.submodule {
          options = listToAttrs (flip map mayflowerNetworks (net: {
                  "name" = net;
                  "value" = mkOption {
                    type = types.nullOr (netConfig);
                    default = null;
                    description = "${net} configuration";
                  };
              }));
        });
        description = "Mayflower networks configuration";
      };

      # Mayflower S2S VPN related options
      s2s = {
        enable = mkEnableOption "Enable Mayflower S2S VPN for this router";

        privateKey = mkOption {
          type = types.str;
          description = "";
        };
      };

      routing = {
        enable = mkEnableOption "Enable routing protocol over S2S links (BGP)";

        exportBlacklist4 = mkOption {
          type = types.listOf types.string;
          default = [];
        };

        exportWhitelist4 = mkOption {
          type = types.listOf types.string;
          default = [];
        };

        exportBlacklist6 = mkOption {
          type = types.listOf types.string;
          default = [];
        };

        exportWhitelist6 = mkOption {
          type = types.listOf types.string;
          default = [];
        };

        importBlacklist4 = mkOption {
          type = types.listOf types.string;
          default = [];
        };

        importWhitelist4 = mkOption {
          type = types.listOf types.string;
          default = [];
        };

        importBlacklist6 = mkOption {
          type = types.listOf types.string;
          default = [];
        };

        importWhitelist6 = mkOption {
          type = types.listOf types.string;
          default = [];
        };

        extraInterfaces = mkOption {
          type = types.listOf types.string;
          default = [];
        };
      };

      pxe = {
        enable = mkEnableOption "Enable PXE boot on dhcp interfaces";

        menuPath = mkOption {
          type = types.str;
          example = "boot/syslinux/archiso.cfg";
          description = ''
            Path in tftp root + pathPrefix to pxe menu config (DHCP Option 209). Example for menu config file:
            ```
              #!ipxe
              ####       boot.netboot.xyz initial loader       ####
              #### see http://netboot.xyz for more information ####
              set conn_type https
              chain --autofree https://boot.netboot.xyz/menu.ipxe || echo HTTPS failed... attempting HTTP...
              set conn_type http
              chain --autofree http://boot.netboot.xyz/menu.ipxe || echo HTTP failed, localbooting...
            ```
          '';
        };

        tftpRoot = mkOption {
          type = types.str;
          example = "/var/lib/dnsmasq/tftp-root/";
          description = "Path used as tftp root";
        };
      };

      externalInterface = mkOption {
        type = types.nullOr types.str;
        default = null;
        example = "enp0s2";
        description = "Uplink interface";
      };

      externalIP = mkOption {
        type = types.nullOr types.str;
        default = null;
        example = "1.2.3.4";
        description = "IP to SNAT to";
      };

      internalInterface = mkOption {
        type = types.str;
        example = "enp0s3";
        description = "Interface on which internal VLANs are created";
      };

      dnsDomain = mkOption {
        type = types.nullOr types.str;
        default = null;
        example = "domain.tld";
        description = "Domain to serve with this router";
      };

      additionalDnsServers = mkOption {
        type = types.attrs;
        default = {};
        description = "Additional DNS server specifications to be added to the existing one. Useful for testing.";
      };

      extraDnsRecords = mkOption {
        type = types.listOf (types.submodule {
          options = {
            host = mkOption { type = types.str; };
            type = mkOption { type = types.str; };
            data = mkOption { type = types.str; };
            ttl = mkOption { type = types.int; default = 3600; };
          };
        });
        default = [];
      };

      extraDnsZones = mkOption {
        type = types.listOf (types.submodule {
          options = {
            zone = mkOption { type = types.str; };
            type = mkOption { type = types.enum [ "deny" "refuse" "static" "transparent" "typetransparent" "redirect" "nodefault" ]; };
          };
        });
        default = [];
      };

      dnsForwardZones = mkOption {
        type = types.attrsOf (types.submodule {
          options = {
            forwardAddr = mkOption {
              type = types.str;
              description = "DNS Server to forward zone to.";
            };
          };
        });
        default = {};
      };

      forwardAll = mkEnableOption "forward all the packets";

      innovaphoneUpdateUrl = mkOption {
        type = types.nullOr types.str;
        default = null;
        example = "http://172.19.0.80/DRIVE/CF0/innovaphone/";
        description = "Update URL to be served for innovaphone telephones in DHCP";
      };

      extraDnsmasqConfig = mkOption {
        type = types.str;
        default = "";
        description = "Additional dnsmasq configuration entries";
      };

      firewallExtraCommands = mkOption {
        type = types.lines;
        default = "";
        description = "Additional firewall extra commands";
      };

      enableAvahiReflector = mkEnableOption "Enable Avahi reflector between Wifi/Lan";

      baseConfig = mkOption {
        type = types.attrs;
        default = {};
      };
    };
  };

  ###### implementation

  config = mkIf cfg.enable {

    # Use mkVLAN function to create VLAN definitions based on createInterfaceNetworks
    networking.vlans = listToAttrs (flip map createInterfaceNetworks (net: (mkVLAN net cfg.internalInterface)));

    # Create interface definitions based on the specifiedNetworks
    networking.interfaces = listToAttrs (flip map specifiedNetworks (net: {
      "name" = (if (elem net createInterfaceNetworks) then net else cfg.networks."${net}".interface);
      "value" = (getAttr net componentConfig.networks).addressConfig;
    }));

    networking.wireguard.interfaces = mkIf (cfg.s2s.enable) (mapAttrs'
      (name: routerConf: nameValuePair (s2sIfName name) (let basePort = 52500; in {
        inherit (cfg.s2s) privateKey;
        ips = [ "${s2sIP6 componentConfig routerConf}/64" ];
        listenPort = basePort + routerConf.index;
        allowedIPsAsRoutes = false;
        postSetup = [
          "${pkgs.iproute}/bin/ip addr replace ${s2sIP4 componentConfig routerConf} peer ${s2sIP4 routerConf componentConfig} dev $DEVICE"
        ];
        peers = [
          ({ inherit (routerConf.s2s) publicKey;
            allowedIPs = [ "::/0" "0.0.0.0/0" ];
          } // (optionalAttrs (routerConf.s2s ? endpoint) {
            endpoint = "${routerConf.s2s.endpoint}:${toString (basePort + componentConfig.index)}";
          }))
        ];
      }))
      otherRouters
    );

    networking.nat = optionalAttrs (cfg.externalInterface != null) {
      enable = true;
      externalInterface = cfg.externalInterface;
      internalInterfaces = natInterfaces;
    } // optionalAttrs (cfg.externalIP != null ) {
      externalIP = cfg.externalIP;
    };

    services.chrony = {
      enable = true;
      extraConfig = ''
        allow
        dumpdir /run/chrony
        dumponexit
      '';
    };

    services.dnsmasq = optionalAttrs (cfg.dnsDomain != null) {
      enable = true;
      resolveLocalQueries = true;
      extraConfig = ''
        port=54
        local-ttl=60
        no-negcache

        strict-order
        domain=${cfg.dnsDomain}
        dhcp-fqdn
        dhcp-authoritative
        domain-needed
        expand-hosts
        dhcp-broadcast=tag:needs-broadcast
        enable-ra

        dhcp-option=option:ntp-server,0.0.0.0
        dhcp-option=option6:ntp-server,[::]
        dhcp-option=option:dns-server,0.0.0.0
        dhcp-option=option6:dns-server,[::]
        dhcp-option=option6:information-refresh-time,3h
        dhcp-option=option:T1,1h
        dhcp-option=option:T2,6h

        interface=lo
      ''
      + concatStrings (flip map dhcpNetworks (net: "interface=${interfaceForNet net}\n"))
      + concatStrings (flip map dhcpNetworks (net: (mkDHCPv4 (interfaceForNet net) ((getAttr net componentConfig.networks).dhcpRange or ""))))
      + concatStrings (flip map raNetworks (net: mkRA (interfaceForNet net)))

      + optionalString (cfg.pxe.enable) (concatStrings (flatten [
        ''
          enable-tftp
          tftp-root=${cfg.pxe.tftpRoot}
          dhcp-match=set:ipxe,175
          dhcp-boot=tag:!ipxe,undionly.kpxe
          dhcp-boot=tag:ipxe,${cfg.pxe.menuPath}
        ''
        (flip map dhcpNetworks (net: "dhcp-option-force=66,${(head (getAttr net componentConfig.networks).addressConfig.ip4).address}\n"))
      ]))

      + concatStrings (flatten (flip map dnsNetworks (net:
          let
            addrConf = componentConfig.networks."${net}".addressConfig;
          in flip map ((addrConf.ip4 or []) ++ (addrConf.ip6 or [])) (addrConfig:
            if (addrConfig.prefixLength == 23) then let
              inc24 = addrConfig: let
                ipList = splitString "." addrConfig.address;
              in
              addrConfig // { address = "${elemAt ipList 0}.${elemAt ipList 1}.${toString ((toInt (elemAt ipList 2)) + 1)}.0";};
            in
            ''
              domain=${subdomainForNet net}.${cfg.dnsDomain},${mkNetworkString addrConfig}/24,local
              domain=${subdomainForNet net}.${cfg.dnsDomain},${(inc24 addrConfig).address}/24,local
            ''
            else if addrConfig.prefixLength > 24 then ""
            else "domain=${subdomainForNet net}.${cfg.dnsDomain},${mkNetworkPrefixString addrConfig},local\n"))))

      + optionalString (cfg.innovaphoneUpdateUrl != null ) ''
        dhcp-option=vendor:"1.3.6.1.4.1.6666",215,"${cfg.innovaphoneUpdateUrl}"
        dhcp-option=vendor:"1.3.6.1.4.1.6666",216,30
      '' + cfg.extraDnsmasqConfig;
    };

    systemd.services.prometheus-unbound-exporter = mkIf (cfg.dnsDomain != null) {
      wantedBy = [ "multi-user.target" ];
      serviceConfig.ExecStart = ''
        ${pkgs.prometheus-unbound-exporter.bin}/bin/unbound_exporter \
          -web.listen-address :9167 \
          -unbound.ca /var/lib/unbound/unbound_server.pem \
          -unbound.cert /var/lib/unbound/unbound_control.pem \
          -unbound.key /var/lib/unbound/unbound_control.key
      '';
    };

    systemd.services.unbound.serviceConfig.Restart = "on-failure";
    services.unbound = optionalAttrs (cfg.dnsDomain != null) {
      enable = true;
      allowedAccess = [ "::/0" "0.0.0.0/0" ];
      interfaces = (filter (x: !(isNull x)) (flatten (flip map dnsNetworks (net: let
          addrConf = componentConfig.networks."${net}".addressConfig;
          ip4 = flip map addrConf.ip4 (a: a.address);
          ip6 = optionals (addrConf ? "ip6") (flip map addrConf.ip6 (a: a.address));
        in (ip4 ++ ip6))))) ++ [ "127.0.0.1" "::1" ];
      extraConfig = ''
        server:
          port: 53
          so-reuseport: yes
          interface-automatic: yes
          num-threads: 2
          outgoing-range: 8192
          outgoing-num-tcp: 64
          num-queries-per-thread: 2048
          prefer-ip6: no
          verbosity: 1
          log-queries: no

          msg-cache-slabs: 2
          rrset-cache-slabs: 2
          infra-cache-slabs: 2
          key-cache-slabs: 2

          # more cache memory, rrset=msg*2
          rrset-cache-size: 256m
          msg-cache-size: 128m

          # Larger socket buffer
          so-rcvbuf: 4m
          so-sndbuf: 4m

          cache-min-ttl: 60
          cache-max-ttl: 86400
          cache-max-negative-ttl: 30
          qname-minimisation: yes
          prefetch: yes
          hide-version: yes

          statistics-interval: 0
          extended-statistics: yes

        remote-control:
          control-enable: yes

        server:
          # remove defaults for local reverse lookup zones
          local-zone: "10.in-addr.arpa" nodefault
          local-zone: "168.192.in-addr.arpa" nodefault
          local-zone: "16.172.in-addr.arpa" nodefault
          local-zone: "17.172.in-addr.arpa" nodefault
          local-zone: "18.172.in-addr.arpa" nodefault
          local-zone: "19.172.in-addr.arpa" nodefault
          local-zone: "20.172.in-addr.arpa" nodefault
          local-zone: "21.172.in-addr.arpa" nodefault
          local-zone: "22.172.in-addr.arpa" nodefault
          local-zone: "23.172.in-addr.arpa" nodefault
          local-zone: "24.172.in-addr.arpa" nodefault
          local-zone: "25.172.in-addr.arpa" nodefault
          local-zone: "26.172.in-addr.arpa" nodefault
          local-zone: "27.172.in-addr.arpa" nodefault
          local-zone: "28.172.in-addr.arpa" nodefault
          local-zone: "29.172.in-addr.arpa" nodefault
          local-zone: "30.172.in-addr.arpa" nodefault
          local-zone: "31.172.in-addr.arpa" nodefault
          local-zone: "d.f.ip6.arpa" nodefault

        '' + (concatStrings (flatten (mapAttrsToList
            (domain: server: [ "  local-zone: \"${domain}\" nodefault\n" ] ++
              (optionals (hasAttr "revDNS" server)
                (map (revEntry: "  local-zone: \"${revEntry}\" nodefault\n") server.revDNS)
              )
            ) dnsServers
        ))) + ''

        server:
          local-zone: "${cfg.dnsDomain}" nodefault
        '' + (concatStrings (flip map cfg.extraDnsZones (attrs:
          "  local-zone: \"${attrs.zone}\" ${attrs.type}\n"
        ))) + ''
          local-data: "${config.networking.hostName}.${cfg.dnsDomain}. 10800 IN A ${mgmtIP componentConfig 4}"
          local-data: "${config.networking.hostName}.${cfg.dnsDomain}. 10800 IN AAAA ${mgmtIP componentConfig 6}"

        '' + (
        concatStrings (flatten (flip map dnsNetworks (net:
          let
            addrConf = componentConfig.networks."${net}".addressConfig;
            ip4 = (head addrConf.ip4).address;
            ip6 = (head addrConf.ip6).address;
          in
            "  local-data: \"${config.networking.hostName}.${subdomainForNet net}.${cfg.dnsDomain}. 10800 IN A ${ip4}\"\n" +
            "  local-data-ptr: \"${ip4} ${config.networking.hostName}.${subdomainForNet net}.${cfg.dnsDomain}\"\n" + (
            optionalString (addrConf.ip6 or null != null) (
              "  local-data: \"${config.networking.hostName}.${subdomainForNet net}.${cfg.dnsDomain}. 10800 IN AAAA ${ip6}\"\n" +
              "  local-data-ptr: \"${ip6} ${config.networking.hostName}.${subdomainForNet net}.${cfg.dnsDomain}\"\n"
            )
          ))))

        ) + (concatStrings (flip map cfg.extraDnsRecords (attrs:
          "  local-data: \"${attrs.host}. ${toString attrs.ttl} IN ${attrs.type} ${attrs.data}\"\n")
        )) + ''

        '' + (concatStrings (flatten (mapAttrsToList
              (domain: server: optional (hasAttr "address" server) ''
                forward-zone:
                  name: "${domain}"
                  forward-addr: ${server.address}${optionalString (domain == cfg.dnsDomain) "@54"}
              '' ++ (optionals (hasAttr "revDNS" server) (map (revEntry: ''
                forward-zone:
                  name: "${revEntry}"
                  forward-addr: ${server.address}${optionalString (domain == cfg.dnsDomain) "@54"}
            '') server.revDNS)))
          dnsServers
        ))) + (concatStrings (flip mapAttrsToList cfg.dnsForwardZones (domain: domainCfg: ''
          forward-zone:
            name: "${domain}"
            forward-addr: ${domainCfg.forwardAddr}
          ''
        )));
    };

    services.bird = mkIf cfg.routing.enable {
      enable = true;
      config = birdConfig 4;
    };

   services.bird6 = mkIf cfg.routing.enable {
      enable = true;
      config = birdConfig 6;
    };

    services.avahi = optionalAttrs (cfg.enableAvahiReflector) {
      enable = true;
      ipv4 = true;
      ipv6 = true;
      interfaces = [ "lan" "wifi" ];
      reflector = true;
      cacheEntriesMax = 0;
    };

    networking.localCommands = ''
      ${pkgs.iproute}/bin/ip route replace unreachable 10/8
      ${pkgs.iproute}/bin/ip route replace unreachable 172.16/12
      ${pkgs.iproute}/bin/ip route replace unreachable 192.168/16
    '' + (concatStrings (flip map remoteMeshIPs (ip: ''
      ${pkgs.iproute}/bin/ip route replace ${ip} via ${config.networking.defaultGateway.address}
    '')));

    networking.firewall.allowedTCPPorts = [ 9167 ];
    networking.firewall.allowedUDPPorts = [ 67 123 ]
      ++ optional cfg.pxe.enable 69;
    networking.firewall.allowedUDPPortRanges = mkIf cfg.s2s.enable [
      { from = 52500; to = 52599; }
    ];

    networking.firewall.checkReversePath = false;

    networking.firewall.extraCommands = ''
      ip46tables -F OUTPUT

      '' + optionalString cfg.s2s.enable ''
        ip46tables -I nixos-fw 3 -i s2s+ -p udp --dport 53 -j nixos-fw-accept
        ip46tables -I nixos-fw 3 -i s2s+ -p tcp --dport 53 -j nixos-fw-accept
      '' + optionalString cfg.routing.enable ''
        ip46tables -I nixos-fw 3 -i s2s-+ -p tcp --dport 179 -j ACCEPT
      '' + concatStrings (flip map dnsNetworks (net: ''
        ip46tables -I nixos-fw 3 -i ${interfaceForNet net} -p udp --dport 53 -j nixos-fw-accept
        ip46tables -I nixos-fw 3 -i ${interfaceForNet net} -p tcp --dport 53 -j nixos-fw-accept
      '')) + ''

      ip46tables -F FORWARD
      ip46tables -t nat -F PREROUTING
      ip46tables -t nat -F POSTROUTING
      ip46tables -F mayflower_forward || true
      ip46tables -X mayflower_forward || true
      ip46tables -N mayflower_forward
      ip46tables -A FORWARD -j mayflower_forward

      ip46tables -F mayflower_extra-rules || true
      ip46tables -X mayflower_extra-rules || true
      ip46tables -F mayflower_s2s-rules || true
      ip46tables -X mayflower_s2s-rules || true
    '' + (concatStrings (flip map (attrNames zonesRevised) (zone: ''
      ip46tables -F mayflower_${zone} || true
      ip46tables -X mayflower_${zone} || true
    ''))) + (if cfg.forwardAll then ''
      ip46tables -P FORWARD ACCEPT
    '' else ''
      ip46tables -P FORWARD DROP
      iptables -A FORWARD -j REJECT --reject-with icmp-admin-prohibited
      ip6tables -A FORWARD -j REJECT --reject-with icmp6-adm-prohibited
    '' + (concatStrings (flip map (attrNames zonesRevised) (zone: concatStrings (flatten [

      # Create a chain for each zone. Traffic that goes into a zone is routed through this chain.
      "ip46tables -N mayflower_${zone}\n"
      (flip map zonesRevised."${zone}".interfaces (interface: ''
        ip46tables -A mayflower_forward -o ${interface} -j mayflower_${zone} ${iptablesZoneComment zone "N/A"}
      ''))
      (flip map zonesRevised."${zone}".nets (net: ''
        ip46tables -A mayflower_forward -o ${interfaceForNet net} -j mayflower_${zone} ${iptablesZoneComment zone net}
      ''))
      (flip map zonesRevised."${zone}".subnets (subnet: ''
        ${mkIptablesPrefix subnet} -A mayflower_forward -d ${subnet} -j mayflower_${zone} ${iptablesZoneComment zone subnet}
      ''))
    ])))) + (concatStrings (flip map (attrNames zonesRevised) (zone: concatStrings (flatten [

      # Handle zone specific allowFrom statement. The traffic from the allowedFrom zones will be allowed and the stateful route back as well
      (flip map zonesRevised."${zone}".allowFrom (allowFrom: [
        (flip map zonesRevised."${allowFrom}".interfaces (allowFromInterface: ''
          ip46tables -A mayflower_${zone} -i ${allowFromInterface} -j ACCEPT ${iptablesZoneComment zone "N/A"}
        ''))
        (flip map zonesRevised."${allowFrom}".nets (allowFromNet: ''
          ip46tables -A mayflower_${zone} -i ${interfaceForNet allowFromNet} -j ACCEPT ${iptablesZoneComment zone allowFromNet}
        ''))
        (flip map zonesRevised."${allowFrom}".subnets (allowFromSubnet: ''
          ${mkIptablesPrefix allowFromSubnet} -A mayflower_${zone} -s ${allowFromSubnet} -j ACCEPT ${iptablesZoneComment zone allowFromSubnet}
        ''))
        (flip map zonesRevised."${zone}".interfaces (interface: ''
          ip46tables -A mayflower_${allowFrom} -i ${interface} -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT ${iptablesZoneComment zone "N/A"}
        ''))
        (flip map zonesRevised."${zone}".nets (net: ''
          ip46tables -A mayflower_${allowFrom} -i ${interfaceForNet net} -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT ${iptablesZoneComment zone net}
        ''))
        (flip map zonesRevised."${zone}".subnets (subnet: ''
          ${mkIptablesPrefix subnet} -A mayflower_${allowFrom} -s ${subnet} -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT ${iptablesZoneComment zone subnet}
        ''))
      ]))
    ])))) + (concatStrings (flatten [

      # Handle extra network based rules
      "ip46tables -N mayflower_extra-rules\n"
      "ip46tables -A mayflower_forward -j mayflower_extra-rules\n"
      (flip map specifiedNetworks (net: (flip map (cfg.networks."${net}".extraFirewallFlowRules) (rule: [
      (optionals (((isNull rule.netPrefix) || ((getIPVersion rule.netPrefix) == "ipv4")) && ((isNull rule.remotePrefix) || (getIPVersion rule.remotePrefix == "ipv4")))''
        iptables -w -A mayflower_extra-rules ${iptablesExtraRule net rule} ${iptablesZoneComment "N/A" net} -j ${rule.action} || true
      '')
      (optionals (((isNull rule.netPrefix) || ((getIPVersion rule.netPrefix) == "ipv6")) && ((isNull rule.remotePrefix) || (getIPVersion rule.remotePrefix == "ipv6"))) ''
        ip6tables -w -A mayflower_extra-rules ${iptablesExtraRule net rule} ${iptablesZoneComment "N/A" net} -j ${rule.action} || true
      '')]))))
    ])) + (optionalString (cfg.s2s.enable) (concatStrings (flatten [
      ''
      # Handle site2site network based rules
      ip46tables -N mayflower_s2s-rules
      ip46tables -A mayflower_forward -i s2s+ -o s2s+ -j ACCEPT
      ip46tables -A mayflower_forward -i s2s+ -j mayflower_s2s-rules
      ip46tables -A mayflower_forward -o s2s+ -j mayflower_s2s-rules
      ''
      (flip map (attrNames zonesRevised) (localZone:
        (flip map zonesRevised."${localZone}".allowFromRemote (remoteZone:
          (flip map (attrNames remoteSpecifiedNetworks) (remoteRouter: [
            (flip map (intersectLists remoteSpecifiedNetworks."${remoteRouter}" remoteZonesRevised."${remoteRouter}"."${remoteZone}".nets) (remoteNet: [
              (flip map zonesRevised."${localZone}".nets (localNet: [
                "# ${remoteRouter}.${remoteZone}.${remoteNet} -> ${localZone}.${localNet}\n"
                (flip map ((base.routers."${remoteRouter}".networks."${remoteNet}".addressConfig.ip4 or []) ++ (base.routers."${remoteRouter}".networks."${remoteNet}".addressConfig.ip6 or []))
                (addressConfig: [
                  "${mkIptablesPrefix addressConfig.address} -w -A mayflower_s2s-rules ${iptablesExtraRule localNet {direction="in"; remotePrefix=(mkNetworkPrefixString addressConfig);}} -j ACCEPT\n"
                  "${mkIptablesPrefix addressConfig.address} -w -A mayflower_s2s-rules ${iptablesExtraRule localNet {direction="out"; remotePrefix=(mkNetworkPrefixString addressConfig); conntrackMatch=true;}} -j ACCEPT\n"
                ]))
              ]))
              (flip map zonesRevised."${localZone}".interfaces (localInterface: [
                "# ${remoteRouter}.${remoteZone}.${remoteNet} -> ${localZone}.${localInterface}\n"
                (flip map ((base.routers."${remoteRouter}".networks."${remoteNet}".addressConfig.ip4 or []) ++ (base.routers."${remoteRouter}".networks."${remoteNet}".addressConfig.ip6 or []))
                (addressConfig: [
                  "${mkIptablesPrefix addressConfig.address} -w -A mayflower_s2s-rules -o ${localInterface} -s ${mkNetworkPrefixString addressConfig} -j ACCEPT\n"
                  "${mkIptablesPrefix addressConfig.address} -w -A mayflower_s2s-rules -i ${localInterface} -d ${mkNetworkPrefixString addressConfig} -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT\n"
                ]))
              ]))
              (flip map zonesRevised."${localZone}".subnets (localSubnet: [
                "# ${remoteRouter}.${remoteZone}.${remoteNet} -> ${localZone}.${localSubnet}\n"
                (flip map (base.routers."${remoteRouter}".networks."${remoteNet}".addressConfig."${getIPVersionAddrconfStyle localSubnet}" or []) (addressConfig: [
                  "${mkIptablesPrefix localSubnet} -w -A mayflower_s2s-rules -d ${localSubnet} -s ${mkNetworkPrefixString addressConfig} -j ACCEPT\n"
                  "${mkIptablesPrefix localSubnet} -w -A mayflower_s2s-rules -s ${localSubnet} -d ${mkNetworkPrefixString addressConfig} -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT\n"
                ]))
              ]))
            ]))
            (flip map remoteZonesRevised."${remoteRouter}"."${remoteZone}".subnets (remoteSubnet: [
              (flip map zonesRevised."${localZone}".nets (localNet: [
                "# ${remoteRouter}.${remoteZone}.${remoteSubnet} -> ${localZone}.${localNet}\n"
                "${mkIptablesPrefix remoteSubnet} -w -A mayflower_s2s-rules ${iptablesExtraRule localNet {direction="in"; remotePrefix=remoteSubnet;}} -j ACCEPT\n"
                "${mkIptablesPrefix remoteSubnet} -w -A mayflower_s2s-rules ${iptablesExtraRule localNet {direction="out"; remotePrefix=remoteSubnet; conntrackMatch=true;}} -j ACCEPT\n"
              ]))
              (flip map zonesRevised."${localZone}".interfaces (localInterface: [
                "# ${remoteRouter}.${remoteZone}.${remoteSubnet} -> ${localZone}.${localInterface}\n"
                "${mkIptablesPrefix remoteSubnet} -w -A mayflower_s2s-rules -o ${localInterface} -s ${remoteSubnet} -j ACCEPT\n"
                "${mkIptablesPrefix remoteSubnet} -w -A mayflower_s2s-rules -i ${localInterface} -d ${remoteSubnet} -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT\n"
              ]))
              (flip map zonesRevised."${localZone}".subnets (localSubnet: optionals ((getIPVersion localSubnet) == (getIPVersion remoteSubnet)) [
                "# ${remoteRouter}.${remoteZone}.${remoteSubnet} -> ${localZone}.${localSubnet}\n"
                "${mkIptablesPrefix remoteSubnet} -w -A mayflower_s2s-rules -d ${localSubnet} -s ${remoteSubnet} -j ACCEPT\n"
                "${mkIptablesPrefix remoteSubnet} -w -A mayflower_s2s-rules -s ${localSubnet} -d ${remoteSubnet} -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT\n"
              ]))
            ]))
          ]))
        ))
      ))
      "# Allow to remote\n"
      (flip map (attrNames remoteZonesRevised) (remoteRouter:
        (flip map (attrNames remoteZonesRevised."${remoteRouter}") (remoteZone: [
          (flip map remoteZonesRevised."${remoteRouter}"."${remoteZone}".nets (remoteNet:
            (flip map remoteZonesRevised."${remoteRouter}"."${remoteZone}".allowFromRemote (localZone: [
              (flip map zonesRevised."${localZone}".nets (localNet: [
                "# ${localZone}.${localNet} -> ${remoteRouter}.${remoteZone}.${remoteNet}\n"
                (flip map ((base.routers."${remoteRouter}".networks."${remoteNet}".addressConfig.ip4 or []) ++ (base.routers."${remoteRouter}".networks."${remoteNet}".addressConfig.ip6 or []))
                (addressConfig: [
                  "${mkIptablesPrefix addressConfig.address} -w -A mayflower_s2s-rules ${iptablesExtraRule localNet {direction="out"; remotePrefix=(mkNetworkPrefixString addressConfig);}} -j ACCEPT\n"
                  "${mkIptablesPrefix addressConfig.address} -w -A mayflower_s2s-rules ${iptablesExtraRule localNet {direction="in"; remotePrefix=(mkNetworkPrefixString addressConfig); conntrackMatch=true;}} -j ACCEPT\n"
                ]))
              ]))
              (flip map zonesRevised."${localZone}".interfaces (localInterface: [
                "# ${localZone}.${localInterface} -> ${remoteRouter}.${remoteZone}.${remoteNet}\n"
                (flip map ((base.routers."${remoteRouter}".networks."${remoteNet}".addressConfig.ip4 or []) ++ (base.routers."${remoteRouter}".networks."${remoteNet}".addressConfig.ip6 or []))
                (addressConfig: [
                  "${mkIptablesPrefix addressConfig.address} -w -A mayflower_s2s-rules -i ${localInterface} -d ${mkNetworkPrefixString addressConfig} -j ACCEPT\n"
                  "${mkIptablesPrefix addressConfig.address} -w -A mayflower_s2s-rules -o ${localInterface} -s ${mkNetworkPrefixString addressConfig} -j ACCEPT\n"
                ]))
              ]))
              (flip map zonesRevised."${localZone}".subnets (localSubnet: [
                "# ${localZone}.${localSubnet} -> ${remoteRouter}.${remoteZone}.${remoteNet}\n"
                (flip map (base.routers."${remoteRouter}".networks."${remoteNet}".addressConfig."${getIPVersionAddrconfStyle localSubnet}" or []) (addressConfig: [
                  "${mkIptablesPrefix localSubnet} -w -A mayflower_s2s-rules -s ${localSubnet} -d ${mkNetworkPrefixString addressConfig} -j ACCEPT\n"
                  "${mkIptablesPrefix localSubnet} -w -A mayflower_s2s-rules -d ${localSubnet} -s ${mkNetworkPrefixString addressConfig} -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT\n"
                ]))
              ]))
            ]))
          ))
          (flip map remoteZonesRevised."${remoteRouter}"."${remoteZone}".subnets (remoteSubnet:
            (flip map remoteZonesRevised."${remoteRouter}"."${remoteZone}".allowFromRemote (localZone: [
              (flip map zonesRevised."${localZone}".nets (localNet: [
                "# ${localZone}.${localNet} -> ${remoteRouter}.${remoteZone}.${remoteSubnet}\n"
                "${mkIptablesPrefix remoteSubnet} -w -A mayflower_s2s-rules ${iptablesExtraRule localNet {direction="out"; remotePrefix=remoteSubnet;}} -j ACCEPT\n"
                "${mkIptablesPrefix remoteSubnet} -w -A mayflower_s2s-rules ${iptablesExtraRule localNet {direction="in"; remotePrefix=remoteSubnet; conntrackMatch=true;}} -j ACCEPT\n"
              ]))
              (flip map zonesRevised."${localZone}".interfaces (localInterface: [
                "# ${localZone}.${localInterface} -> ${remoteRouter}.${remoteZone}.${remoteSubnet}\n"
                "${mkIptablesPrefix remoteSubnet} -w -A mayflower_s2s-rules -i ${localInterface} -d ${remoteSubnet} -j ACCEPT\n"
                "${mkIptablesPrefix remoteSubnet} -w -A mayflower_s2s-rules -o ${localInterface} -s ${remoteSubnet} -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT\n"
              ]))
              (flip map zonesRevised."${localZone}".subnets (localSubnet: optionals ((getIPVersion localSubnet) == (getIPVersion remoteSubnet)) [
                "# ${localZone}.${localSubnet} -> ${remoteRouter}.${remoteZone}.${remoteSubnet}\n"
                "${mkIptablesPrefix remoteSubnet} -w -A mayflower_s2s-rules -s ${localSubnet} -d ${remoteSubnet} -j ACCEPT\n"
                "${mkIptablesPrefix remoteSubnet} -w -A mayflower_s2s-rules -d ${localSubnet} -s ${remoteSubnet} -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT\n"
              ]))
            ]))
          ))
        ]))
      ))
    ])))) + cfg.firewallExtraCommands;

    boot.kernel.sysctl = {
      "net.ipv4.conf.all.forwarding" = 1;
      "net.ipv4.conf.default.forwarding" = 1;
      "net.ipv6.conf.all.forwarding" = 1;
      "net.ipv6.conf.default.forwarding" = 1;
    };
  };
}
