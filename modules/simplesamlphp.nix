{ config, lib, pkgs, ... }:

with lib;

let

  cfg = config.services.simplesamlphp;

  saml20-sp-remote = pkgs.writeText "saml20-sp-remote.php" ''
    <?php

    ${cfg.saml20.sp.remote}
  '';

  saml20-idp-hosted = pkgs.writeText "saml20-idp-hosted.php" (''
    <?php
  '' + (optionalString cfg.saml20.idp.hosted.enable ''
    $metadata['__DYNAMIC:1__'] = array_replace_recursive([
      'host' => '__DEFAULT__',
      'privatekey' => '${cfg.saml20.idp.hosted.privKeyFile}',
      'certificate' => '${cfg.saml20.idp.hosted.certificateFile}',
      'auth' => '${cfg.saml20.idp.hosted.auth}',
    ], [
      ${cfg.saml20.idp.hosted.extraConfig}
    ]);
  '') + ''
    ${cfg.saml20.idp.hosted.moreProviders}
  '');

  authsourcesFile = pkgs.writeText "authsources.php" ''
    <?php

    $config = array(
      'admin' => array(
        'core:AdminPassword',
      ),

      ${cfg.authsources}
    );
  '';

  configFile = pkgs.writeText "config.php" ''
    <?php

    $adminpassword = trim(file_get_contents('${cfg.adminPasswordFile}'));
    $secretsalt = trim(file_get_contents('${cfg.secretSaltFile}'));

    $config = array_replace_recursive([
        'baseurlpath' => '${cfg.baseUrlPath}',
        'certdir' => 'cert/',
        'loggingdir' => 'log/',
        'datadir' => 'data/',
        'tempdir' => '/tmp/simplesaml',
        'technicalcontact_name' => 'Administrator',
        'technicalcontact_email' => '${cfg.technicalContactEmail}',
        'timezone' => null,
        'secretsalt' => $secretsalt,
        'auth.adminpassword' => $adminpassword,
        'admin.protectindexpage' => false,
        'admin.protectmetadata' => false,
        'admin.checkforupdates' => ${boolToString cfg.checkForUpdates},
        'trusted.url.domains' => [ '${concatStringsSep "', '" cfg.trustedUrlDomains}' ],
        'trusted.url.regex' => ${boolToString cfg.trustedUrlRegex},
        'enable.http_post' => false,
        'debug' => array(
            'saml' => false,
            'backtraces' => true,
            'validatexml' => false,
        ),
        'showerrors' => true,
        'errorreporting' => true,
        'logging.level' => ${cfg.loglevel},
        'logging.handler' => '${cfg.logFacility}',
        'logging.facility' => defined('LOG_LOCAL5') ? constant('LOG_LOCAL5') : LOG_USER,
        'logging.processname' => 'simplesamlphp',
        'logging.logfile' => 'simplesamlphp.log',
        'statistics.out' => array(// Log statistics to the normal log.
        ),
        'proxy' => null,
        'proxy.auth' => false,
        'database.dsn' => 'mysql:host=localhost;dbname=saml',
        'database.username' => 'simplesamlphp',
        'database.password' => 'secret',
        'database.prefix' => "",
        'database.persistent' => false,
        'database.slaves' => array(
        ),
        'enable.saml20-idp' => ${boolToString cfg.saml20.idp.hosted.enable},
        'enable.shib13-idp' => false,
        'enable.adfs-idp' => false,
        'enable.wsfed-sp' => false,
        'enable.authmemcookie' => false,
        'default-wsfed-idp' => 'urn:federation:pingfederate:localhost',
        'shib13.signresponse' => true,
        'session.duration' => 8 * (60 * 60), // 8 hours.
        'session.datastore.timeout' => (4 * 60 * 60), // 4 hours
        'session.state.timeout' => (60 * 60), // 1 hour
        'session.cookie.name' => '${cfg.cookieName}',
        'session.cookie.lifetime' => 0,
        'session.cookie.path' => '/',
        'session.cookie.domain' => '${cfg.cookieDomain}',
        'session.cookie.secure' => ${boolToString cfg.cookieSecure},
        'session.phpsession.cookiename' => '${cfg.phpSessionCookieName}',
        'session.phpsession.savepath' => null,
        'session.phpsession.httponly' => true,
        'session.authtoken.cookiename' => '${cfg.authTokenCookieName}',
        'session.rememberme.enable' => false,
        'session.rememberme.checked' => false,
        'session.rememberme.lifetime' => (14 * 86400),
        'memcache_store.servers' => array(
            array(
                array('hostname' => 'localhost'),
            ),
        ),
        'memcache_store.prefix' => "",
        'memcache_store.expires' => 36 * (60 * 60), // 36 hours.
        'language.available' => array(
            'en', 'no', 'nn', 'se', 'da', 'de', 'sv', 'fi', 'es', 'fr', 'it', 'nl', 'lb', 'cs',
            'sl', 'lt', 'hr', 'hu', 'pl', 'pt', 'pt-br', 'tr', 'ja', 'zh', 'zh-tw', 'ru', 'et',
            'he', 'id', 'sr', 'lv', 'ro', 'eu', 'el', 'af'
        ),
        'language.rtl' => array('ar', 'dv', 'fa', 'ur', 'he'),
        'language.default' => 'en',
        'language.parameter.name' => 'language',
        'language.parameter.setcookie' => true,
        'language.cookie.name' => 'language',
        'language.cookie.domain' => null,
        'language.cookie.path' => '/',
        'language.cookie.secure' => false,
        'language.cookie.httponly' => false,
        'language.cookie.lifetime' => (60 * 60 * 24 * 900),
        'language.i18n.backend' => 'SimpleSAMLphp',
        'attributes.extradictionary' => null,
        'template.auto_reload' => true,
        'idpdisco.enableremember' => true,
        'idpdisco.rememberchecked' => true,
        'idpdisco.validate' => true,
        'idpdisco.extDiscoveryStorage' => null,
        'idpdisco.layout' => 'dropdown',
        'authproc.idp' => array(
            30 => 'core:LanguageAdaptor',
            45 => array(
                'class'         => 'core:StatisticsWithAttribute',
                'attributename' => 'realm',
                'type'          => 'saml20-idp-SSO',
            ),
            50 => 'core:AttributeLimit',
            99 => 'core:LanguageAdaptor',
        ),
        'authproc.sp' => array(
            90 => 'core:LanguageAdaptor',
        ),
        'metadata.sources' => array(
            array('type' => 'flatfile'),
        ),
        'metadata.sign.enable' => false,
        'metadata.sign.privatekey' => null,
        'metadata.sign.privatekey_pass' => null,
        'metadata.sign.certificate' => null,
        'store.type' => 'phpsession',
        'store.sql.dsn' => 'sqlite:/path/to/sqlitedatabase.sq3',
        'store.sql.username' => null,
        'store.sql.password' => null,
        'store.sql.prefix' => 'SimpleSAMLphp',
        'store.redis.host' => 'localhost',
        'store.redis.port' => 6379,
        'store.redis.prefix' => 'SimpleSAMLphp',
    ], [
      ${cfg.extraConfig}
    ]);
  '';

