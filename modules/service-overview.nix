{ pkgs, lib, config, ... }:

with lib;

let
  cfg = config.mayflower.serviceOverview;
  services = fold mergeAttrs {} (mapAttrsToList (n: c: let
    result = builtins.tryEval c.mayflower.serviceOverview.services;
  in if result.success then result else throw "serviceOverview.services missing for host ${n}"
  ) config.mayflower.machines);
in
{
  options = {
    mayflower.serviceOverview = {
      enable = mkOption {
        type = types.bool;
        default = false;
        description = ''
          Generate the service overview and serve it on this host.
        '';
      };
      host = mkOption {
        type = types.str;
        example = "services.example.com";
        description = ''
          Name of the nginx vhost.
        '';
      };
      services = mkOption {
        type = types.attrsOf (types.submodule {
          options = {
            address = mkOption {
              type = types.str;
              example = "https://example.service";
              description = ''
                Address of the provided service.
              '';
            };
            description = mkOption {
              type = types.str;
              example = "Very helpful service";
              description = ''
                A short description of the provided service.
              '';
            };
            status = mkOption {
              type = types.enum [
                "alpha" "beta" "production" "deprecated" "obsolete"
              ];
              description = ''
                Specify the support status for the provided service.
              '';
            };
          };
        });
        description = "Set of services provided by this host.";
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
