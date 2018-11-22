{ config, lib, pkgs, ... }:

with lib;

let
  inherit (builtins) toJSON;
  cfg = config.services.loomio;

  ruby = cfg.package.rubyEnv;

  pgSuperUser = config.services.postgresql.superUser;

  databaseYml = ''
    production:
      adapter: postgresql
      database: ${toJSON cfg.databaseName}
      host: ${toJSON cfg.databaseHost}
      password: ${toJSON cfg.databasePassword}
      username: ${toJSON cfg.databaseUsername}
      encoding: utf8
  '';

  loomioEnv = {
    HOME = "${cfg.statePath}/home";
    SCHEMA = "${cfg.statePath}/db/schema.rb";
    RAILS_ENV = "production";
    SECRET_COOKIE_TOKEN = cfg.secret;
    DEVISE_SECRET = cfg.secret; # TODO: change secret
    CANONICAL_HOST = cfg.domain;
    WELCOME_EMAIL_SENDER_NAME = "TODO";
    WELCOME_EMAIL_SENDER_EMAIL = "todo@example.com";
    DISABLED_PLUGINS = "";
    DISABLE_USAGE_REPORTING = "1";
    NEW_RELIC_AGENT_ENABLED = "false";
    REDIS_URL = cfg.redisUrl;
    SMTP_SERVER = cfg.smtp.address;
    SMTP_PORT = toString cfg.smtp.port;
    SMTP_USERNAME = cfg.smtp.username;
    SMTP_PASSWORD = cfg.smtp.password; # TODO: don't put password in nix store?
    SMTP_DOMAIN = cfg.smtp.domain;
  };

  loomio-rake = pkgs.runCommand "loomio-rake" {
      buildInputs = [ pkgs.makeWrapper ];
    } ''
      mkdir -p $out/bin
      makeWrapper ${cfg.package.rubyEnv}/bin/rake $out/bin/loomio-rake \
          ${concatStrings (mapAttrsToList (name: value: "--set ${name} '${value}' ") loomioEnv)} \
          --set PATH '${lib.makeBinPath (with pkgs; [ nodejs ])}:$PATH' \
          --set RAKEOPT '-f ${cfg.package}/share/loomio/Rakefile' \
          --run 'cd ${cfg.package}/share/loomio'
      '';

