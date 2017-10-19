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
  allHosts = fold mergeAttrs config.mayflower.machines (mapAttrsToList (_: machine: containersOfMachine machine) config.mayflower.machines);
  allHostNames = hostNames allHosts;
  alertmanagerHostNames = hostNames (flip filterAttrs allHosts (_: m:
    m.services.prometheus.alertmanager.enable
  ));
  blackboxExporterHosts = flip filterAttrs allHosts (_: m:
    m.mayflower.monitoring.blackboxExporter.enable
  );
  nginxExporterHostNames = hostNames (flip filterAttrs allHosts (_: m:
    m.services.prometheus.nginxExporter.enable
  ));
  unifiExporterHostNames = hostNames (flip filterAttrs allHosts (_: m:
    m.services.prometheus.unifiExporter.enable
  ));
  fritzboxExporterHostNames = hostNames (flip filterAttrs allHosts (_: m:
    m.services.prometheus.fritzboxExporter.enable
  ));
  openvpnExporterHostNames = hostNames (flip filterAttrs allHosts (_: m:
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

  mkBlackboxConfig = { machine, hostname, proto, targets, module, interval ? "60s" }:
  {
    job_name = "blackbox_${proto}_${hostname}";
    scrape_interval = interval;
    metrics_path = "/probe";
    params = {
      inherit module;
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
        replacement = "127.0.0.1:9115";
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
      server = mkOption {
        type = types.submodule {
          options = {
            enable = mkEnableOption "Mayflower-oriented monitoring server with prometheus";
            alertmanagerReceivers = mkOption {
              type = types.attrs;
              default = {};
              description = "";
            };
          };
        };
        description = "";
        default = {};
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
        ] ++ optionals (!config.boot.isContainer) [
          "stat"
          "entropy"
          "meminfo"
          "interrupts"
          "ksmd"
          "hwmon"
          "zfs"
          "edac"
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
            node = {
              hostNames = allHostNames;
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
          (flatten (flip mapAttrsToList blackboxExporterHosts (name: machine:
            let
              blackboxCfg = machine.mayflower.monitoring.blackboxExporter;
            in
            (flip map [ "icmp_v4" "icmp_v6" ] (proto: (mkBlackboxConfig
              {
                inherit machine proto;
                hostname = hostName name machine;
                targets = (hostNames allHosts) ++ blackboxCfg.staticBlackboxIcmpTargets;
                module = singleton proto;
              }
            ))) ++
            (flip map [ "tcp_v4" "tcp_v6" ] (proto: (mkBlackboxConfig
              {
                inherit machine proto;
                hostname = hostName name machine;
                targets = blackboxCfg.staticBlackboxTcpTargets;
                module = singleton proto;
              }
            ))) ++
            [(mkBlackboxConfig
              {
                inherit machine;
                proto = "https";
                hostname = hostName name machine;
                targets = (filter (n: n != "_" && n != "localhost")
                            nginxSSLVhosts ++ blackboxCfg.staticBlackboxHttpsTargets);
                module = [ "https_2xx" ];
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
