{ config, lib, pkgs, nodes, ... }:

let
  cfg = config.mayflower.wireguard;

  inherit (lib.attrsets)
    mapAttrs'
    mapAttrsToList;

  inherit (lib.options)
    mkOption
    mkEnableOption;

  inherit (lib.modules)
    mkMerge
    mkIf;

  inherit (lib.strings)
    concatStrings;

  inherit (lib.lists)
    concatMap
    flatten
    head
    length
    optional
    optionals;

  inherit (lib)
    types
    mdDoc;

  # TODO assertion for network name -> wg-... (max 15B, case sensitive, utf-8, no /, no WS)
  # TODO maybe support wg PSKs
  # TODO maybe make opening UDP port configurable

  wireguardEndpointOptions = with types; {
    hostname = mkOption {
      type = nullOr str;
      default = null;
    };
    ip4 = mkOption {
      type = nullOr str;
      default = null;
    };
    ip6 = mkOption {
      type = nullOr str;
      default = null;
    };
    listenPort = mkOption {
      type = nullOr port;
    };
  };

  assertionsForEndpoints = networks: flatten (mapAttrsToList (networkName: networkConf:
    let
      endpointConf = networkConf.wireguard.endpoint;
    in
  optionals (endpointConf !=null) [ {
      assertion = ((endpointConf.ip4 != null && endpointConf.ip6 != null) -> endpointConf.hostname != null);
      message = ''
        Error in config for network '${networkName}':
          Both IPv4 and IPv6 endpoint addresses are defined, but no hostname for /etc/hosts
      '';
    } {
      assertion = (endpointConf.ip4 != null || endpointConf.ip6 != null || endpointConf.hostname != null);
      message = ''
        Error in config for network '${networkName}':
          None of IPv4, IPv6 endpoint addresses or hostname are defined.
      '';
    }
  ]) networks);

  /* construct host port combination from non-null endpointConf */
  endpointStringFromConf = endpointConf:
    if endpointConf.hostname != null
    then "${endpointConf.hostname}:${toString endpointConf.listenPort}"
    else concatStrings [
      "${if endpointConf.ip4 != null then endpointConf.ip4 else endpointConf.ip6}"
      ":${toString endpointConf.port}"
    ];

  /* construct legacy peer config from module-specific wireguard config */
  legacyPeerConfigFromConf = wireguardConf:
    let
      endpointConf = wireguardConf.endpoint;
    in mkMerge [
      {
        inherit (wireguardConf) persistentKeepalive publicKey;
        allowedIPs = [
          "${wireguardConf.tunnelIPv4Address}/32"
          "${wireguardConf.tunnelIPv6Address}/128"
        ];
      }
      (mkIf (endpointConf != null) {
        endpoint = endpointStringFromConf endpointConf;
      })
    ];

  /* construct networkd peer config from module-specific wireguard config */
  peerConfigFromConf = wireguardConf:
    let
      endpointConf = wireguardConf.endpoint;
    in {
      wireguardPeerConfig = {
        PersistentKeepalive = wireguardConf.persistentKeepalive;
        PublicKey = wireguardConf.publicKey;
        AllowedIPs = [
          "${wireguardConf.tunnelIPv4Address}/32"
          "${wireguardConf.tunnelIPv6Address}/128"
        ];
        Endpoint = mkIf (endpointConf != null) (endpointStringFromConf endpointConf);
      };
    };

  topologies = {
    /* definitions for the star network topology */
    star = {
      /* helper functions for star network topology */
      util = rec {
        /* extract module-specific config for host in network */
        extractConfigForNetwork = hostConfig: networkName:
          hostConfig.mayflower.wireguard.star.${networkName};

        /* Filter hosts & declarative containers from a set of nodes if the node's
           config matches `cond` (i.e. `cond config == true`). */
        _extractHostConfigs = cond:
          concatMap
            ({ config, ... }: optional (cond config) config
              ++ concatMap
                ({ config, ... }: optional (cond config) config)
                (builtins.attrValues config.containers))
            (builtins.attrValues nodes);

        /* extract list of all configs for hosts in this network */
        extractRegularHostConfigsForNetwork = networkName: _extractHostConfigs
          (host:
            host.mayflower.wireguard.star.${networkName}.enable or false
            && ! (host.mayflower.wireguard.star.${networkName}.isServer or false));

        /* helper function for centralHostConfigFornetwork */
        _extractCentralHostConfigsForNetwork = networkName: _extractHostConfigs
          (host:
            host.mayflower.wireguard.star.${networkName}.enable or false
            && host.mayflower.wireguard.star.${networkName}.isServer or false);

        /* extract config of central host in this network */
        centralHostConfigForNetwork = networkName:
          let
            centralHosts = (_extractCentralHostConfigsForNetwork networkName);
          in
            # there is exactly one central host with star topology
            assert (length centralHosts == 1);
            (head centralHosts);

        /* generate list of all peer attrsets for this host and this network
           helper function for _legacyWireguardConfigForNetwork */
        _legacyWireguardPeersForNetwork = networkName: networkConfig: if networkConfig.isServer
          then (map (peerHostConfig:
            legacyPeerConfigFromConf (extractConfigForNetwork peerHostConfig networkName).wireguard
          ) (extractRegularHostConfigsForNetwork networkName))
        else let
          centralHostConfig = centralHostConfigForNetwork networkName;
        in
          [
            (legacyPeerConfigFromConf (extractConfigForNetwork centralHostConfig networkName).wireguard)
          ];

        /* generate wireguard config for this host and this network
           helper function for legacyWireguardConfigs */
        _legacyWireguardConfigForNetwork = networkName: networkConfig: mkMerge [
          {
            inherit (networkConfig.wireguard) privateKeyFile;
            ips = [
              "${networkConfig.wireguard.tunnelIPv4Address}/32"
              "${networkConfig.wireguard.tunnelIPv6Address}/128"
            ];
            peers = (_legacyWireguardPeersForNetwork networkName networkConfig);
          }
          (mkIf (networkConfig.wireguard.endpoint != null && networkConfig.wireguard.endpoint.listenPort != null) {
            inherit (networkConfig.wireguard.endpoint) listenPort;
          })
          (mkIf (networkConfig.wireguard.fwMark != null) {
            postSetup = ''
              wg set "$DEVICE" fwmark ${toString networkConfig.wireguard.fwMark}
            '';
          })
        ];

        /* generate legacy config for all wireguard interfaces on this host */
        legacyWireguardConfigs = networks: mapAttrs' (networkName: networkConfig: {
          name = "wg-${networkName}";
          value = _legacyWireguardConfigForNetwork networkName networkConfig;
        }) networks;

        /* generate list of all peer attrsets for this host and this network
           helper function for wireguardConfigs */
        _wireguardPeersForNetwork = networkName: networkConfig: if networkConfig.isServer
          then (map (peerHostConfig:
            peerConfigFromConf (extractConfigForNetwork peerHostConfig networkName).wireguard
          ) (extractRegularHostConfigsForNetwork networkName))
          else let
            centralHostConfig = centralHostConfigForNetwork networkName;
          in [
            (peerConfigFromConf (extractConfigForNetwork centralHostConfig networkName).wireguard)
          ];

        /* generate list of address configs for wireguard interfaces for this host and this network
           helper function for wireguardConfigs */
        _wireguardAddressConfigForNetwork = networkName: networkConfig: if networkConfig.isServer
          then [
            { addressConfig = { Address = "${networkConfig.wireguard.tunnelIPv4Address}/32"; }; }
            { addressConfig = { Address = "${networkConfig.wireguard.tunnelIPv6Address}/128"; }; }
          ]
          else let
            centralHostConfig = centralHostConfigForNetwork networkName;
            centralWGConfig = (extractConfigForNetwork centralHostConfig networkName).wireguard;
          in [
            { addressConfig = { Address = "${networkConfig.wireguard.tunnelIPv4Address}/32"; Peer = "${centralWGConfig.tunnelIPv4Address}/32"; }; }
            { addressConfig = { Address = "${networkConfig.wireguard.tunnelIPv6Address}/128"; Peer = "${centralWGConfig.tunnelIPv6Address}/128"; }; }
          ];

        /* generate list of route configs for wireguard interfaces for this host and this network
          (only used for the 'server' host in star topology)
          helper function for wireguardConfigs */
        _wireguardRouteConfigForNetwork = networkName: networkConfig: flatten (map (peerHostConfig:
          let
            peerWGConfig = (extractConfigForNetwork peerHostConfig networkName).wireguard;
          in [
            { routeConfig = { Destination = peerWGConfig.tunnelIPv4Address; Scope = "link"; }; }
            { routeConfig = { Destination = peerWGConfig.tunnelIPv6Address; }; }
          ]
        ) (extractRegularHostConfigsForNetwork networkName));


        /* generate systemd-networkd config for all wireguard interfaces on this host */
        wireguardConfigs = networks: {
          netdevs = mapAttrs' (networkName: networkConfig: {
            name = "30-wg-${networkName}";
            value = {
              netdevConfig = {
                Description = "WireGuard interface for ${networkName} star network";
                Name = "wg-${networkName}";
                Kind = "wireguard";
              };
              wireguardConfig = mkMerge [
                {
                  # FIXME: instead of hard-coding /run/credentials/<unit-name> we should use ${CREDENTIALS_DIRECTORY}
                  #   but this can at this time not be used in networkd config files
                  #   and the variable is also not available during ExecStartPre
                  PrivateKeyFile = "/run/credentials/systemd-networkd.service/wireguard-${networkName}-privatekey";
                }
                (mkIf (networkConfig.wireguard.endpoint != null && networkConfig.wireguard.endpoint.listenPort != null) {
                  ListenPort = networkConfig.wireguard.endpoint.listenPort;
                })
                (mkIf (networkConfig.wireguard.fwMark != null) {
                  FirewallMark = networkConfig.wireguard.fwMark;
                })
              ];
              wireguardPeers = _wireguardPeersForNetwork networkName networkConfig;
            };
          }) networks;
          networks = mapAttrs' (networkName: networkConfig: {
            name = "30-wg-${networkName}";
            value  = mkMerge [
              {
                matchConfig.Name = "wg-${networkName}";
                addresses = _wireguardAddressConfigForNetwork networkName networkConfig;
              }
              (mkIf networkConfig.isServer {
                routes = _wireguardRouteConfigForNetwork networkName networkConfig;
              })
            ];
          }) networks;
        };

        /* generate list of mappings from ID to the path of the private key file of each network
           for this host. See systemd.exec(5) for LoadCredentials */
        wireguardLoadCredentials = networks: mapAttrsToList (networkName: networkConfig:
          "wireguard-${networkName}-privatekey:${networkConfig.wireguard.privateKeyFile}"
        ) networks;

        extractPortsToOpenInFirewall = networks: flatten (mapAttrsToList (_: networkConfig:
          if networkConfig.enable && networkConfig.wireguard.endpoint != null
          then networkConfig.wireguard.endpoint.listenPort
          else []
        ) networks);

        /* helper function for extraHostsForEndpoints */
        _extraHostsFromConfigsForNetwork = hostConfigs: networkName: flatten (map (hostConfig: let
          hostEndpoint = (extractConfigForNetwork hostConfig networkName).wireguard.endpoint;
        in
          optionals (hostEndpoint != null && hostEndpoint.hostname != null) (
            (optional (hostEndpoint.ip4 != null) {
              name = hostEndpoint.ip4;
              value = [ hostEndpoint.hostname ];
            })
            ++
            (optional (hostEndpoint.ip6 != null) {
              name = hostEndpoint.ip6;
              value = [ hostEndpoint.hostname ];
            })
          )
        ) hostConfigs);

        /* generate entries for /etc/hosts for peers which specified both hostname and addresses */
        extraHostsForEndpoints = networks: mkMerge (builtins.attrValues (builtins.mapAttrs (networkName: networkConfig: (
          builtins.listToAttrs (_extraHostsFromConfigsForNetwork (
            if networkConfig.isServer
              then (extractRegularHostConfigsForNetwork networkName)
              else (_extractCentralHostConfigsForNetwork networkName)
          ) networkName)
        )) networks ));


        /* generate entries for /etc/hosts for tunnel addresses of central peer on all hosts per network */
        centralHostEntries = networks: builtins.listToAttrs (flatten (mapAttrsToList (networkName: networkConfig: let
          centralHostConfig = centralHostConfigForNetwork networkName;
          centralHostNetworkConfig = extractConfigForNetwork centralHostConfig networkName;
        in [
            { name = centralHostNetworkConfig.wireguard.tunnelIPv4Address; value = [ networkConfig.centralPeerHostname ];}
            { name = centralHostNetworkConfig.wireguard.tunnelIPv6Address; value = [ networkConfig.centralPeerHostname ];}
          ]) networks)
        );

        /* generate entries for /etc/hosts for tunnel addresses of regular peers on central host per network */
        regularHostEntries = networks: builtins.listToAttrs (flatten (mapAttrsToList (networkName: networkConfig:
          let
            regularHostConfigs = extractRegularHostConfigsForNetwork networkName;
            generateHostEntries = (regularHostConfig:
              let
                regularHostNetworkConfig = extractConfigForNetwork regularHostConfig networkName;
                inTunnelHostname = regularHostNetworkConfig.wireguard.inTunnelHostname;
              in
              optionals (inTunnelHostname != null) [
                { name = regularHostNetworkConfig.wireguard.tunnelIPv4Address; value = [ inTunnelHostname ];}
                { name = regularHostNetworkConfig.wireguard.tunnelIPv6Address; value = [ inTunnelHostname ];}
              ]);
          in
          if networkConfig.isServer then map generateHostEntries regularHostConfigs else []
        ) networks ));

        assertionsForNetworks = networks: flatten (mapAttrsToList (networkName: networkConfig: [
          {
            assertion = let
              centralHostHasEndpoint = (extractConfigForNetwork (centralHostConfigForNetwork networkName) networkName).wireguard.endpoint != null;
              allRegularHostsHaveEndpoints = builtins.all (hostConfig:
                ((extractConfigForNetwork hostConfig networkName).wireguard.endpoint != null)
              ) (extractRegularHostConfigsForNetwork networkName);
            in (centralHostHasEndpoint || allRegularHostsHaveEndpoints);
            message = ''
              Error in config for network '${networkName}':
                mayflower.wireguard.star.${networkName}.wireguard.endpoint needs to be defined
                for all regular hosts in this network if it is not defined for the central host.
            '';
          }
          {
            assertion = networkConfig.isServer -> (
              networkConfig.wireguard.inTunnelHostname == null
              || networkConfig.wireguard.inTunnelHostname == networkConfig.centralPeerHostname
            );
            message = ''
              Error in config for network '${networkName}':
                If mayflower.wireguard.star.${networkName}.isServer is true
                mayflower.wireguard.star.${networkName}.wireguard.inTunnelHostname must either be null
                or equal to mayflower.wireguard.star.${networkName}.centralPeerHostname.
            '';
          }
        ]) networks);
      };

      /* submodule options for star network topology */
      options = name: {
        enable = mkEnableOption (mdDoc "this network with star topology");
        isServer = mkEnableOption (mdDoc "central host in this network");
        centralPeerHostname = mkOption {
          type = types.str;
          default = "${name}-server";
          description = mdDoc ''
            Hostname that should resolve to the in-tunnel addresses of the central host of this network.
            Entries in /etc/hosts are created on each regular host in this network.
          '';
        };
        wireguard = {
          endpoint = mkOption {
            type = types.nullOr (types.submodule {
              options = wireguardEndpointOptions;
            });
            default = null;
          };
          privateKeyFile = mkOption {
            type = types.str;
            default = config.sops.secrets."wireguard-${name}-privatekey".path;
          };
          publicKey = mkOption {
            type = types.str;
          };
          tunnelIPv4Address = mkOption {
            type = types.str;
          };
          tunnelIPv6Address = mkOption {
            type = types.str;
          };
          persistentKeepalive = mkOption {
            type = types.nullOr types.int;
            default = 10;
          };
          inTunnelHostname = mkOption {
            type = types.nullOr types.str;
            default = null;
            description = mdDoc ''
              Hostname that should resolve to the in-tunnel addresses of this host in this network.
              Entries in /etc/hosts are created on the central host of this network.
              Note that configuring this option for the central host has no effect on regular hosts.
            '';
          };
          fwMark = mkOption {
            type = types.nullOr (types.ints.between 1 4294967295);
            default = null;
            description = mdDoc ''
              Sets a firewall mark on outgoing WireGuard packets from this interface.
            '';
          };
        };
      };
    };
  };
