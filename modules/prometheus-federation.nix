{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.mayflower.prometheusFederation;

  inherit (cfg) baseIP;

  mainPeerConfigs = mapAttrsToList (_: c: c) (filterAttrs (_: conf:
    conf.mayflower.prometheusFederation.enable == true
    && conf.mayflower.prometheusFederation.id == "main"
  ) config.mayflower.machines);

  # only one 'main' prometheus may be configured
  mainPeer = assert (length mainPeerConfigs == 1); let
    conf = (head mainPeerConfigs).mayflower.prometheusFederation;
  in {
    inherit (conf) publicKey;
    allowedIPs = [ baseIP ];
    endpoint = conf.listenAddress + ":" + (toString conf.listenPort);
  };

  nonMainPeers = filterAttrs (_: conf:
    conf.mayflower.prometheusFederation.enable == true
    && conf.mayflower.prometheusFederation.id != "main")
  config.mayflower.machines;

  # this assumes only one prometheus instance per datacenter
  nonMainPeerRecords = mapAttrs' (_: conf:
    nameValuePair
      "prometheus-${conf.mayflower.monitoring.datacenter}"
      (baseIP + (toString conf.mayflower.prometheusFederation.id))
  ) nonMainPeers;
in
{
  options.mayflower.prometheusFederation = {
    enable = mkEnableOption "mayflower prometheus federation module";

    id = mkOption {
      type = with types; either (addCheck int (n: n>0)) (enum [ "main" ]);
      description = ''
        Unique ID of the prometheus instance.
      '';
    };
    publicKey = mkOption {
      type = types.str;
    };
    privateKeyFile = mkOption {
      type = types.path;
      default = "/var/lib/${config.services.prometheus.stateDir}/wg_priv";
    };
    presharedKeyFile = mkOption {
      type = types.path;
      default = "/var/lib/${config.services.prometheus.stateDir}/wg_psk";
    };
    listenAddress = mkOption {
      type = types.str;
    };
    listenPort = mkOption {
      type = types.int;
    };
    baseIP = mkOption {
      type = types.str;
      example = "fc23:beef:cafe:face::";
    };
  };

  config = mkIf cfg.enable (mkMerge [
    /* main peer config */
    (mkIf (cfg.id == "main") {
      networking.wireguard.interfaces.wg-prom = {
        inherit (cfg) privateKeyFile listenPort;
        ips = [ baseIP ];
        allowedIPsAsRoutes = true;
        peers = mapAttrsToList (n: v: {
          allowedIPs = [ (baseIP + (toString v.mayflower.prometheusFederation.id)) ];
          inherit (v.mayflower.prometheusFederation) publicKey;
          presharedKeyFile = "/var/lib/${config.services.prometheus.stateDir}/wg_psk_peer_${
            toString v.mayflower.prometheusFederation.id}";
        }) nonMainPeers;
      };
      services.prometheus.scrapeConfigs = singleton {
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
          targets = (mapAttrsToList (hostName: _:
            hostName + ":9090"
          ) nonMainPeerRecords);
        };
      };
      services.prometheus.alertmanagers = singleton {
        static_configs = singleton {
          targets = map (hostName:
           "${hostName}:9093"
          ) (attrNames nonMainPeerRecords);
        };
      };
      networking.extraHosts = concatStringsSep "\n" (mapAttrsToList (hostName: ip:
        "${ip} ${hostName}"
      ) nonMainPeerRecords);
      services.prometheus.alertmanager.clusterPeers = attrNames nonMainPeerRecords;
    })

    /* non-main peer config */
    (mkIf (!(cfg.id == "main")) {
      networking.wireguard.interfaces.wg-prom = {
        ips = singleton (baseIP + (toString cfg.id));
        inherit (cfg) privateKeyFile;
        peers = singleton (recursiveUpdate mainPeer {
          inherit (cfg) presharedKeyFile;
          persistentKeepalive = 20;
        });
      };
      mayflower.monitoring.server.alertmanagerExtraPeers = singleton "[${baseIP}]";
      networking.extraHosts = "${baseIP} prometheus-main";
    })
  ]);
}
