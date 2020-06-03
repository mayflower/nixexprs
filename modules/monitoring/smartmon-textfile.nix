{ config, lib, pkgs, ... }:

let
  prometheus-community-scripts = pkgs.fetchFromGitHub rec {
    owner  = "prometheus-community";
    repo   = "node-exporter-textfile-collector-scripts";
    rev    = "48aaf1cba1309214d30a23a9f4c01816f20ff955";
    sha256 = "19cfxw0l9ykskwgghi3nf51q2s99d9kicl5xsj8357zv79j6r33x";
  };

  smartmon-script = "${prometheus-community-scripts}/smartmon.py";
  metrics-file = "/run/prometheus-node-exporter/prometheus_smartmon.prom";
  prometheus-group = config.systemd.services.prometheus-node-exporter.serviceConfig.Group;
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
            ${pkgs.python3}/bin/python ${smartmon-script} | ${pkgs.moreutils}/bin/sponge ${metrics-file}
          '';
          serviceConfig = {
            Type = "oneshot";
          };
        };
      };
    };
  };
}
