{ config, pkgs, lib, ... }:

with lib;

let
  cfg = config.mayflower.demockrazy;
  pkg = pkgs.stdenv.mkDerivation rec {
    pname = "demockrazy";
    version = "2024-02-08";
    src = pkgs.fetchFromGitHub {
      owner = "mayflower";
      repo = "demockrazy";
      rev = "3074dbb79c882ec999028dd2ef1b447cd0638ddc";
      sha256 = "sha256-4MJkKwFGhOGMJ1jphtgM1H94oOdZo3ta0ucCZe/cOUs=";
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
      STATIC_ROOT = '/var/lib/demockrazy/static'
      DEBUG = False
      DATABASES = {
          'default': {
              'ENGINE': 'django.db.backends.sqlite3',
              'NAME': '/var/lib/demockrazy/db.sqlite3'
          }
      }

      LOGGING = {
          'version': 1,
          'disable_existing_loggers': False,
          'handlers': {
              'console': {
                  'class': 'logging.StreamHandler',
              },
          },
          'loggers': {
              'django': {
                  'handlers': ['console'],
                  'level': '${cfg.logLevel}',
              },
          },
      }

      with open('${cfg.secretKeyFile}') as secret_file:
        SECRET_KEY = secret_file.read().strip()

      ${optionalString (cfg.mail.passwordFile != null) ''
        with open('${cfg.mail.passwordFile}') as pw_file:
          EMAIL_HOST_PASSWORD = pw_file.read().strip()
      ''}

      ${optionalString (cfg.mail.host != null) "EMAIL_HOST = \"${cfg.mail.host}\""}
      EMAIL_PORT = ${toString cfg.mail.port}
      EMAIL_USE_TLS = ${if cfg.mail.useTLS then "True" else "False"}
      EMAIL_USE_SSL = ${if cfg.mail.useSSL then "True" else "False"}
      ${optionalString (cfg.mail.user != null) "EMAIL_HOST_USER = \"${cfg.mail.user}\""}
      VOTE_MAIL_FROM = "${cfg.mail.from}"
      VOTE_SEND_MAILS = ${if cfg.mail.sendMails then "True" else "False"}
      VOTE_BASE_URL = '${cfg.baseUrl}'
      ALLOWED_HOSTS = [ ${concatStringsSep ", " (map (h: "\"${h}\"") cfg.allowedHosts)} ]
      CSRF_COOKIE_SECURE = ${if cfg.secureCookies then "True" else "False"}
      SESSION_COOKIE_SECURE = ${if cfg.secureCookies then "True" else "False"}

      ${cfg.djangoSettings}
      EOF
    '';
  };
in {
  options.mayflower.demockrazy = {
    enable = mkEnableOption (mdDoc "demockrazy");
    djangoSettings = mkOption {
      type = types.lines;
      default = "";
      description = mdDoc ''
        Verbatim django settings.
      '';
    };
    logLevel = mkOption {
      type = types.str;
      default = "INFO";
      description = mdDoc ''
        Django log level
      '';
    };
    secretKeyFile = mkOption {
      type = types.path;
      description = mdDoc ''
        File containing the Django secret key
      '';
    };
    baseUrl = mkOption {
      type = types.str;
      example = "https://demockrazy.example.com";
      description = mdDoc ''
        Base URL of demockrazy
      '';
    };
    allowedHosts = mkOption {
      type = types.listOf types.str;
      example = literalExample ''[ "demockrazy.example.com" ]'';
      description = mdDoc ''
        Hostnames/IPs allowed to access demockrazy
      '';
    };
    secureCookies = mkOption {
      type = types.bool;
      default = true;
      description = mdDoc ''
        Allows cookies to be only served via HTTPS
      '';
    };
    mail = mkOption {
      type = types.submodule {
        options = {
          sendMails = mkOption {
            type = types.bool;
            default = true;
            description = mdDoc ''
              Wheter to enable demockrazy sending mails.
            '';
          };
          from = mkOption {
            type = types.str;
            example = "demockrazy@example.com";
            description = mdDoc ''
              Address to send mails from.
            '';
          };
          host = mkOption {
            type = types.nullOr types.str;
            default = null;
            description = mdDoc ''
              Mail relay host name
            '';
          };
          user = mkOption {
            type = types.nullOr types.str;
            default = null;
            description = mdDoc ''
              Mail relay user name
            '';
          };
          passwordFile = mkOption {
            type = types.nullOr types.str;
            default = null;
            description = mdDoc ''
              Path to the file containing the mail relay user password
            '';
          };
          port = mkOption {
            type = types.nullOr types.int;
            default = 25;
            description = mdDoc ''
              Mail relay port
            '';
          };
          useTLS = mkOption {
            type = types.bool;
            default = true;
            description = mdDoc ''
              Whether to use STARTTLS when connecting to the mail relay host.
            '';
          };
          useSSL = mkOption {
            type = types.bool;
            default = false;
            description = mdDoc ''
              Whether to use SSL when connecting to the mail relay host.
            '';
          };
        };
      };
      default = {};
      description = mdDoc ''
        Options for mail handling of demockrazy
      '';
    };
  };
  config = mkIf cfg.enable {
    systemd.services.demockrazy = let
      uwsgi = pkgs.uwsgi.override { plugins = [ "python3" ]; };
      djangoenv = uwsgi.python3.buildEnv.override {
        extraLibs = [ pkgs.python3Packages.django configModule uwsgi ];
      };
      demockrazyUwsgi = pkgs.writeText "uwsgi.json" (builtins.toJSON {
        uwsgi = {
          plugins = [ "python3" ];
          pythonpath = "${djangoenv}/${uwsgi.python3.sitePackages}";
          uid = "demockrazy";
          gid = "demockrazy";
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
        ReadWritePaths = "/run/demockrazy /var/lib/demockrazy";
        ProtectHome = "yes";
        NoNewPrivileges = "yes";
      };
    };
    systemd.tmpfiles.rules = [
      "d /var/lib/demockrazy 0755 demockrazy demockrazy -"
      "d /var/lib/demockrazy/static 0755 demockrazy demockrazy -"
      "d /run/demockrazy 0755 demockrazy demockrazy -"
    ];

    users.users.demockrazy = {
      group = "demockrazy";
      isSystemUser = true;
    };
    users.groups.demockrazy = {};
  };
}
