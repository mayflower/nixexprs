{ config, pkgs, lib, ... }:
with lib;
let
  cfg = config.mayflower.monitoring.server;
  alertRuleModule = types.submodule ({ name, config, ... }: {
    options = {
      enable = mkEnableOption "this alerting rule" // { default = true; };
      page = mkEnableOption "paging for this alert" // { default = true; };
      condition = mkOption {
        type = types.functionTo types.str;
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
      renderedCondition = mkOption {
        internal = true;
        readOnly = true;
        type = types.str;
        description = "condition, but with all exclusions added";
      };
    };
    config = {
      description = lib.mkDefault config.summary;
      renderedCondition = config.condition (renderExclusions (exclusionsByHosts.${name} or []));
    };
  });

  enabledRules = mapAttrs (n: v: removeAttrs v ["enable"]) (filterAttrs (n: v: v.enable) cfg.alertRules);

  renderExclusions = concatMapStringsSep
    ","
    (host: "instance!~'${host}(:[0-9]+)?'");

  /*
   * List of excluded rules by host names.
   * Example:
   * {
   *   "node_down"     = [ "example.org" "container.example.org" "router.lan" ];
   *   "node_deployed" = [ "example.org" ];
   * }
   */
  exclusionsByHosts = foldl
    (excludedRules: currentHost:
      let
        inherit (currentHost.mayflower.monitoring) disabledAlertRules;

        appendChanges' = exclusions: rule: hostNameOrNames: (exclusions.${rule} or []) ++ (toList hostNameOrNames);
        appendChanges = appendChanges' excludedRules;

        /*
         * Creates a list of changes to append to the exclusion list.
         *
         * Example:
         * mkDelta [ "node_down" "node_deployed" ] "example.org"
         * ⇒
         * {
         *   "node_down" = "example.org";
         *   "node_deployed" = "example.org";
         * }
         */
        mkDelta = disabledAlertRules: hostName:
          listToAttrs
            (map (rule: nameValuePair rule hostName) disabledAlertRules);

        /*
         * Attrset of excluded rules from a node inside the deployment (later added via `appendChanges`)
         * to the final result.
         *
         * Example:
         * Given a node with
         * {
         *   deployment.targetHost = "example.org";
         *   mayflower.monitoring.disabledAlertRules = [ "node_up" ];
         * }
         * ⇒
         * {
         *   "node_deployed" = "node_up";
         * }
         */
        deltaHost = mkDelta disabledAlertRules currentHost.deployment.targetHost;

        /*
         * Attrset of excluded rules for containers on a given host.
         *
         * Example:
         * Given a node with:
         * {
         *   mayflower.monitoring.containerDomains."br-lan" = "lan.example.org";
         *   containers.foo = {
         *     hostBridge = "br-lan";
         *     config = {
         *       networking.hostName = "container";
         *       mayflower.monitoring.disabledAlertRules = [ "node_up" ];
         *     };
         *   };
         * }
         * ⇒
         * {
         *   "node_up" = [ "foo.lan.example.org" ];
         * }
         */
        deltaContainers = foldl
          (exclusions: container:
            let
              inherit (container.config.mayflower.monitoring) disabledAlertRules;
              hostName = container.config.networking.hostName
                + "."
                + currentHost.mayflower.monitoring.containerDomains.${container.hostBridge};
            in exclusions // (mapAttrs (appendChanges' exclusions) (mkDelta disabledAlertRules hostName)))
          {}
          (attrValues currentHost.containers);
      in
      excludedRules
      // (mapAttrs appendChanges deltaHost)
      // (mapAttrs appendChanges deltaContainers))
    {}
    (attrValues config.mayflower.machines);
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
  options.mayflower.monitoring.disabledAlertRules = mkOption {
    type = types.listOf types.str;
    default = [];
    description = ''
      Can be set on any node in the deployment. Ensures that
      each alert rule inside this list doesn't fire for that node.
    '';
  };
  config = {
    mayflower.monitoring.server.alertRules = import ./alert-rules.nix { inherit (cfg) filesystemFilter; };
    services.prometheus.ruleFiles = singleton (pkgs.writeText "prometheus-rules.yml" (builtins.toJSON {
      groups = singleton {
        name = "mf-alerting-rules";
        rules = flip mapAttrsToList enabledRules (name: opts: {
          alert = name;
          expr = opts.renderedCondition;
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
