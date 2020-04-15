{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.services.mailman;
  python = pkgs.python3;
  mailmanEnv = python.withPackages (ps: [ pkgs.mailman3 ps.mailman-hyperkitty ]);
  postfixConfigFile = pkgs.writeText "mailman-postfix.cfg" ''
    [postfix]
    postmap_command: ${pkgs.postfix}/bin/postmap
    transport_file_type: hash
    smtp_port: 8025
  '';
  hyperkittyConfigFile = pkgs.writeText "mailman-hyperkitty.cfg" ''
    [general]
    base_url: ${cfg.baseURLScheme}://${cfg.baseURL}/hyperkitty
    api_key: ${cfg.hyperkittyApiKey}
  '';
  configFile = pkgs.writeText "mailman.cfg" ''
  '';
  uwsgi = pkgs.uwsgi.override { plugins = [ "python3" ]; };
  configModule = python.pkgs.buildPythonPackage {
    name = "mailman-web-config";
    format = "other";
    unpackPhase = ":";
    installPhase = ''
      mkdir -p $out/${python.sitePackages}/mailman_web_config
      cat << "EOF" > $out/${python.sitePackages}/mailman_web_config/__init__.py
      from example_project.settings import *
      POSTORIUS_TEMPLATE_BASE_URL = '${cfg.restApiURL}'

      INSTALLED_APPS = ('paintstore',)

      SOCIALACCOUNT_PROVIDERS = {}

      REST_FRAMEWORK = {
          'PAGE_SIZE': 10,
          'DEFAULT_FILTER_BACKENDS': (
              'rest_framework.filters.OrderingFilter',
          ),
      }

      # TODO: disable file/email logging handlers?
      EOF
    '';
  };
  mailmanWebEnv = uwsgi.python3.withPackages (ps: [ configModule pkgs.postorius pkgs.hyperkitty ]);
  mailmanWebPythonPath = "${mailmanWebEnv}/${mailmanWebEnv.python.sitePackages}:${pkgs.postorius}/share/postorius";
  mailmanWebAdminWrapper = pkgs.stdenv.mkDerivation rec {
    name = "mailman-web-admin";
    buildInputs = [ pkgs.makeWrapper ];
    unpackPhase = ":";
    installPhase = ''
      mkdir -p $out/bin
      makeWrapper ${pkgs.sudo}/bin/sudo $out/bin/mailman-web-admin \
          --set DJANGO_SETTINGS_MODULE mailman_web_config \
          --add-flags "-E -u mailman PYTHONPATH="${mailmanWebPythonPath}" \
            ${pkgs.postorius}/share/postorius/example_project/manage.py"
     '';
  };
  mailmanUwsgi = pkgs.writeText "uwsgi.json" (builtins.toJSON {
    uwsgi = {
      plugins = [ "python3" ];
      uid = "mailman";
      socket = "/run/mailman/web.socket";
      chown-socket = "mailman:nginx";
      chmod-socket = 770;
      chdir = "${pkgs.postorius}/share/postorius";
      wsgi-file = "example_project/wsgi.py";
      master = true;
      processes = 4;
      # stats = "/run/mailman/web-stats.socket";
      no-orphans = true;
      vacuum = true;
      logger = "syslog";
    };
  });
in {
  options = {
    services.mailman = {
      enable = mkEnableOption "Whether to run the mailman3 daemon.";

      hyperkittyApiKey = mkOption {
        type = types.str;
        description = "API key to use for the communication between mailman and hyperkitty.";
      };

      webSecretKey = mkOption {
        type = types.str;
        description = "Secret key for postorius and hyperkitty.";
      };

      siteOwner = mkOption {
        type = types.str;
        example = "root@example.com";
        description = ''
          This address is the "site owner" address. Certain messages which must be
          delivered to a human, but which can't be delivered to a list owner (e.g. a
          bounce from a list owner), will be sent to this address. It should point to
          a human.
        '';
      };

      fromEmail = mkOption {
        type = types.str;
        example = "mailman@example.com";
        description = "Default e-mail address to send from.";
      };

      baseURL = mkOption {
        type = types.str;
        example = "lists.example.com";
        description = ''
          Base URL for the webservice to run on. This module also creates
          an nginx virtual host on this domain with preconfigured locations
          and forceSSL and enableACME defaulting to true. If you want to disable
          this in case you have a reverse proxy terminating SSL connections,
          you can set <literal>services.nginx.virtualHosts."''${baseURL}".enableACME</literal>
          and <literal>services.nginx.virtualHosts."''${baseURL}".forceSSL</literal> to
          <literal>false</literal>.
        '';
      };

      baseURLScheme = mkOption {
        type = types.str;
        default = "https";
        description = ''
          URL scheme for the baseURL, normally "https", but you might want to override
          this if you have a special configuration terminating your SSL connections on
          another host.
        '';
      };

      restApiURL = mkOption {
        type = types.str;
        default = "http://localhost:8001";
        description = ''
          URL of the mailman REST API.
        '';
      };

      restApiUser = mkOption {
        type = types.str;
        default = "admin";
        description = ''
          Username of the mailman REST API.
        '';
      };

      restApiPassword = mkOption {
        type = types.str;
        description = ''
          Password of the mailman REST API.
        '';
      };

      allowedHosts = mkOption {
        type = types.listOf types.str;
        default = [];
        example = [ "lists.example.com" ];
        description = ''
          Hosts to allow requests from apart from localhost.
        '';
      };

      dataDir = mkOption {
        type = types.str;
        default = "/var/lib/mailman";
        description = "Data directory for mailman, hyperkitty and postorius.";
      };

      externalAuthProviders = mkOption {
        type = types.bool;
        default = false;
        description = ''
          Enable a range of django-allauth providers.
        '';
      };
    };
  };

  config = mkIf cfg.enable {
    users.extraUsers.mailman = {
      group = "mailman";
    };

    users.extraGroups.mailman = { };

    environment.systemPackages = [ mailmanWebAdminWrapper ];

    services.postgresql.enable = mkDefault true;

    systemd.tmpfiles.rules = [
      "d ${cfg.dataDir} 0775 mailman mailman -"
      "d ${cfg.dataDir}/web 0775 mailman mailman -"
      "d /run/mailman 0775 mailman mailman -"
    ];

    systemd.services.mailman = {
      preStart = let
        pgSuperUser = config.services.postgresql.superUser;
      in ''
        if ! test -e "${cfg.dataDir}/db-created"; then
            ${pkgs.sudo}/bin/sudo -u ${pgSuperUser} ${pkgs.postgresql}/bin/createuser --no-superuser --no-createdb --no-createrole mailman
            ${pkgs.sudo}/bin/sudo -u ${pgSuperUser} ${pkgs.postgresql}/bin/createdb --owner mailman mailman
            touch "${cfg.dataDir}/db-created"
        fi
      '';
    };

    systemd.sockets.mailman-web = {
      wantedBy = [ "sockets.target" ];
      listenStreams = [ "/run/mailman/web.socket" ];
    };
    systemd.services.mailman-web = {
      description = "Web UI and archiver for GNU Mailman";
      after = [ "network.target" ];
      requires = [ "mailman-web.socket" ];
      path = [ pkgs.sassc ];
      environment = {
        DJANGO_SETTINGS_MODULE = "mailman_web_config";
        PYTHONPATH = mailmanWebPythonPath;
      };
      preStart = ''
        cd ${pkgs.postorius}/share/postorius/example_project
        ${pkgs.sudo}/bin/sudo -u mailman -E PYTHONPATH=${mailmanWebPythonPath} ${mailmanWebEnv}/bin/python manage.py migrate
        ${pkgs.sudo}/bin/sudo -u mailman -E PYTHONPATH=${mailmanWebPythonPath} ${mailmanWebEnv}/bin/python manage.py compress
        ${pkgs.sudo}/bin/sudo -u mailman -E PYTHONPATH=${mailmanWebPythonPath} ${mailmanWebEnv}/bin/python manage.py collectstatic --noinput
      '';
      serviceConfig = {
        Type = "notify";
        Restart = "on-failure";
        KillSignal = "SIGQUIT";
        StandardError = "syslog";
        NotifyAccess = "all";
        ExecStart = "${uwsgi}/bin/uwsgi --json ${mailmanUwsgi}";
      };
    };
    systemd.services.mailman-hyperkitty-qcluster = {
      description = "HyperKitty async tasks runner";
      after = [ "network.target" ];
      wantedBy = [ "multi-user.target" ];
      environment = {
        DJANGO_SETTINGS_MODULE = "mailman_web_config";
        PYTHONPATH = mailmanWebPythonPath;
      };
      serviceConfig = {
        ExecStart = "${mailmanWebEnv}/bin/django-admin qcluster --pythonpath ${pkgs.postorius}/share/postorius/example_project";
        User = "mailman";
        Restart = "always";
      };
    };
    services.postfix = {
      enable = mkDefault true;
      recipientDelimiter = mkDefault "+";
      config = {
        unknown_local_recipient_reject_code = mkDefault "550";
        transport_maps = [ "hash:/var/lib/mailman/data/postfix_lmtp" ];
        local_recipient_maps = [ "hash:/var/lib/mailman/data/postfix_lmtp" ];
        relay_domains = [ "hash:/var/lib/mailman/data/postfix_domains" ];
      };
      masterConfig = (mapAttrs' (version: name:
        nameValuePair "mailman-submission${version}" {
          inherit name;
          private = false;
          type = "inet";
          command = "smtpd";
          args = [
            "-o" "syslog_name=postfix/smtp-mailman"
            "-o" "cleanup_service_name=auth-cleanup"
            "-o" "smtpd_client_restrictions=permit_mynetworks,reject"
            "-o" "smtpd_milters="
          ];
        }
      ) {
        "-v4" = "127.0.0.1:8025";
        "-v6" = "::1:8025";
      });
    };
    services.nginx = {
      enable = mkDefault true;
      virtualHosts.${cfg.baseURL} = {
        enableACME = mkDefault true;
        forceSSL = mkDefault true;
        locations = {
          "/".extraConfig = ''
            uwsgi_pass unix:/run/mailman/web.socket;
          '';
          "/static".root = "/var/lib/mailman/web";
        };
        extraConfig = ''
          add_header X-Content-Type-Options "nosniff" always;
        '';
      };
    };
  };
}