in

{

  options = {

    services.simplesamlphp = {

      enable = mkEnableOption "simpleSAMLphp.";

      hostname = mkOption {
        type = types.str;
        description = "Which vhost hostname simplesamlphp should run on.";
      };

      samlLocation = mkOption {
        type = types.str;
        default = "/simplesamlphp";
        description = ''
          Which directory on the vhost simplesamlphp should live in.
        '';
      };

      baseUrlPath = mkOption {
        type = types.str;
        description = ''
          The base URL (e.g. https://sso.example.org/saml/). Secure (https) by
          default, but can be overriden with this option for local test cases.
        '';
      };

      technicalContactEmail = mkOption {
        type = types.str;
        default = "";
        description = "The email that's shown if something goes wrong.";
      };

      adminPasswordFile = mkOption {
        type = types.path;
        description = ''
          Password file for the default admin user.
        '';
      };

      secretSaltFile = mkOption {
        type = types.path;
        description = ''
          File with salt for hash generation.
        '';
      };

      trustedUrlRegex = mkOption {
        type = types.bool;
        default = false;
        description = ''
          Whether to allow wildcards or regular expression matching in
          <literal>trustedUrlDomains</literal>.
        '';
      };

      trustedUrlDomains = mkOption {
        type = types.listOf types.str;
        default = [];
        description = ''
          List of domains that are allowed when generating links or redirects
          to URLs.
        '';
      };

      checkForUpdates = mkOption {
        type = types.bool;
        default = false;
        description = ''
          Whether to check for a new stable release when opening the
          configuration admin page.
        '';
      };

      cookieName = mkOption {
        type = types.str;
        default = "SimpleSAMLSessionID";
        description = "Name of session cookie.";
      };

      cookieDomain = mkOption {
        type = types.str;
        default = "";
        example = ".example.org";
        description = ''
          Can be used to make the session cookie available to several domains.
        '';
      };

      cookieSecure = mkOption {
        type = types.bool;
        default = true;
        description = "Whether simpleSAMLphp is only accessible through https.";
      };

      phpSessionCookieName = mkOption {
        type = types.str;
        description = "Name of php session cookie.";
      };

      authTokenCookieName = mkOption {
        type = types.str;
        description = "Name of auth token cookie.";
      };

      loglevel = mkOption {
        default = "info";
        type = types.enum [ "emerg" "alert" "crit" "err" "warning" "notice" "info" "debug" ];
        apply = x: "SimpleSAML\\Logger::${toUpper x}";
        description = ''
          Define the minimum log level to log. Available levels:
          <itemizedlist>
          <listitem><para><literal>emerg</literal></para></listitem>
          <listitem><para><literal>alert</literal></para></listitem>
          <listitem><para><literal>err</literal>     No statistics, only errors</para></listitem>
          <listitem><para><literal>warning</literal> No statistics, only warnings/errors</para></listitem>
          <listitem><para><literal>notice</literal>  Statistics and errors</para></listitem>
          <listitem><para><literal>info</literal>    Verbose logs</para></listitem>
          <listitem><para><literal>debug</literal>   Full debug logs - not recommended for production</para></listitem>
          </itemizedlist>
        '';
      };

      logFacility = mkOption {
        default = "syslog";
        type = types.enum [ "syslog" "file" "errorlog" "stderr" ];
        description = ''
          Where to write logs.
        '';
      };

      extraConfig = mkOption {
        type = types.str;
        default = "";
        example = ''
          'theme.use' => 'mayflower:mfminimal',
          'template.auto_reload' => true,
        '';
        description = ''
          Further configuration options as PHP array entries. These options
          overwrite other options if the same option is set in
          <literal>extraConfig</literal> as well as declaratively. Can also be
          used to override defaults. Consult
          <literal>pkgs.simplesamlphp/config-templates/config.php</literal> for a thoroughly
          documented list.
        '';
      };

      authsources = mkOption {
        type = types.str;
        default = "";
        example = ''
          'privacyidea' => [
            'privacyidea:PrivacyideaAuthSource',
            'privacyideaServerURL' => 'https://privacyidea.example.org/',
            // sends the password/pin on the first step, so you don't have to re-enter
            // it when doing any kind of challenge (e.g. U2F) as second factor.
            'authenticationFlow' => 'sendPassword',
            'sslVerifyPeer' => true,
            'realm' => "",
            'attributemap' => [
              'username' => 'samlLoginName',
              'surname' => 'surName',
              'givenname' => 'givenName',
              'email' => 'emailAddress',
              'phone' => 'telePhone',
            ],
          ],
        '';
        description = ''
          Authsources to authenticate against. Consult
          <literal>pkgs.simplesamlphp/config-templates/authsources.php</literal>
          for a list of examples and documentation.
        '';
      };

      saml20.sp.remote = mkOption {
        type = types.str;
        default = "";
        description = "SAML 2.0 service providers as PHP arrays";
        example = ''
          $metadata['https://saml2sp0.example.org/saml/metadata'] = [
            'AssertionConsumerService' => 'https://saml2sp0.example.org/saml/acs',
            'SingleLogoutService' => 'https://saml2sp0.example.org/saml/sso',
          ];

          $metadata['https://saml2sp1.example.org/auth/saml/metadata'] = [
            'AssertionConsumerService' => 'https://saml2sp1.example.org/auth/saml/callback',
          ];
        '';
      };

      saml20.idp.hosted = {
        enable = mkEnableOption "a hosted SAML 2.0 identity provider";

        certificateFile = mkOption {
          type = types.nullOr types.path;
          description = ''
            Certificate file which should be used by this IdP, in PEM format.
          '';
        };

        privKeyFile = mkOption {
          type = types.nullOr types.path;
          description = ''
            Name of private key file for this IdP, in PEM format.
          '';
        };

        auth = mkOption {
          type = types.str;
          description = ''
            Which authentication module should be used to authenticate users
            on this IdP.
          '';
        };

        extraConfig = mkOption {
          type = types.str;
          default = "";
          example = ''
            'attributes.NameFormat' => 'urn:oasis:names:tc:SAML:2.0:attrname-format:uri',
          '';
          description = ''
            Further configuration options as PHP array entries.
          '';
        };

        moreProviders = mkOption {
          type = types.str;
          default = "";
          description = ''
            Further providers as PHP arrays.
          '';
        };
      };
    };
  };

  config = mkIf cfg.enable {
    services.simplesamlphp.baseUrlPath = lib.mkDefault "https://${cfg.hostname}${cfg.samlLocation}/";

    system.activationScripts.simplesamlphp = ''
      mkdir -p /run/simplesamlphp/{metadata,config,modules}
      ln -sf ${saml20-sp-remote} /run/simplesamlphp/metadata/saml20-sp-remote.php
      ln -sf ${saml20-idp-hosted} /run/simplesamlphp/metadata/saml20-idp-hosted.php
      ln -sf ${authsourcesFile} /run/simplesamlphp/config/authsources.php
      ln -sf ${configFile} /run/simplesamlphp/config/config.php
    '';

    services.nginx.enable = true;

    services.nginx.virtualHosts = {
      "${cfg.hostname}".locations."${cfg.samlLocation}/".extraConfig = ''
        alias ${pkgs.simplesamlphp}/www/;
        index index.php;
        add_header X-Content-Type-Options "nosniff" always;

        location ~ /\. {
          return 404;
        }

        location ~ ^${cfg.samlLocation}(?<phpfile>/.+\.php)(/|$) {
          include ${config.services.nginx.package}/conf/fastcgi_params;
          fastcgi_param  SCRIPT_FILENAME  $document_root$phpfile;
          fastcgi_split_path_info ^(.+?\.php)(/.*)$;
          fastcgi_param PATH_INFO $fastcgi_path_info if_not_empty;
          fastcgi_pass unix:${config.services.phpfpm.pools.simplesamlphp.socket};
        }
      '';
    };

    services.phpfpm.pools.simplesamlphp = {
        user = "simplesamlphp";
        group = "nginx";
        phpPackage = pkgs.php80;
        settings = {
          "listen.owner" = "nginx";
          "listen.group" = "nginx";
          "listen.mode" = "0600";
          "pm" = "dynamic";
          "pm.max_children" = 4;
          "pm.start_servers" = 1;
          "pm.min_spare_servers" = 1;
          "pm.max_spare_servers" = 2;
          "pm.max_requests" = 0;
          "env[SIMPLESAMLPHP_CONFIG_DIR]" = "${pkgs.simplesamlphp}/config";
      };
    };

    users.extraUsers.simplesamlphp = {
      group = "nginx";
      isSystemUser = true;
    };
  };
}
