{ config, options, lib, pkgs, ... }:
let
  cfg = config.mayflower.monitoring.snmpExporter;
  inherit (lib) mkEnableOption mkOption types;

  moduleType = types.submodule {
    freeformType = (pkgs.formats.json {}).type;
    options = {
      targets = mkOption {
        type = types.listOf types.str;
        description = "List of targets that should be scraped with this module.";
      };
      walk = mkOption {
        type = types.listOf types.str;
        description = "List of OIDs to walk through in this module.";
      };
    };
  };
in {
  options.mayflower.monitoring.snmpExporter = {
    enable = mkEnableOption "Mayflower SNMP exporter";
    modules = mkOption {
      type = types.attrsOf moduleType;
      description = "SNMP exporter modules to define and use.";
    };
  };
  config = lib.mkIf cfg.enable {
    services.prometheus.exporters.snmp = {
      enable = true;
      configurationPath = pkgs.prometheus-snmp-exporter-generator {
        modules = lib.mapAttrs (_: lib.flip builtins.removeAttrs ["targets"]) cfg.modules;
      };
    };
  };
}
