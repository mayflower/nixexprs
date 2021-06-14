{ config, pkgs, lib, ... }:
with lib;
let
  cfg = config.mayflower.monitoring.server;
  alertRuleModule = types.submodule {
    options = {
      enable = mkEnableOption "this alerting rule" // { default = true; };
      page = mkEnableOption "paging for this alert" // { default = true; };
      condition = mkOption {
        type = types.str;
        description = "Alert condition";
      };
      summary = mkOption {
        type = types.str;
        description = "Short summary description of the alert";
      };
      description = mkOption {
        type = types.nullOr types.str;
        description = "Longer description of the alert";
        default = null;
      };
      time = mkOption {
        type = types.str;
        description = "Duration for which the condition must hold for the alert to fire";
        default = "2m";
      };
    };
  };

  enabledRules = mapAttrs (n: v: removeAttrs v ["enable"]) (filterAttrs (n: v: v.enable) cfg.alertRules);
in {
  options.mayflower.monitoring.server = {
    alertRules = mkOption {
      type = types.attrsOf alertRuleModule;
    };
    # A bit hacky, but better than not making it configurable at all I guess.
    filesystemFilter = mkOption {
      type = types.str;
      default = ''fstype!="ramfs",device!="rpc_pipefs",device!="lxcfs",device!="nsfs",device!="borgfs"'';
    };
  };
  config = {
    mayflower.monitoring.server.alertRules = import ./alert-rules.nix { inherit (cfg) filesystemFilter; };
    services.prometheus.ruleFiles = singleton (pkgs.writeText "prometheus-rules.yml" (builtins.toJSON {
      groups = singleton {
        name = "mf-alerting-rules";
        rules = flip mapAttrsToList enabledRules (name: opts: {
          alert = name;
          expr = opts.condition;
          for = opts.time;
          labels = optionalAttrs opts.page { severity = "page"; };
          annotations = {
            inherit (opts) summary;
          } // optionalAttrs (opts.description != null) { inherit (opts) description; };
        });
      };
    }));
  };
}
