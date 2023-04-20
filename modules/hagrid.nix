{ config, lib, pkgs, ... }:

let
  inherit (builtins) readFile toString;
  inherit (lib) attrsets generators modules options strings types;
  inherit (attrsets) mapAttrsToList recursiveUpdate;
  inherit (generators) toINI;
  inherit (modules) mkIf mkDefault;
  inherit (options) literalExpression mdDoc mkEnableOption mkOption;
  inherit (strings) concatStrings replaceStrings;

  cfg = config.services.hagrid;
  toml = pkgs.formats.toml {};
in {
  meta.maintainers = with lib.maintainers; [ ];

  options = {

    services.hagrid = {

      enable = mkEnableOption (mdDoc ''
        hagrid (Verifying OpenPGP keyserver, written in Rust)'');

      package = mkOption {
        default = pkgs.hagrid;
        defaultText = literalExpression "pkgs.hagrid";
        type = types.package;
        description = mdDoc "Which hagrid derivation to use.";
      };

      dataDir = mkOption {
        type = types.str;
        default = "/var/lib/hagrid";
        example = "/var/db/hagrid";
        description = mdDoc ''
          Data directory for hagrid, where the keys, assets,
          templates and Rocket.toml are located.
        '';
      };

      environmentFile = mkOption {
        type = types.str;
        description = mdDoc ''
          Systemd EnvironmentFile with secrets to inject
          into the service config before startup.
        '';
      };

      hostname = mkOption {
        type = types.str;
        description = mdDoc ''
          Which hostname to set the base-URI of hagrid to.
        '';
      };

      settings = mkOption {
        type = toml.type;
        default = {};
        description = mdDoc ''
          Configuration for hagrid rocket server in toml type (attrset).
          See https://gitlab.com/keys.openpgp.org/hagrid/ for details.
        '';
      };

      webRoot = mkOption {
        type = types.str;
        default = "${cfg.dataDir}/public";
        readOnly = true;
      };

    };
  };

  config = mkIf cfg.enable {

    services.hagrid.settings = {
      global = {
        address = mkDefault "0.0.0.0";
        port = mkDefault 8080;
      };
      release = {
        assets_dir = mkDefault "${cfg.webRoot}/assets";
        base-URI = mkDefault "https://${cfg.hostname}";
        base-URI-Onion = mkDefault "https://${cfg.hostname}";
        email_template_dir = mkDefault "${cfg.dataDir}/email-templates";
        enable_prometheus = mkDefault false;
        from = mkDefault "noreply@localhost";
        keys_external_dir = mkDefault "${cfg.webRoot}/keys";
        keys_internal_dir = mkDefault "${cfg.dataDir}/keys";
        mail_rate_limit = mkDefault 3600;
        maintenance_file = mkDefault "${cfg.dataDir}/maintenance";
        template_dir = mkDefault "${cfg.dataDir}/templates";
        tmp_dir = mkDefault "${cfg.dataDir}/tmp";
        token_dir = mkDefault "${cfg.dataDir}/tokens";
        token_secret = mkDefault "$TOKEN_SECRET";
        token_validity = mkDefault 3600;
        x-accel-redirect = mkDefault true;
      };
    };

    users = {
      users.hagrid = {
        isSystemUser = true;
        description = "hagrid user";
        home = cfg.dataDir;
        createHome = true;
        group = "hagrid";
        useDefaultShell = true;
        packages = [ cfg.package ];
      };
      groups.hagrid = { };
    };

    systemd.services = let
      releaseProfile = cfg.settings.release;
      dirMap = {
        assets = releaseProfile.assets_dir;
        templates = releaseProfile.template_dir;
        email-templates = releaseProfile.email_template_dir;
        #errors-static = cfg.webRoot + "/errors-static";
      };
    in {
      hagrid = {
        description = "hagrid (Verifying OpenPGP keyserver)";
        after = [ "network.target" ];
        wantedBy = [ "multi-user.target" ];
        preStart = ''
          ${concatStrings (mapAttrsToList (name: path: ''
            mkdir -p $(dirname ${path})
            ln -nsf ${cfg.package}/dist/${name} ${path}
          '') dirMap)}

          rm -f "${cfg.dataDir}/Rocket.toml"

          ${pkgs.envsubst}/bin/envsubst \
            -o "${cfg.dataDir}/Rocket.toml" \
            -i "${toml.generate "Rocket.toml" cfg.settings}"
        '';
        serviceConfig = {
          WorkingDirectory = "~";
          User = "hagrid";
          Group = "hagrid";
          Restart = "always";
          ExecStart = "${cfg.package}/bin/hagrid";
          EnvironmentFile = cfg.environmentFile;
          PrivateTmp = true;
        };
      };
    };

    networking.firewall.allowedTCPPorts = [ cfg.settings.global.port ];

  };
}
