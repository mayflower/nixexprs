{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.mayflower.monitoring;
  hostName = name: machine:
    machine.deployment.targetHost or
      "${name}.${machine.containerDomains.${machine.hostBridge}}";
  hostNames = hosts: mapAttrsToList hostName hosts;

  #" machine config attrs -> { containerName = container machine config // hostBridge // containerDomains }
  containersOfMachine = m: flip mapAttrs m.containers (_: c:
    c.config // { hostBridge = c.hostBridge; containerDomains = m.mayflower.monitoring.containerDomains; }
  );

  # All hosts in the same datacenter as this host
  allMachinesSameDC = optionalAttrs (cfg.datacenter != null) (
    flip filterAttrs config.mayflower.machines (_: v: cfg.datacenter == v.mayflower.monitoring.datacenter));
  allHostsSameDC = fold mergeAttrs allMachinesSameDC (mapAttrsToList (_: machine: containersOfMachine machine) allMachinesSameDC);
  allHostNamesSameDC = hostNames allHostsSameDC;

  allMachines = config.mayflower.machines;
  allHosts = fold mergeAttrs allMachines (mapAttrsToList (_: machine: containersOfMachine machine) allMachines);
  allHostNames = hostNames allHosts;

  alertmanagerHostNames = hostNames (flip filterAttrs allHostsSameDC (_: m:
    m.services.prometheus.alertmanager.enable
  ));
  prometheusHostNames = hostNames (flip filterAttrs allHostsSameDC (_: m:
    m.services.prometheus2.enable
  ));
  unboundHostNames = hostNames (flip filterAttrs allHostsSameDC (_: m:
    m.systemd.services.prometheus-unbound-exporter.enable or false
  ));
  nginxExporterHostNames = hostNames (flip filterAttrs allHostsSameDC (_: m:
    m.services.prometheus.nginxExporter.enable
  ));
  unifiExporterHostNames = hostNames (flip filterAttrs allHostsSameDC (_: m:
    m.services.prometheus.unifiExporter.enable
  ));
  fritzboxExporterHostNames = hostNames (flip filterAttrs allHostsSameDC (_: m:
    m.services.prometheus.fritzboxExporter.enable
  ));
  openvpnExporterHostNames = hostNames (flip filterAttrs allHostsSameDC (_: m:
    m.services.prometheus.openvpnExporter.enable
  ));
  nginxSSLVhosts = flatten (flip mapAttrsToList allHosts (_: m:
    optionals m.services.nginx.enable (
      attrNames (flip filterAttrs m.services.nginx.virtualHosts (_: vh:
        vh.forceSSL || vh.addSSL || vh.onlySSL
      ))
    )
  ));

  mkScrapeConfigs = configs: flip mapAttrsToList configs (k: v: {
    job_name = k;
    scrape_interval = "30s";
    static_configs = flip map v.hostNames (name: {
      targets = [ "${name}:${toString v.port}" ];
      labels.alias = name;
    });
  });

  mkBlackboxConfig = { hostname, module, targets, interval ? "60s" }:
  {
    job_name = "blackbox_${module}_${hostname}";
    scrape_interval = interval;
    metrics_path = "/probe";
    params = {
      module = singleton module;
    };
    static_configs = [
      {
        inherit targets;
        labels = {
          source = hostname;
        };
      }
    ];
    relabel_configs = [
      {
        source_labels = [ "__address__" ];
        regex = "(.*)(:80)?";
        target_label = "__param_target";
        replacement = ''''${1}'';
      }
      {
        source_labels = [ "__param_target" ];
        regex = "(.*)";
        target_label = "instance";
        replacement = ''''${1}'';
      }
      {
        source_labels = [];
        regex = ".*";
        target_label = "__address__";
        replacement = "${hostname}:9115";
      }
    ];
  };
in {
  imports = [ ./blackbox-exporter.nix ];
  options = {
    # extends base nginx.virtualHosts
    services.nginx.virtualHosts = mkOption {
      options = {
        expectedStatusCode = mkOption {
          type = types.int;
          description = ''
            HTTP Status Code expected at / on the virtual Host.
          '';
        };
      };
    };

    mayflower.monitoring = {
      containerDomains = mkOption {
        type = types.attrsOf types.str;
        description = ''
          Map of bridge names - assigned to containers -
          to domains appended to the container name to monitor them.
        '';
      };

      datacenter = mkOption {
        type = types.nullOr types.str;
        default = null;
        description = ''
          Domain in which this node is located.
        '';
      };

      server = {
        enable = mkEnableOption "Mayflower-oriented monitoring server with prometheus";

        alertmanagerReceivers = mkOption {
          type = types.attrs;
          default = {};
          description = "";
        };

        blackboxExporterHosts = mkOption {
          type = types.listOf types.str;
          default = [];
          description = "Hostnames of blackboxExporter instances";
        };
      };
    };
  };

  config = mkMerge [
    {
      services.nginx.statusPage = true;
      services.prometheus.nginxExporter.enable = config.services.nginx.enable;
      services.prometheus.nginxExporter.openFirewall = config.services.nginx.enable;
      services.prometheus.nodeExporter = {
        enable = true;
        openFirewall = true;
        enabledCollectors = [
          "conntrack"
          "diskstats"
          "filefd"
          "filesystem"
          "netdev"
          "netstat"
          "time"
          "uname"
          "vmstat"
          "systemd"
          "logind"
          "loadavg"
          "meminfo"
          "stat"
        ] ++ optionals (!config.boot.isContainer) [
          "interrupts"
          "ksmd"
          "bonding"
        ];
        disabledCollectors = [
          "infiniband"
        ] ++ optionals config.boot.isContainer [
          "timex"
          "edac"
          "entropy"
          "hwmon"
          "zfs"
        ];
      };
    }
    (mkIf cfg.server.enable {
      systemd.services.prometheus.serviceConfig.LimitNOFILE = 1024000;
      systemd.services.alertmanager.serviceConfig.LimitNOFILE = 1024000;

      services = {
        prometheus2 = {
          enable = true;
          alertmanagerURL = flip map alertmanagerHostNames (n: "${n}:9093");
          rules = import ./alert-rules.nix { inherit lib; };
          scrapeConfigs = (mkScrapeConfigs {
            prometheus = {
              hostNames = prometheusHostNames;
              port = 9090;
            };
            unbound = {
              hostNames = unboundHostNames;
              port = 9167;
            };
            node = {
              hostNames = allHostNamesSameDC;
              port = 9100;
            };
            nginx = {
              hostNames = nginxExporterHostNames;
              port = 9113;
            };
            fritz = {
              hostNames = fritzboxExporterHostNames;
              port = 9133;
            };
            openvpn = {
              hostNames = openvpnExporterHostNames;
              port = 9167;
            };
            unifi = {
              hostNames = unifiExporterHostNames;
              port = 9130;
            };
          }) ++
          (flatten (flip map cfg.server.blackboxExporterHosts (hostname:
            (flip map [ "icmp_v4" "icmp_v6" ] (module: (mkBlackboxConfig
              {
                inherit hostname module;
                targets = (hostNames allHostsSameDC) ++ cfg.blackboxExporter.staticBlackboxIcmpTargets;
              }
            ))) ++
            (flip map [ "tcp_v4" "tcp_v6" ] (module: (mkBlackboxConfig
              {
                inherit hostname module;
                targets = cfg.blackboxExporter.staticBlackboxTcpTargets;
              }
            ))) ++
            [(mkBlackboxConfig
              {
                inherit hostname;
                module = "https_2xx";
                targets = (filter (n: n != "_" && n != "localhost")
                            nginxSSLVhosts ++ cfg.blackboxExporter.staticBlackboxHttpsTargets);
                interval = "50s";
              }
            )]
          )));
        };

        prometheus.alertmanager = {
          enable = true;
          meshPeers = alertmanagerHostNames;
          configuration = {
            route = {
              receiver = "dummy-null";
              routes = [ {
                group_by = [ "alertname" "alias" ];
                group_wait = "30s";
                group_interval = "2m";
                repeat_interval = "4h";
                receiver = "team-admins";
                match = { severity = "page"; };
              } ];
            };
            receivers = [
              ({
                name = "team-admins";
              } // cfg.server.alertmanagerReceivers)
              { name = "dummy-null"; }
            ];
          };
        };
      };
    })
  ];
}
