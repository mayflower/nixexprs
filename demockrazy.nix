{ config, pkgs, lib, ... }:

with lib;

let
  cfg = config.mayflower.demockrazy;
  pkg = pkgs.stdenv.mkDerivation rec {
    name = "demockrazy-2016-08-08";
    src = pkgs.fetchFromGitHub {
      owner = "mayflower";
      repo = "demockrazy";
      rev = "c8bc08ecabaf2521cf50e7f86b4bf67b28ef4c47";
      sha256 = "06b6xn5wc3mxs2ics32npdj2sw4axis46bqa6czrxynnbwzryv8x";
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
      touch $out/${pkgs.python3.sitePackages}/demockrazy_config/__init__.py
      cat << "EOF" > $out/${pkgs.python3.sitePackages}/demockrazy_config/settings.py
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
      djangoenv = pkgs.python3.buildEnv.override {
        extraLibs = [ pkgs.python3Packages.django_1_11 configModule ];
      };
    in {
      description = "demockrazy";
      after = [ "network.target" ];
      wantedBy = [ "multi-user.target" ];
      environment = {
        DJANGO_SETTINGS_MODULE = "demockrazy_config.settings";
      };
      preStart = ''
        mkdir -p /var/lib/demockrazy/static
        chown -R demockrazy:nogroup /var/lib/demockrazy
        cd ${pkg}/share/demockrazy && ${djangoenv}/bin/python3 manage.py migrate && ${djangoenv}/bin/python3 manage.py collectstatic --noinput
      '';
      serviceConfig = {
        Type = "simple";
        Restart = "on-failure";
        WorkingDirectory = "${pkg}/share/demockrazy";
        User = "demockrazy";
        PermissionsStartOnly = true;
        # XXX don't use the django server
        ExecStart = "${djangoenv}/bin/python3 manage.py runserver 0.0.0.0:8000";
      };
    };

    users.extraUsers.demockrazy = {};
  };
}