in
{
  options.mayflower.wireguard = {
    enable = mkEnableOption (mdDoc "mayflower wireguard network module");

    lib = {
      star = {
        extractConfigForNetwork = mkOption {
          type = types.functionTo types.unspecified;
          default = topologies.star.util.extractConfigForNetwork;
          readOnly = true;
        };
        extractRegularHostConfigsForNetwork = mkOption {
          type = types.functionTo (types.listOf types.attrs);
          default = topologies.star.util.extractRegularHostConfigsForNetwork;
          readOnly = true;
        };
      };
    };

    star = mkOption {
      type = types.attrsOf (types.submodule ({ name, ... }: {
        options = topologies.star.options name;
      }));
      default = {};
    };
    /* TODO add more topologies
    fullMesh = mkOption {};
    pointToPoint ...
    */
  };

  config = mkIf cfg.enable {
    assertions =  (assertionsForEndpoints cfg.star)
      ++ (topologies.star.util.assertionsForNetworks cfg.star);

    networking.hosts = mkMerge [
      (topologies.star.util.extraHostsForEndpoints cfg.star)
      (topologies.star.util.centralHostEntries cfg.star)
      (topologies.star.util.regularHostEntries cfg.star)
    ];

    systemd.network = mkIf config.networking.useNetworkd (
      topologies.star.util.wireguardConfigs cfg.star
    );

    systemd.services.systemd-networkd.serviceConfig = mkIf config.networking.useNetworkd {
      LoadCredential = topologies.star.util.wireguardLoadCredentials cfg.star;
    };

    networking.wireguard.interfaces = mkIf (!config.networking.useNetworkd) (
      topologies.star.util.legacyWireguardConfigs cfg.star
    );

    networking.firewall.allowedUDPPorts = (
      topologies.star.util.extractPortsToOpenInFirewall cfg.star
    );

    environment.systemPackages = optional config.networking.useNetworkd pkgs.wireguard-tools;
  };
}
