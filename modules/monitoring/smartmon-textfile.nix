{ config, lib, pkgs, ... }:

let
  prometheus-community-scripts = pkgs.stdenv.mkDerivation {
    pname = "prometheus-community-scripts";
    version = "2025-09-28";
    src = pkgs.fetchFromGitHub {
      owner  = "prometheus-community";
      repo   = "node-exporter-textfile-collector-scripts";
      rev    = "7ef6216b1acced3e1bd6bca9165586981deeaaff";
      sha256 = "sha256-UcmQSJf20HHJa87RJ+Kc4OVK88VgjYAFKftV37wu5oQ=";
    };
    patches = [ ./smartmon-textfile-3ware.patch ];
    installPhase = ''
      mkdir $out
      cp smartmon.py $out/smartmon.py
    '';
  };

  smartmon-script = "${prometheus-community-scripts}/smartmon.py";
  metrics-file = "/run/prometheus-node-exporter/prometheus_smartmon.prom";
  prometheus-group = config.systemd.services.prometheus-node-exporter.serviceConfig.Group;
  python = (pkgs.python3.withPackages(ps: [ps.prometheus_client])).interpreter;
in
{
  config = lib.mkIf (!config.boot.isContainer && !config.mayflower.kvm.enable) {
    systemd = {
      timers = {
        prometheus-smartmon-textfile = {
          enable = true;
          after = [ "prometheus-node-exporter.service" ];
          bindsTo = [ "prometheus-node-exporter.service" ];
          wantedBy = [ "timers.target" ];
          timerConfig = {
            OnStartupSec = "60s";
            OnUnitActiveSec = "15m";
            Unit = "prometheus-smartmon-textfile.service";
          };
        };
      };
      tmpfiles.rules = [
        "f ${metrics-file} 0640 root ${prometheus-group}"
      ];
      services = {
        prometheus-smartmon-textfile =  {
          enable = true;
          after = [ "prometheus-node-exporter.service" ];
          bindsTo = [ "prometheus-node-exporter.service" ];
          path = [ pkgs.smartmontools ];
          script = ''
            ${python} ${smartmon-script} | ${pkgs.moreutils}/bin/sponge ${metrics-file}
          '';
          serviceConfig = {
            Type = "oneshot";
          };
        };
      };
    };
  };
}
