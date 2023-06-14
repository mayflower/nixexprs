{ lib, pkgs, config, ... }:

with lib;

let

  cfg = config.mayflower.docker-runner;

in

{
  options = {
    mayflower.docker-runner = {
      enable = mkEnableOption (mdDoc "docker runner");

      name = mkOption {
        type = types.str;
        description = mdDoc "Name of the runner";
      };

      token = mkOption {
        type = types.str;
        description = mdDoc "Token of the runner";
      };

      concurrent = mkOption {
        type = types.int;
        description = mdDoc "Number of parallel jobs to run";
      };

      url = mkOption {
        type = types.str;
        default = "https://git.mayflower.de/";
        description = mdDoc "URL to Gitlab instance";
      };
    };
  };

  config = mkIf cfg.enable {
    services.gitlab-runner = {
      enable = true;
      configOptions = {
        concurrent = cfg.concurrent;
        check_interval = 5;
        log_level = "info";
        metrics_server = "[::]:9055";
        runners = [
          {
            inherit (cfg) name url token;
            executor = "docker";
            docker = {
              image = "ubuntu:17.10";
            };
          }
        ];
      };
      package = pkgs.gitlab-runner;
    };

    networking.dhcpcd.denyInterfaces = [ "veth*" "docker*" ];
    networking.firewall.allowedTCPPorts = [ 9055 ];

    virtualisation.docker = {
      enable = true;
      package = pkgs.docker-edge;
      autoPrune = {
        enable = true;
        dates = "daily";
      };
    };
  };
}