in {

  options = {
    services.loomio = {
      enable = mkEnableOption "loomio";

      package = mkOption {
        type = types.package;
        default = pkgs.loomio;
        defaultText = "pkgs.loomio";
        description = "Reference to the loomio package";
      };

      statePath = mkOption {
        type = types.str;
        default = "/var/loomio/state";
        description = "Loomio state directory, logs are stored here.";
      };

      databaseHost = mkOption {
        type = types.str;
        default = "127.0.0.1";
        description = "Loomio database hostname.";
      };

      databasePassword = mkOption {
        type = types.str;
        description = "Loomio database user password.";
      };

      databaseName = mkOption {
        type = types.str;
        default = "loomio";
        description = "Loomio database name.";
      };

      databaseUsername = mkOption {
        type = types.str;
        default = "loomio";
        description = "Loomio database user.";
      };

      user = mkOption {
        type = types.str;
        default = "loomio";
        description = "User to run loomio.";
      };

      group = mkOption {
        type = types.str;
        default = "loomio";
        description = "Group to run loomio.";
      };

      domain = mkOption {
        type = types.str;
        description = "Domain to run loomio on";
      };

      redisUrl = mkOption {
        type = types.str;
        default = "redis://localhost:6379";
        description = "URL to the redis server to use";
      };

      smtp = {
        address = mkOption {
          type = types.str;
          default = "localhost";
          description = "Address of the SMTP server for Loomio.";
        };

        port = mkOption {
          type = types.int;
          default = 465;
          description = "Port of the SMTP server for Loomio.";
        };

        username = mkOption {
          type = types.str;
          description = "SMTP username for Loomio.";
        };

        password = mkOption {
          type = types.str;
          description = "SMTP username for Loomio.";
        };

        domain = mkOption {
          type = types.str;
          default = "localhost";
          description = "HELO domain to use for Loomio's outgoing mail.";
        };

        authentication = mkOption {
          type = types.str;
          default = "plain";
          description = "Authentication type to use, see http://api.rubyonrails.org/classes/ActionMailer/Base.html";
        };
      };

      secret = mkOption {
        type = types.str;
        description = ''
          The secret is used to encrypt variables in the DB. If
          you change or lose this key you will be unable to access variables
          stored in database.

          Make sure the secret is at least 30 characters and all random,
          no regular words or you'll be exposed to dictionary attacks.
        '';
      };
    };
  };

  config = mkIf cfg.enable {

    environment.systemPackages = [ loomio-rake ];

    services.postgresql.enable = mkDefault (cfg.databaseHost == "127.0.0.1");
    services.redis.enable = lib.mkDefault (cfg.redisUrl == "redis://localhost:6379");

    # TODO unhack
    ids.uids.loomio = 9999;
    ids.gids.loomio = 9999;
    users.users = [
      { name = cfg.user;
        group = cfg.group;
        home = "${cfg.statePath}/home";
        shell = "${pkgs.bash}/bin/bash";
        uid = config.ids.uids.loomio;
      }
    ];

    users.groups = [
      { name = cfg.group;
        gid = config.ids.gids.loomio;
      }
    ];

    systemd.services.loomio = {
      after = [ "network.target" "postgresql.service" ];
      wantedBy = [ "multi-user.target" ];
      environment = loomioEnv;
      path = with pkgs; [
        config.services.postgresql.package
        nodejs
      ];
      preStart = ''
        set -x
        mkdir -p ${cfg.statePath}/tmp
        mkdir -p ${cfg.statePath}/db
        mkdir -p ${cfg.statePath}/uploads

        rm -rf ${cfg.statePath}/config ${cfg.statePath}/client-tasks-config ${cfg.statePath}/shell/hooks
        mkdir -p ${cfg.statePath}/config ${cfg.statePath}/client-tasks-config

        mkdir -p /run/loomio
        [ -d /run/loomio/tmp ] || ln -sf ${cfg.statePath}/tmp /run/loomio/tmp
        [ -d /run/loomio/uploads ] || ln -sf ${cfg.statePath}/uploads /run/loomio/uploads
        chown -R ${cfg.user}:${cfg.group} /run/loomio

        # Prepare home directory
        #mkdir -p ${loomioEnv.HOME}
        #chown -R ${cfg.user}:${cfg.group} ${loomioEnv.HOME}/

        cp -rf ${cfg.package}/share/loomio/db/* ${cfg.statePath}/db
        cp -rf ${cfg.package}/share/loomio/config.dist/* ${cfg.statePath}/config
        sed -ri -e '/log_level/a config.logger = Logger.new(STDERR)' \
                -e '/^end/i config.action_cable.allow_same_origin_as_host = true' \
                ${cfg.statePath}/config/environments/production.rb
        cp -rf ${cfg.package}/share/loomio/client/tasks/config.dist/* ${cfg.statePath}/client-tasks-config
        ln -sf ${cfg.statePath}/config /run/loomio/config
        ln -sf ${cfg.statePath}/client-tasks-config /run/loomio/client-tasks-config
        if [ -e ${cfg.statePath}/lib ]; then
          rm ${cfg.statePath}/lib
        fi
        ln -sf ${cfg.package}/share/loomio/lib ${cfg.statePath}/lib

        # JSON is a subset of YAML
        ln -fs ${pkgs.writeText "database.yml" databaseYml} ${cfg.statePath}/config/database.yml

        chown -R ${cfg.user}:${cfg.group} ${cfg.statePath}/
        chmod -R ug+rwX,o-rwx+X ${cfg.statePath}/

        if [ "${cfg.databaseHost}" = "127.0.0.1" ]; then
          if ! test -e "${cfg.statePath}/db-created"; then
            ${pkgs.sudo}/bin/sudo -u ${pgSuperUser} psql postgres -c "CREATE ROLE ${cfg.databaseUsername} WITH LOGIN NOCREATEDB NOCREATEROLE ENCRYPTED PASSWORD '${cfg.databasePassword}'"
            ${pkgs.sudo}/bin/sudo -u ${pgSuperUser} ${config.services.postgresql.package}/bin/createdb --owner ${cfg.databaseUsername} ${cfg.databaseName}
            ${pkgs.sudo}/bin/sudo -u ${pgSuperUser} psql postgres --dbname=${cfg.databaseName} -c 'CREATE EXTENSION IF NOT EXISTS "citext"; CREATE EXTENSION IF NOT EXISTS "hstore"; CREATE EXTENSION IF NOT EXISTS "pg_stat_statements";'
            touch "${cfg.statePath}/db-created"
            ${loomio-rake}/bin/loomio-rake db:schema:load RAILS_ENV=production
          fi
        fi

        # Always do the db migrations just to be sure the database is up-to-date
        ${loomio-rake}/bin/loomio-rake db:migrate RAILS_ENV=production

        # Change permissions in the last step because some of the
        # intermediary scripts like to create directories as root.
        chown -R ${cfg.user}:${cfg.group} ${cfg.statePath}
        chmod -R ug+rwX,o-rwx+X ${cfg.statePath}
        #chmod -R u+rwX,go-rwx+X ${loomioEnv.HOME}
      '';

      serviceConfig = {
        PermissionsStartOnly = true; # preStart must be run as root
        Type = "simple";
        User = cfg.user;
        Group = cfg.group;
        TimeoutSec = "180";
        Restart = "no"; # TODO
        WorkingDirectory = "${cfg.package}/share/loomio";
        ExecStart = "${cfg.package.rubyEnv}/bin/puma config/puma.rb";
      };

    };
    # TODO: is it ok to set these globally?
    services.nginx.recommendedProxySettings = true;
    services.nginx.recommendedGzipSettings = true;
    services.nginx.recommendedOptimisation = true;
    services.nginx.recommendedTlsSettings = true;
    services.nginx.virtualHosts.${cfg.domain} = {
      locations."/client".root = "${cfg.package}/share/loomio/public/";
      locations."/" = {
        proxyPass = http://localhost:3000;
      };
      locations."/cable" = {
        proxyPass = http://localhost:3000;
        proxyWebsockets = true;
      };
    };
  };
  #meta.doc = ./gitlab.xml;
}
