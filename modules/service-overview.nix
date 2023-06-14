{ pkgs, lib, config, ... }:

with lib;

let
  cfg = config.mayflower.serviceOverview;
  services = fold mergeAttrs {} (mapAttrsToList (_: c:
    c.mayflower.serviceOverview.services
  ) config.mayflower.machines);
in
{
  options = {
    mayflower.serviceOverview = {
      enable = mkOption {
        type = types.bool;
        default = false;
        description = mdDoc ''
          Generate the service overview and serve it on this host.
        '';
      };
      host = mkOption {
        type = types.str;
        example = "services.example.com";
        description = mdDoc ''
          Name of the nginx vhost.
        '';
      };
      services = mkOption {
        type = types.attrsOf (types.submodule {
          options = {
            address = mkOption {
              type = types.str;
              example = "https://example.service";
              description = mdDoc ''
                Address of the provided service.
              '';
            };
            description = mkOption {
              type = types.str;
              example = "Very helpful service";
              description = mdDoc ''
                A short description of the provided service.
              '';
            };
            status = mkOption {
              type = types.enum [
                "alpha" "beta" "production" "deprecated" "obsolete"
              ];
              description = mdDoc ''
                Specify the support status for the provided service.
              '';
            };
          };
        });
        description = mdDoc "Set of services provided by this host.";
        example = literalExample ''{
          exampleService = {
            address = "https://example.service";
            description = "Very helpful service";
            status = "beta";
          };
        }'';
      };
    };
  };

  config = mkIf cfg.enable {
    services.nginx.enable = mkDefault true;
    services.nginx.virtualHosts."${cfg.host}" = {
      locations."/" = {
        index = "index.html";
        root = pkgs.serviceOverview.override { inherit services; };
      };
    };
  };
}
