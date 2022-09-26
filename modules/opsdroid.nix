{ config, pkgs, lib, ... }:

with lib;

let
  cfg = config.services.opsdroid;
  env = pkgs.opsdroid.python.withPackages (ps:
    let skills = cfg.skills ps; in
    [ pkgs.opsdroid ] ++ skills ++ flatten (map (skill: (skill.extraDeps or (_: [])) ps) skills)
  );
  configFile = format.generate "opsdroid-config.yaml" cfg.settings;
  format = pkgs.formats.json { };
in {
  options.services.opsdroid = {
    enable = mkEnableOption "opsdroid chatbot";

    settings = mkOption {
      type = types.submodule {
        freeformType = format.type;
        options = {
          web.host = mkOption {
            type = types.str;
            default = "::1";
            description = ''
              Host opsdroid should listen to.
            '';
          };
          web.port = mkOption {
            type = types.port;
            default = 8080;
            description = ''
              Port opsdroid should listen to.
            '';
          };
        };
      };
      description = "configuration.yaml as json";
      example = literalExample
        ''
          {
            connectors.matrix = {
              mxid = "@opsdroid:matrix.example.org";
              password = "$password"; # to be substituted via `environmentFile`
              homeserver = "https://matrix.example.org";
              nick = "dr01d";
              rooms.main = "#notifications:matrix.example.org";
            };
            databases.sqlite.path = "/var/lib/opsdroid/opsdroid.db";
            skills.atlassian.module = "atlassian"; # see example of `skills`
          }
        '';
    };

    skills = mkOption {
      default = (ps: []);
      type = types.functionTo (types.listOf types.package);
      description = ''
        Python packages to be used for opsdroid.
      '';
      example = literalExample
        ''
          [
            (ps.buildPythonPackage {
              name = "opsdroid-atlassian";
              src = pkgs.fetchFromGitHub {
                owner = "mayflower";
                repo = "err-atlassian";
                rev = "94877938a0ed21fc4d851a9dd38ce6e48f757ab2";
                sha256 = "16vmxjvq8x4141abwr8lx69hhgh5hkvxx6sqcwhp866r5h8argkz";
              };
              format = "other";
              passthru.extraDeps = (ps: with ps; [ markdown jira tlslite-ng oauth2 ]);
              installPhase = '''
                install -vD *.py -t $out/''${ps.python.sitePackages}/atlassian
              ''';
            })
          ]
        '';
    };

    environmentFile = mkOption {
      type = types.nullOr types.path;
      default = null;
      description = ''
        File containing secrets to be substitued via <package>envsubst</package>.
      '';
    };
  };

  config = lib.mkIf cfg.enable {
    systemd.services.opsdroid = {
      wantedBy = ["multi-user.target"];
      environment.HOME = "/var/lib/opsdroid";
      script = ''
        ${pkgs.envsubst}/bin/envsubst -o /run/opsdroid/configuration.yaml -i ${configFile}
        exec ${env}/bin/opsdroid start -f /run/opsdroid/configuration.yaml
      '';
      serviceConfig = {
        DynamicUser = true;
        EnvironmentFile = mkIf (cfg.environmentFile != null) cfg.environmentFile;
        Restart = "always";
        RuntimeDirectory = "opsdroid";
        RuntimeDirectoryMode = "0750";
        StateDirectory = "opsdroid";
      };
    };
  };
}
