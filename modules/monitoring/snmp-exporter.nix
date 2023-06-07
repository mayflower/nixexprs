{ config, options, lib, pkgs, ... }:
let
  cfg = config.mayflower.monitoring.snmpExporter;
  inherit (lib) mkEnableOption mkOption types;

  moduleType = types.submodule {
    freeformType = (pkgs.formats.json {}).type;
    options = {
      targets = mkOption {
        type = types.listOf types.str;
        description = lib.mdDoc "List of targets that should be scraped with this module.";
      };
      walk = mkOption {
        type = types.listOf types.str;
        description = lib.mdDoc "List of OIDs to walk through in this module.";
      };
    };
  };
in {
  options.mayflower.monitoring.snmpExporter = {
    enable = mkEnableOption (lib.mdDoc "Mayflower SNMP exporter");
    extraMIBs = mkOption {
      type = types.listOf types.path;
      description = lib.mdDoc "List of directories to be added to the MIB search path.";
    };
    modules = mkOption {
      type = types.attrsOf moduleType;
      default = {};
      description = lib.mdDoc "SNMP exporter modules to define and use.";
    };
  };
  config = lib.mkIf cfg.enable {
    services.prometheus.exporters.snmp = {
      enable = true;
      configurationPath = pkgs.prometheus-snmp-exporter-generator {
        inherit (cfg) extraMIBs;
        config.modules = lib.mapAttrs (_: lib.flip builtins.removeAttrs ["targets" "interval"]) cfg.modules;
      };
    };
  };
}
