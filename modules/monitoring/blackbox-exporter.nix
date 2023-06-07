{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.mayflower.monitoring.blackboxExporter;
in {
  options = {
    mayflower.monitoring.blackboxExporter = {
      enable = mkEnableOption (mdDoc "Mayflower Monitoring Blackbox Exporter");
      staticBlackboxHttpTargets = mkOption {
        type = types.listOf types.str;
        default = [];
        description = mdDoc "";
      };
      staticBlackboxHttpsTargets = mkOption {
        type = types.listOf types.str;
        default = [];
        description = mdDoc "";
      };
      staticBlackboxIcmpTargets = mkOption {
        type = types.listOf types.str;
        default = [];
        description = mdDoc "";
      };
      staticBlackboxTcpTargets = mkOption {
        type = types.listOf types.str;
        default = [];
        description = mdDoc "";
      };
      checkIP6 = mkOption {
        type = types.bool;
        default = true;
        description = mdDoc "";
      };
    };
  };
  config = mkIf cfg.enable {
    systemd.services.prometheus-blackbox-exporter.serviceConfig.LimitNOFILE = 1024000;
    services.prometheus.exporters.blackbox = {
      enable = true;
      configFile = let
        if6 = name: if cfg.checkIP6 then name else null;
      in pkgs.writeText "blackbox-exporter.yaml" (builtins.toJSON {
        modules = {
          http_2xx = {
            prober = "http";
            timeout = "5s";
          };
          https_2xx = {
            prober = "http";
            timeout = "5s";
            http = {
              fail_if_not_ssl = true;
            };
          };
          tcp_v4 = {
            prober = "tcp";
            timeout = "5s";
            tcp = {
              preferred_ip_protocol = "ip4";
            };
          };
          ${if6 "tcp_v6"} = {
            prober = "tcp";
            timeout = "5s";
            tcp = {
              preferred_ip_protocol = "ip6";
            };
          };
          icmp_v4 = {
            prober = "icmp";
            timeout = "5s";
            icmp = {
              preferred_ip_protocol = "ip4";
            };
          };
          ${if6 "icmp_v6"} = {
            prober = "icmp";
            timeout = "5s";
            icmp = {
              preferred_ip_protocol = "ip6";
            };
          };
        };
      });
    };
  };
}
