{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.mayflower.monitoring;
  hostName = name: machine:
    machine.deployment.targetHost or
      "${machine.networking.hostName}.${machine.containerDomains.${machine.hostBridge}}";
  hostNames = hosts: mapAttrsToList hostName hosts;

  #" machine config attrs -> { containerName = container machine config // hostBridge // containerDomains }
  containersOfMachine = m: filterAttrs (_: c: c.hostBridge != null) (flip mapAttrs m.containers (_: c:
    c.config // { hostBridge = c.hostBridge; containerDomains = m.mayflower.monitoring.containerDomains; }
  ));

  # All hosts in the same datacenter as this host
  allMachinesSameDC = optionalAttrs (cfg.datacenter != null) (
    flip filterAttrs config.mayflower.machines (_: v: cfg.datacenter == v.mayflower.monitoring.datacenter));
  allHostsSameDC = fold mergeAttrs allMachinesSameDC (mapAttrsToList (_: machine: containersOfMachine machine) allMachinesSameDC);
  allHostNamesSameDC = hostNames allHostsSameDC;

  allMachines = config.mayflower.machines;
  allHosts = fold mergeAttrs allMachines (mapAttrsToList (_: machine: containersOfMachine machine) allMachines);
  allHostNames = hostNames allHosts;

  alertmanagerHostNames = hostNames (flip filterAttrs allHosts (_: m:
    m.services.prometheus.alertmanager.enable
  ));
  prometheusHostNamesSameDC = hostNames (flip filterAttrs allHostsSameDC (_: m:
    m.services.prometheus.enable
  ));
  prometheusHostNamesOtherDC = hostNames (flip filterAttrs allHosts (n: m:
    m.services.prometheus.enable && !(elem (hostName n m) prometheusHostNamesSameDC)
  ));
  grafanaHostNames = hostNames (flip filterAttrs allHostsSameDC (_: m:
    m.services.grafana.enable
  ));
  unboundHostNames = hostNames (flip filterAttrs allHostsSameDC (_: m:
    m.systemd.services.prometheus-unbound-exporter.enable or false
  ));
  nginxExporterHostNames = hostNames (flip filterAttrs allHostsSameDC (_: m:
    m.services.prometheus.exporters.nginx.enable
  ));
  unifiExporterHostNames = hostNames (flip filterAttrs allHostsSameDC (_: m:
    m.services.prometheus.exporters.unifi.enable
  ));
  fritzboxExporterHostNames = hostNames (flip filterAttrs allHostsSameDC (_: m:
    m.services.prometheus.exporters.fritzbox.enable
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
  postfixExporterHostNames = hostNames (flip filterAttrs allHostsSameDC (_: m:
    m.services.prometheus.exporters.postfix.enable
  ));
  dovecotExporterHostNames = hostNames (flip filterAttrs allHostsSameDC (_: m:
    m.services.prometheus.exporters.dovecot.enable
  ));
  dockerRunnerHostNames = hostNames (flip filterAttrs allHostsSameDC (_: m:
    m.mayflower.docker-runner.enable
  ));
  rspamdHostNames = hostNames (flip filterAttrs allHostsSameDC (_: m:
    m.services.rspamd.enable
  ));
  mailExporterHostNames = hostNames (flip filterAttrs allHostsSameDC (_: m:
    m.services.prometheus.exporters.mail.enable
  ));

  extraScrapeConfigsSameDC = foldAttrs (esc: acc: acc//esc) {} (flip mapAttrsToList allHostsSameDC (
    _: m: m.mayflower.monitoring.extraScrapeConfigs
  ));

  mkScrapeConfigs = configs: flip mapAttrsToList configs (k: v: {
    job_name = k;
    scrape_interval = "30s";
    static_configs = flip map v.hostNames (name: {
      targets = [ "${name}:${toString v.port}" ];
      labels.alias = name;
    });
  } // (removeAttrs v [ "hostNames" "port" ]));

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

      extraScrapeConfigs = mkOption {
        type = types.attrsOf types.attrs;
        default = {};
        example = literalExample ''
          {
            confluence = {
              hostNames = [ "confluence.foo.bar" ];
              port = 8090;
              metrics_path = "/plugins/servlet/prometheus/metrics";
              params = {
                token = [ "verySecretAccessToken" ];
              };
            };
          }
        '';
        description = ''
          Custom scrape configs added to the prometheus instances in the same datacenter.
        '';
      };

      server = {
        enable = mkEnableOption "Mayflower-oriented monitoring server with prometheus";

        alertmanagerPageReceiver = mkOption {
          type = types.attrs;
          default = {};
          description = "Receiver settings for alerts with severity page";
        };

        alertmanagerReceiver = mkOption {
          type = types.attrs;
          default = {};
          description = "Receiver settings for all alerts";
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
      services.prometheus.exporters.nginx.enable = config.services.nginx.enable;
      services.prometheus.exporters.nginx.openFirewall = config.services.nginx.enable;
      services.prometheus.exporters.postfix = {
        enable = config.services.postfix.enable;
        showqPath = "/var/lib/postfix/queue/public/showq";
        systemd.enable = true;
      };
      services.prometheus.exporters.dovecot = {
        enable = config.services.dovecot2.enable;
        group = "dovecot2";
        socketPath = "/var/run/dovecot2/old-stats";
        scopes = [ "user" "global" ];
      };
      services.prometheus.exporters.rspamd = {
        enable = config.services.rspamd.enable;
      };
      services.prometheus.exporters.node = {
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
          "textfile.directory /run/prometheus-node-exporter"
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
        prometheus = {
          enable = true;
          alertmanagerURL = flip map alertmanagerHostNames (n: "${n}:9093");
          rules = import ./alert-rules.nix { inherit lib; };
          scrapeConfigs = (mkScrapeConfigs ({
            prometheus = {
              hostNames = prometheusHostNamesSameDC;
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
              port = 9176;
            };
            unifi = {
              hostNames = unifiExporterHostNames;
              port = 9130;
            };
            postfix = {
              hostNames = postfixExporterHostNames;
              port = 9154;
            };
            dovecot = {
              hostNames = dovecotExporterHostNames;
              port = 9166;
            };
            docker-runner = {
              hostNames = dockerRunnerHostNames;
              port = 9055;
            };
            grafana = {
              hostNames = grafanaHostNames;
              port = 3000;
            };
            rspamd = {
              hostNames = rspamdHostNames;
              port = 7980;
            };
            mail = {
              hostNames = mailExporterHostNames;
              port = 9225;
            };
          } // extraScrapeConfigsSameDC)) ++
          (flatten (flip map cfg.server.blackboxExporterHosts (hostname:
            (flip map [ "icmp_v4" "icmp_v6" ] (module: (mkBlackboxConfig
              {
                inherit hostname module;
                targets = (hostNames allHostsSameDC)
                          ++ cfg.blackboxExporter.staticBlackboxIcmpTargets
                          ++ prometheusHostNamesOtherDC;
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
              })
             (mkBlackboxConfig
              {
                inherit hostname;
                module = "http_2xx";
                targets = cfg.blackboxExporter.staticBlackboxHttpTargets
                          ++ (map (h: h + ":9090") prometheusHostNamesOtherDC);
                interval = "50s";
              }
            )]
          )));
        };

        prometheus.alertmanager = {
          enable = true;
          clusterPeers = alertmanagerHostNames;
          configuration = {
            route = {
              receiver = "default";
              routes = [
                { group_by = [ "alertname" "alias" ];
                  group_wait = "5s";
                  group_interval = "2m";
                  repeat_interval = "2h";
                  match = { severity = "page"; };
                  receiver = "page";
                }
                { group_by = [ "alertname" ];
                  group_wait = "5s";
                  group_interval = "2m";
                  repeat_interval = "2h";
                  match_re = { metric = ".+"; };
                  receiver = "page";
                }
                { group_by = [ "alertname" "alias" ];
                  group_wait = "30s";
                  group_interval = "2m";
                  repeat_interval = "6h";
                  receiver = "all";
                }
              ];
            };
            receivers = [
              ({ name = "page"; } // cfg.server.alertmanagerPageReceiver)
              ({ name = "all"; } // cfg.server.alertmanagerReceiver)
              { name = "default"; }
            ];
          };
        };
      };
    })
  ];
}
