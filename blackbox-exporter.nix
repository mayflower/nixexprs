{ config, lib }: with lib;
let
  cfg = config.mayflower.monitoring.blackboxExporter;
in {
  options = {
    enable = mkEnableOption "Mayflower Monitoring Blackbox Exporter";
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
  config = mkIf cfg.enable {
    systemd.services.prometheus-blackbox-exporter.serviceConfig.LimitNOFILE = 1024000;
    services.prometheus.blackboxExporter = {
      enable = true;
      configFile = pkgs.writeText "blackbox-exporter.yaml" (builtins toJSON {
        modules = {
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
          tcp_v6 = {
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
          icmp_v6 = {
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
