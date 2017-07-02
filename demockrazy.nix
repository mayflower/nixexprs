{ config, pkgs, lib, ... }:

with lib;

let
  cfg = config.mayflower.demockrazy;
  pkg = pkgs.stdenv.mkDerivation rec {
    name = "demockrazy-2016-08-08";
    src = pkgs.fetchFromGitHub {
      owner = "mayflower";
      repo = "demockrazy";
      rev = "b208d101831b7621f21e437827a906cdd0491b0a";
      sha256 = "1rvsm8xkfkpjlbsmna1cyp4gzl7c30r4qd5q71msys7449hs6q0q";
    };

    installPhase = ''
      mkdir -p $out/share/demockrazy
      cp -R . $out/share/demockrazy
    '';
  };
  configModule = pkgs.python3Packages.buildPythonPackage {
    name = "demockrazy-config";
    format = "other";
    unpackPhase = ":";
    installPhase = ''
      mkdir -p $out/${pkgs.python3.sitePackages}/demockrazy_config
      cat << "EOF" > $out/${pkgs.python3.sitePackages}/demockrazy_config/__init__.py
      from demockrazy.settings import *
      ${cfg.djangoSettings}
      EOF
    '';
  };
in {
  options.mayflower.demockrazy = {
    enable = mkEnableOption "demockrazy";
    djangoSettings = mkOption {
      type = types.lines;
      default = "";
      description = ''
        Verbatim django settings.
      '';
    };
  };
  config = mkIf cfg.enable {
    systemd.services.demockrazy = let
      uwsgi = pkgs.uwsgi.override { plugins = [ "python3" ]; };
      djangoenv = uwsgi.python3.buildEnv.override {
        extraLibs = [ pkgs.python3Packages.django_1_11 configModule uwsgi ];
      };
      demockrazyUwsgi = pkgs.writeText "uwsgi.json" (builtins.toJSON {
        uwsgi = {
          plugins = [ "python3" ];
          pythonpath = "${djangoenv}/${uwsgi.python3.sitePackages}";
          uid = "demockrazy";
          socket = "/run/demockrazy/uwsgi.socket";
          chown-socket = "demockrazy:nginx";
          chmod-socket = 770;
          chdir = "${pkg}/share/demockrazy";
          wsgi-file = "demockrazy/wsgi.py";
          env = "DJANGO_SETTINGS_MODULE=demockrazy_config";
          master = true;
          processes = 4;
          stats = "/run/demockrazy/stats.socket";
          no-orphans = true;
          vacuum = true;
          logger = "syslog";
        };
      });
    in {
      description = "demockrazy";
      after = [ "network.target" ];
      wantedBy = [ "multi-user.target" ];
      environment = {
        DJANGO_SETTINGS_MODULE = "demockrazy_config";
      };
      preStart = ''
        mkdir -p /var/lib/demockrazy/static /run/demockrazy
        chown -R demockrazy:nogroup /var/lib/demockrazy /run/demockrazy
        cd ${pkg}/share/demockrazy && ${djangoenv}/bin/python3 manage.py migrate && ${djangoenv}/bin/python3 manage.py collectstatic --noinput
      '';
      serviceConfig = {
        Type = "notify";
        Restart = "on-failure";
        KillSignal = "SIGQUIT";
        StandardError = "syslog";
        NotifyAccess = "all";
        ExecStart = "${uwsgi}/bin/uwsgi --json ${demockrazyUwsgi}";
        PrivateDevices = "yes";
        PrivateTmp = "yes";
        ProtectSystem = "full";
        ReadWriteDirectories = "/run/demockrazy /var/lib/demockrazy";
        ProtectHome = "yes";
        NoNewPrivileges = "yes";
      };
    };

    users.extraUsers.demockrazy = {};
  };
}
