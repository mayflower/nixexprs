{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.mayflower.monitoring;
in {
  options = {
    # extends base nginx.virtualHosts
    nginx.virtualHosts = mkOption {
      type = types.submodule {
        options = {
          expectedStatusCode = mkOption {
            type = types.int;
            description = ''
              HTTP Status Code expected at / on the virtual Host.
            '';
          };
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
            blackboxSource = mkOption {
              type = types.str;
              default = "prometheus-server";
              description = "";
            };
            staticBlackboxHttpsTargets = mkOption {
              type = types.listOf types.str;
              default = [];
              description = "";
            };
            staticBlackboxIcmpTargets = mkOption {
              type = types.listOf types.str;
              default = [];
              description = "";
            };
            staticBlackboxTcpTargets = mkOption {
              type = types.listOf types.str;
              default = [];
              description = "";
            };
            blackboxCheckIP6 = mkOption {
              type = types.bool;
              default = true;
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
        ] ++ lib.optionals (!config.boot.isContainer) [
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
      systemd.services.prometheus-blackbox-exporter.serviceConfig.LimitNOFILE = 1024000;
      systemd.services.alertmanager.serviceConfig.LimitNOFILE = 1024000;

      services = {
        prometheus = {
          enable = true;
          alertmanagerURL = [ "http://localhost:9093" ];
          rules = mapAttrsToList (name: opts: ''
            ALERT ${name}
            IF ${opts.condition}
            FOR ${opts.time or "2m"}
            LABELS {
              ${optionalString (opts.page or true) ''severity="page"''}
            }
            ANNOTATIONS {
              summary = "${opts.summary}",
              description = "${opts.description}"
            }
          '') {
            node_down = {
              condition = ''up{job="node"} == 0'';
              summary = "{{$labels.alias}}: Node is down.";
              description = "{{$labels.alias}} has been down for more than 2 minutes.";
            };
            node_systemd_service_failed = {
              condition = ''node_systemd_unit_state{state="failed"} == 1'';
              summary = "{{$labels.alias}}: Service {{$labels.name}} failed to start.";
              description = "{{$labels.alias}} failed to (re)start service {{$labels.name}}.";
            };
            node_filesystem_full_90percent = {
              condition = ''sort(node_filesystem_free{device!="ramfs",device!="rpc_pipefs"} < node_filesystem_size{device!="ramfs"} * 0.1) / 1024^3'';
              time = "1m";
              summary = "{{$labels.alias}}: Filesystem is running out of space soon.";
              description = "{{$labels.alias}} device {{$labels.device}} on {{$labels.mountpoint}} got less than 10% space left on its filesystem.";
            };
            node_filesystem_full_in_4h = {
              condition = ''predict_linear(node_filesystem_free{device!="ramfs",device!="rpc_pipefs" }[1h], 4*3600) <= 0'';
              time = "30m";
              summary = "{{$labels.alias}}: Filesystem is running out of space in 4 hours.";
              description = "{{$labels.alias}} device {{$labels.device}} on {{$labels.mountpoint}} is running out of space of in approx. 4 hours";
            };
            node_filedescriptors_full_in_3h = {
              condition = ''predict_linear(node_filefd_allocated[1h], 3*3600) >= node_filefd_maximum'';
              time = "20m";
              summary = "{{$labels.alias}} is running out of available file descriptors in 3 hours.";
              description = "{{$labels.alias}} is running out of available file descriptors in approx. 3 hours";
            };
            node_load15 = {
              condition = ''node_load15 / on(alias) count(node_cpu{mode="system"}) by (alias) >= 1.0'';
              time = "5m";
              summary = "{{$labels.alias}}: Running on high load.";
              description = "{{$labels.alias}} is running with load15 > 1 for at least 5 minutes.";
            };
            node_ram_using_90percent = {
              condition =  "node_memory_MemFree + node_memory_Buffers + node_memory_Cached < node_memory_MemTotal * 0.1";
              time = "1h";
              summary = "{{$labels.alias}}: Using lots of RAM.";
              description = "{{$labels.alias}} is using at least 90% of its RAM for at least 1 hour.";
            };
            node_swap_using_30percent = {
              condition = "node_memory_SwapTotal - (node_memory_SwapFree + node_memory_SwapCached) > node_memory_SwapTotal * 0.3";
              time = "30m";
              summary = "{{$labels.alias}}: Using more than 30% of its swap.";
              description = "{{$labels.alias}} is using 30% of its swap space for at least 30 minutes.";
            };
            node_zfs_errors = {
              condition = "node_zfs_arc_l2_writes_error + node_zfs_arc_l2_io_error + node_zfs_arc_l2_writes_error > 0";
              summary = "{{$labels.alias}}: ZFS IO errors";
              description = "{{$labels.alias}} reports ZFS IO errors. Drive(s) are failing.";
            };
            node_hwmon_temp = {
              condition = "node_hwmon_temp_crit_celsius*0.9 - node_hwmon_temp_celsius < 0 OR node_hwmon_temp_max_celsius*0.95 - node_hwmon_temp_celsius < 0";
              time = "5m";
              summary = "{{$labels.alias}}: Sensor {{$labels.sensor}}/{{$labels.chip}} temp is high";
              description = "{{$labels.alias}} reports hwmon sensor {{$labels.sensor}}/{{$labels.chip}} temperature value is nearly critical.";
            };
            node_conntrack_limit = {
              condition  = "node_nf_conntrack_entries_limit - node_nf_conntrack_entries < 1000";
              time = "5m";
              summary = "{{$labels.alias}}: Number of tracked connections high";
              description = "{{$labels.alias}} has only few free slots for connection tracking available.";
            };
            node_reboot = {
              condition = "time() - node_boot_time < 300";
              summary = "{{$labels.alias}}: Reboot";
              description = "{{$labels.alias}} just rebooted.";
            };
            node_uptime = {
              condition = "time() - node_boot_time > 2592000";
              summary = "{{$labels.alias}}: Uptime monster";
              description = "{{$labels.alias}} has been up for more than 30 days.";
            };
            blackbox_down = {
              condition = ''min(up{job=~"blackbox.+"}) by (source, job, instance) == 0'';
              time = "1m";
              summary = "{{$labels.instance}}: {{$labels.job}} blackbox exporter from {{$labels.source}} is down.";
              description = "{{$labels.instance}}: {{$labels.job}} blackbox exporter from {{$labels.source}} is down.";
            };
            blackbox_probe = {
              condition = "probe_success == 0";
              page = false;
              summary = "{{$labels.instance}}: {{$labels.job}} probe from {{$labels.source}} has failed!";
              description = "{{$labels.instance}}: {{$labels.job}} probe from {{$labels.source}} has failed!";
            };
            blackbox_probe_high_latency = {
              condition = "probe_duration_seconds > 5";
              summary = "{{$labels.instance}}: {{$labels.job}} probe from {{$labels.source}} takes too long!";
              description = "{{$labels.instance}}: {{$labels.job}} probe from {{$labels.source}} is encountering high latency!";
            };
            blackbox_probe_cert_expiry = {
              condition = "probe_ssl_earliest_cert_expiry < 7*24*3600";
              summary = "{{$labels.instance}}: TLS certificate from {{$labels.source}} is about to expire.";
              description = "{{$labels.instance}}: The TLS certificate from {{$labels.source}} will expire in less than 7 days: {{$value}}s";
            };
            openvpn_down = {
              condition = ''up{job="openvpn"} == 0'';
              summary = "{{$labels.alias}}: OpenVPN exporter is down.";
              description = "OpenVPN exporter on {{$labels.alias}} hasn't been responding more than 2 minutes.";
            };
            openvpn_instance_down = {
              condition = "openvpn_up == 0";
              summary = "{{$labels.alias}}: OpenVPN instance {{$labels.status_path}} is down.";
              description = "OpenVPN instance {{$labels.status_path}} on {{$labels.alias}} has been down more than 2 minutes.";
            };
            openvpn_instance_noupdate = {
              condition = "time() - openvpn_status_update_time_seconds > 120";
              time = "1m";
              summary = "{{$labels.alias}}: OpenVPN instance {{$labels.status_path}} is not updating its status.";
              description = "OpenVPN instance {{$labels.status_path}} on {{$labels.alias}} has not updated its status more than 2 minutes.";
            };
            unifi_devices_adopted_changed = {
              condition = "abs(delta(unifi_devices_adopted[5m])) > 1";
              summary = "Unifi: number of adopted devices has changed";
              description = "Unifi: number of adopted devices has changed";
            };
          };
          scrapeConfigs = let
            allHosts = (flip mapAttrsToList config.mayflower.machines (_: machine:
              machine.deployment.targetHost
            ) ++ flatten (flip mapAttrsToList config.mayflower.machines (_: machine:
              flip mapAttrsToList machine.containers (name: container:
                "${name}.${machine.mayflower.monitoring.containerDomains.${container.hostBridge}}"
              )
            )));
          in [
            {
              job_name = "blackbox_https";
              scrape_interval = "60s";
              metrics_path = "/probe";
              params = {
                module = [ "https_2xx" ];
              };
              static_configs = [
                {
                  targets = filter (n: n != "_" && n != "localhost")
                              (flatten (flip mapAttrsToList config.mayflower.machines (_: m:
                                attrNames m.services.nginx.virtualHosts))) ++ cfg.server.staticBlackboxHttpsTargets;
                  labels = { source = cfg.server.blackboxSource; };
                }
              ];
              relabel_configs = [
                { source_labels = [ "__address__" ];
                  regex = "(.*)(:80)?";
                  target_label = "__param_target";
                  replacement = ''''${1}'';
                }
                { source_labels = [ "__param_target" ];
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
            }
            {
              job_name = "node";
              scrape_interval = "30s";
              static_configs = flip map allHosts (name: {
                targets = [ "${name}:9100" ];
                labels.alias = name;
              });
            }
            {
              job_name = "nginx";
              scrape_interval = "30s";
              static_configs = map (name: {
                targets = [ "${name}:9113" ];
                labels.alias = name;
              }) (mapAttrsToList (n: machine:
                machine.deployment.targetHost
              ) (flip filterAttrs config.mayflower.machines (_: m: m.services.prometheus.nginxExporter.enable)));
            }
            {
              job_name = "fritz";
              scrape_interval = "30s";
              static_configs = map (name: {
                targets = [ "${name}:9133" ];
                labels.alias = "fritz.${name}";
              }) (mapAttrsToList (n: machine:
                machine.deployment.targetHost
              ) (flip filterAttrs config.mayflower.machines (_: m: m.services.prometheus.fritzboxExporter.enable)));
            }
            {
              job_name = "openvpn";
              scrape_interval = "60s";
              static_configs = map (name: {
                targets = [ "${name}:9167" ];
                labels.alias = name;
              }) (mapAttrsToList (n: machine:
                machine.deployment.targetHost
              ) (flip filterAttrs config.mayflower.machines (_: m: m.services.prometheus.openvpnExporter.enable)));
            }
            {
              job_name = "unifi";
              scrape_interval = "30s";
              static_configs = map (name: {
                targets = [ "${name}:9130" ];
                labels.alias = name;
              }) (mapAttrsToList (n: machine:
                machine.deployment.targetHost
              ) (flip filterAttrs config.mayflower.machines (_: m: m.services.prometheus.unifiExporter.enable)));
            }
          ] ++ (flip map (
            [ "icmp_v4" "tcp_v4" ] ++ optionals cfg.server.blackboxCheckIP6 [ "icmp_v6" "tcp_v6" ]
          ) (name: let
            suffix = optionalString (elem name [ "tcp_v4" "tcp_v6" ]) ":22";
          in {
            job_name = "blackbox_${name}";
            scrape_interval = "60s";
            metrics_path = "/probe";
            params = {
              module = [ name ];
            };
            static_configs = [
              {
                targets = (flip map allHosts (h: h + suffix)) ++
                  (optionals (elem name [ "tcp_v4" "tcp_v6" ]) cfg.server.staticBlackboxTcpTargets) ++
                  (optionals (elem name [ "icmp_v4" "icmp_v6" ]) cfg.server.staticBlackboxIcmpTargets);
                labels = { source = cfg.server.blackboxSource; };
              }
            ];
            relabel_configs = [
              { source_labels = [ "__address__" ];
                regex = "(.*)(:80)?";
                target_label = "__param_target";
                replacement = ''''${1}'';
              }
              { source_labels = [ "__param_target" ];
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
          }));
          alertmanager = {
            enable = true;
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

          blackboxExporter = {
            enable = true;
            configFile = pkgs.writeText "blackbox-exporter.yaml" ''
              modules:
                https_2xx:
                  prober: http
                  timeout: 5s
                  http:
                    fail_if_not_ssl: true
                tcp_v4:
                  prober: tcp
                  timeout: 5s
                  tcp:
                    preferred_ip_protocol: ip4
                tcp_v6:
                  prober: tcp
                  timeout: 5s
                  tcp:
                    preferred_ip_protocol: ip6
                icmp_v4:
                  prober: icmp
                  timeout: 5s
                  icmp:
                    preferred_ip_protocol: ip4
                icmp_v6:
                  prober: icmp
                  timeout: 5s
                  icmp:
                    preferred_ip_protocol: ip6
            '';
          };
        };
      };
    })
  ];
}
