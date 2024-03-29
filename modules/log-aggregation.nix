{ config, lib, pkgs, ... }:

let
  cfg = config.mayflower.log-aggregation;

  inherit (lib.attrsets)
    recursiveUpdate;

  inherit (lib.options)
    mkEnableOption
    mkOption;

  inherit (lib.modules)
    mkDefault
    mkIf
    mkMerge;

  inherit (lib.lists)
    optionals;

  inherit (lib)
    types
    mdDoc;

  lokiServiceConfig = {
    enable = true;
    configuration = {
      server.http_listen_port = 3100;
      common = {
        path_prefix = "/var/lib/loki";
        replication_factor = 1;
        ring.kvstore.store = "inmemory";
      };
      ruler.storage.s3.bucketnames = "loki-ruler";
      query_scheduler.max_outstanding_requests_per_tenant = 8192;
      limits_config = {
        retention_period = "90d";
        max_query_length = "90d";
        max_query_series = 5000;
        split_queries_by_interval = "2h";
      };
    };
    extraFlags = [
      "-log-config-reverse-order"
      "-config.expand-env=true"
    ];
  };

  promtailServiceConfig = {
    enable = true;
    configuration = {
      server = {
        http_listen_port = 9080; # default port 80 used on many hosts
        grpc_listen_port = 0; # default port 9095 used by loki (0 means random)
      };
      clients = let
        lokiHostname = config.mayflower.wireguard.star.${cfg.networkName}.centralPeerHostname;
      in [
        { url = "http://${lokiHostname}:3100/loki/api/v1/push"; tenant_id = "mfadm"; }
      ];
      scrape_configs = [
        {
          job_name = "journal";
          journal = {
            max_age = "12h";
            labels = recursiveUpdate {
              job = "systemd-journal";
            } cfg.extraStaticJobLabels;
          };
          relabel_configs = [
            {
              source_labels = ["__journal__systemd_unit"];
              target_label = "unit";
            }
            {
              source_labels = ["__journal__hostname"];
              target_label = "hostname";
            }
            {
              source_labels = ["__journal_syslog_identifier"];
              target_label = "syslog_identifier";
            }
            { # A priority value between 0 ("emerg") and 7 ("debug") formatted as a decimal string.
              # This field is compatible with syslog's priority concept.
              source_labels = ["__journal_priority"];
              target_label = "priority";
            }
            { # How the entry was received by the journal service. Valid transports are:
              #  audit, driver, syslog, journal, stdout, kernel
              source_labels = ["__journal__transport"];
              target_label = "transport";
            }
          ];
        }
      ];
    };
  };
in
{
  options.mayflower.log-aggregation = {
    enable = mkOption {
      type = types.bool;
      default = true;
    };

    networkName = mkOption {
      type = types.str;
      default = "log";
    };

    isServer = mkEnableOption (mdDoc "config for the central loki instance");

    extraStaticJobLabels = mkOption {
      type = types.attrsOf types.str;
      example = {
        datacenter = "dc1";
      };
      description = mdDoc ''
        Additional static labels added to the systemd-journal promtail job.
      '';
    };
  };

  # TODO assertion, only one central host
  # TODO assertion for network name (same as in mayflower.wireguard)

  config = mkIf cfg.enable ({
    mayflower.log-aggregation.extraStaticJobLabels = mkDefault {
      inherit (config.mayflower.monitoring) datacenter;
    };

    mayflower.wireguard = {
      enable = true;
      star.${cfg.networkName} = {
        inherit (cfg) isServer;
        enable = true;
      };
    };

    networking.firewall = mkIf cfg.isServer {
      extraCommands = ''
        ip46tables -A nixos-fw -i wg-${cfg.networkName} -p tcp --dport 3100 -m comment --comment "loki mayflower.log-aggregation" -j ACCEPT
      '';
    };

    environment.systemPackages = optionals cfg.isServer [
      pkgs.grafana-loki # for logcli
    ];

    services = mkMerge [
      (mkIf cfg.isServer {
        loki = lokiServiceConfig;
      })
      ({
        promtail = promtailServiceConfig;
      })
    ];

    sops.secrets = mkMerge [
      ({
        "wireguard-${cfg.networkName}-privatekey" = {};
      })
    ];
  });
}
