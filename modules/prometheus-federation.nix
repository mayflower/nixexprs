{ config, lib, pkgs, ... }:

let
  cfg = config.mayflower.prometheusFederation;

  inherit (lib.lists)
    forEach
    singleton;

  inherit (lib.modules)
    mkIf
    mkMerge;

  inherit (lib.options)
    mkEnableOption
    mkOption;

  inherit (lib.strings)
    optionalString;

  inherit (lib)
    types mdDoc;

  inherit (config.mayflower.wireguard.lib.star)
    extractConfigForNetwork
    extractRegularHostConfigsForNetwork;

  getScrapeTargets = forEach (extractRegularHostConfigsForNetwork cfg.networkName) (
    hostConfig: let
      networkConfig = extractConfigForNetwork hostConfig cfg.networkName;
    in
    networkConfig.wireguard.inTunnelHostname
  );

  prometheusServiceConfig = scrapeTargets: {
    scrapeConfigs = singleton {
      job_name = "federate";
      scrape_interval = "120s";
      honor_labels = true;
      metrics_path = "/federate";
      params = {
        "match[]" = [
          "{__name__!~\"go.*\",job!=\"\"}"
        ];
      };
      static_configs = singleton {
        targets = forEach scrapeTargets (hostName: hostName + ":9090");
      };
    };
    alertmanagers = singleton {
      static_configs = singleton {
        targets = forEach scrapeTargets (hostName: hostName + ":9093");
      };
    };
    alertmanager.clusterPeers = scrapeTargets;
  };
in
{
  options.mayflower.prometheusFederation = {
    enable = mkEnableOption (mdDoc "the mayflower prometheus federation module");

    networkName = mkOption {
      type = types.str;
      default = "prom";
    };

    isServer = mkEnableOption (mdDoc "config for the central prometheus instance");
  };

  config = mkIf cfg.enable {

    mayflower.wireguard = {
      enable = true;
      star.${cfg.networkName} = mkMerge [
        {
          inherit (cfg) isServer;
          enable = true;
          centralPeerHostname = "prometheus-main";
        }
        (mkIf (!cfg.isServer) {
          wireguard.inTunnelHostname =
            "${config.networking.hostName}-${config.mayflower.monitoring.datacenter}";
        })
      ];
    };

    networking.firewall =  {
      extraCommands = ''
        ip46tables -A nixos-fw -i wg-${cfg.networkName} -p tcp --dport 9093 -m comment --comment "alertmanager mayflower.prometheus-federation" -j ACCEPT
        ip46tables -A nixos-fw -i wg-${cfg.networkName} -p tcp --dport 9094 -m comment --comment "alertmanager-mesh mayflower.prometheus-federation" -j ACCEPT
      '' + optionalString (!cfg.isServer) ''
        ip46tables -A nixos-fw -i wg-${cfg.networkName} -p tcp --dport 9090 -m comment --comment "prometheus mayflower.prometheus-federation" -j ACCEPT
      '';
    };

    services = mkMerge [
      (mkIf cfg.isServer {
        prometheus = prometheusServiceConfig getScrapeTargets;
      })
      (mkIf (!cfg.isServer) {
        prometheus.alertmanagers = singleton {
          static_configs = singleton {
            targets = [
              "${config.mayflower.wireguard.star.${cfg.networkName}.centralPeerHostname}:9093"
            ];
          };
        };
      })
    ];

    sops.secrets = {
      "wireguard-${cfg.networkName}-privatekey" = {};
    };

    mayflower.monitoring.server = mkIf (!cfg.isServer) {
      alertmanagerExtraPeers = [
        config.mayflower.wireguard.star.${cfg.networkName}.centralPeerHostname
      ];
    };

  };
}
