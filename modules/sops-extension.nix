{ config, lib, pkgs, inputs, ... }:

let
  globalCfg = config;

  inherit (globalCfg.sops) secretsBaseDir;

  inherit (lib) types mdDoc;
  inherit (lib.modules) mkIf mkMerge;
  inherit (lib.options) mkDefault mkOption;

  associatedServiceSubModule = types.submodule (
    { config, ... }:
    let
      subCfg = config;
    in
    {
      options = {
        associatedService = mkOption {
          type = types.nullOr types.str;
          default = null;
          example = "grafana";
          description = mdDoc ''
            Specify the name of the systemd unit from which to inherit User and Group
            for file permission.
          '';
        };
        relKeyPath = mkOption {
          type = types.nullOr types.str;
          default = null;
          description = mdDoc ''
            Path to the directory containg the secret file, relative to "secrets/"
            in the deployment directory.
            By default a secret with name "example" for host "server" will
            be expected to be in "secrets/server/secrets.sops.yaml".
            If the secret is needed for a declarative container named "cont" on the
            same host, the expected path would be "secrets/server/cont/secrets.sops.yaml"
          '';
        };
      };
      config = mkMerge [
        { mode = lib.mkDefault "0440"; }
        (mkIf (subCfg.associatedService != null) {
          owner = globalCfg.systemd.services.${subCfg.associatedService}.serviceConfig.User;
          group = globalCfg.systemd.services.${subCfg.associatedService}.serviceConfig.Group;
        })
        (mkIf (subCfg.relKeyPath != null) {
          sopsFile = "${secretsBaseDir}/${subCfg.relKeyPath}/secrets.sops.yaml";
        })
      ];
    }
  );
in

{
  options.sops = {
    secrets = mkOption {
      type = types.attrsOf associatedServiceSubModule;
    };
    secretsBaseDir = mkOption {
      type = types.path;
      description = mdDoc ''
        Path to the secrets directory containing one subdirectory for each host.
      '';
    };
    defaultRelKeyPath = mkOption {
      default = config.networking.hostName;
      defaultText = "config.networking.hostName";
      type = types.str;
      description = mdDoc ''
        `relKeyPath`, but for all secrets.
      '';
    };
  };

  config.sops = {
    defaultSopsFile = lib.mkDefault (
      "${secretsBaseDir}/${config.sops.defaultRelKeyPath}/secrets.sops.yaml"
    );
    age.sshKeyPaths = [ "/etc/ssh/ssh_host_ed25519_key" ];
  };
}
