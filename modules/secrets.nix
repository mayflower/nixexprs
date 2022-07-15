{ options, config, lib, ... }:

let
  cfg = config.mayflower.secrets;

  inherit (lib)
    concatStrings
    const
    flatten
    flip
    forEach
    mapAttrs
    mapAttrs'
    mkMerge
    mkOption
    nameValuePair
    types;

  commonSecretOptions = {
    user = mkOption {
      type = types.str;
      default = "root";
    };
    group = mkOption {
      type = types.str;
      default = "root";
    };
    permissions = mkOption {
      type = types.str;
      default = "0440";
    };
    destDir = mkOption {
      type = types.path;
      default = "/var/secrets";
      description = ''
        Destination directory for the secrets (equivalent to the Nixops option).
        Host secrets will be placed under the specified directory with their name,
        container secrets have the respective container name as a prefix.
      '';
    };
    relKeyPath = mkOption {
      type = types.str;
      defaultText = "config.networking.hostName";
      default = config.networking.hostName;
      description = ''
        Path to the directory containg the secret file, relative to "secrets/"
        in the deployment directory.
        By default a secret with name "example" for host "server" will
        be expected to be in "secrets/server/example".
        For if the secret is needed for a declarative container named "cont" on the
        same host, the expected path would be "secrets/server/cont/example"
      '';
    };
    associatedService = mkOption {
      type = types.nullOr types.str;
      default = null;
      example = "grafana";
      description = ''
        Specify the name of the systemd unit from which to inherit User and Group
        for file permission.
      '';
    };
    path = mkOption {
      type = types.path;
      description = ''
        The path in which the secret ends up.
      '';
      readOnly = true;
    };
  };

  /*
   * Given mayflower.secrets.containerSecrets, generate the containers' bind mount sets.
   *
   * Example:
   * genBindMounts { container-a = { service-token = {}; secret2 = {}; }; container-b = {}; }
   * ⇒
   * {
   *   container-a.bindMounts = {
   *     service-token = {
   *       hostPath   = "/var/secrets/container-a-service-token";
   *       mountPoint = "/var/secrets/service-token";
   *     };
   *     secret2 = {
   *       hostPath = "/var/secrets/container-a-secret2";
   *       mountPoint = "/var/secrets/secret2";
   *     };
   *   };
   *   container-b.bindMounts = {};
   * }
   */
  genBindMounts = mapAttrs (containerName: secretConfigs: {
    bindMounts = flip mapAttrs' secretConfigs (secretName: secretConf: {
      name = "${containerName}-${secretName}";
      value = {
        hostPath = "/var/secrets/${containerName}-${secretName}";
        mountPoint = "/var/secrets/${secretName}";
      };
    });
    config = {
      mayflower.secrets.hostSecrets = flip mapAttrs secretConfigs (const (const {}));
    };
  });

  /*
   * Generate deployment.keys, given mayflower.secrets.hostSecrets.
   */
  genHostKeysConfig = mapAttrs (secretName: secretConfig: let
    associatedService = config.systemd.services.${secretConfig.associatedService};
    useAssociatedService = secretConfig.associatedService != null && !(associatedService.serviceConfig.DynamicUser or false);
  in {
    inherit (secretConfig) permissions destDir;
    keyFile = cfg.basePath + concatStrings [
      "/" secretConfig.relKeyPath "/" secretName
    ];
    user = if useAssociatedService then associatedService.serviceConfig.User else secretConfig.user;
    group = if useAssociatedService then associatedService.serviceConfig.Group else secretConfig.group;
  });

  /*
   * Generate deployment.keys, given mayflower.secrets.containerSecrets.
   * Resulting in config like:
   *
   *   deployment.keys = {
   *     container-a-service-token = {
   *       destDir = "/var/secrets";
   *       permissions = "0440";
   *       keyFile = ../secrets/server-a/container-a/service-token;
   *     };
   *   };
   *
   */
  genContainerKeysConfig = containerConfigs: builtins.listToAttrs (flatten (
    forEach (builtins.attrNames containerConfigs) (containerName:
      forEach (builtins.attrNames containerConfigs.${containerName}) (secretName:
        let
          secretConfig = containerConfigs.${containerName}.${secretName};
          associatedService = config.containers.${containerName}.config.systemd.services.${secretConfig.associatedService};
          useAssociatedService = secretConfig.associatedService != null && !(associatedService.serviceConfig.DynamicUser or false);
        in
        nameValuePair
          (containerName + "-" + secretName)
          {
            inherit (secretConfig) permissions destDir;
            keyFile = cfg.basePath + (concatStrings [
              "/" secretConfig.relKeyPath "/" containerName "/" secretName
            ]);
            user = if useAssociatedService then associatedService.serviceConfig.User else secretConfig.user;
            group = if useAssociatedService then associatedService.serviceConfig.Group else secretConfig.group;
          }
      ))
    )
  );
in
{
  options = {
    mayflower.secrets = {
      basePath = mkOption {
        type = types.path;
      };
      hostSecrets = mkOption {
        type = types.attrsOf (types.submodule ({name, config, ...}: {
          options = commonSecretOptions;
          config.path = "${config.destDir}/${name}";
        }));
        default = {};
        example = {
          "example-secret" = {};
        };
      };
      containerSecrets = mkOption {
        type = types.attrsOf (types.attrsOf (types.submodule ({name, config, ...}: {
          options = commonSecretOptions;
          config.path = "${config.destDir}/${name}";
        })));
        default = {};
        example = {
          example-container-a = {
            "service-token" = {};
          };
          example-container-b = {
            "service-token" = {};
          };
        };
      };
    };
  };

  # Only generate the config if we're in a nixops deployment, since
  # the merging logic is unhappy about the undefined `deployment`
  # option in a mkIf _even if the condition is false_.
  config = if (options ? deployment) then ({
    deployment.keys = mkMerge [
      (genHostKeysConfig cfg.hostSecrets)
      (genContainerKeysConfig cfg.containerSecrets)
    ];
    containers = genBindMounts cfg.containerSecrets;
  }) else {};
}
