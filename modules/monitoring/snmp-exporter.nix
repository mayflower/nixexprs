{ config, options, lib, pkgs, ... }:
let
  cfg = config.mayflower.monitoring.snmpExporter;
  inherit (lib) mkEnableOption mkOption types;

  freeformType = (pkgs.formats.json {}).type;

  moduleType = types.submodule {
    options = {
      targets = mkOption {
        type = types.listOf types.str;
        description = lib.mdDoc "List of targets that should be scraped with this module.";
      };
      walk = mkOption {
        type = types.listOf types.str;
        description = lib.mdDoc "List of OIDs to walk through in this module.";
      };
      timeout = mkOption {
        type = types.str;
        default = "5s";
        description = lib.mdDoc "Timeout for each individual SNMP request, defaults to 5s.";
      };
      max_repetitions = mkOption {
        type = types.int;
        default = 25;
        description = lib.mdDoc ''
          How many objects to request with GET/GETBULK, defaults to 25.
          May need to be reduced for buggy devices.
          See https://github.com/prometheus/snmp_exporter/blob/v0.24.1/generator/README.md#file-format
        '';
      };
      lookups = mkOption {
        type = freeformType;
        description = lib.mdDoc ''
          Optional list of lookups to perform.
          See https://github.com/prometheus/snmp_exporter/blob/v0.24.1/generator/README.md#file-format
        '';
      };
      overrides = mkOption {
        type = freeformType;
        description = lib.mdDoc ''
          Allows for per-module overrides of bits of MIBs
          See https://github.com/prometheus/snmp_exporter/blob/v0.24.1/generator/README.md#file-format
        '';
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
    auths = mkOption {
      type = freeformType;
      default = {};
      description = lib.mdDoc "Auth configuration, see https://github.com/prometheus/snmp_exporter/blob/v0.24.1/generator/README.md#file-format";
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
        config.auths = cfg.auths;
        config.modules = lib.mapAttrs (_: lib.flip builtins.removeAttrs ["targets" "interval"]) cfg.modules;
      };
    };
  };
}
