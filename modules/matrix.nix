{ lib, config, pkgs, ... }:

with lib;

let
  cfg = config.mayflower.matrix;

in
{
  options.mayflower.matrix = {
    enable = mkEnableOption (mdDoc "The Matrix");

    fqdn = mkOption {
      type = types.str;
      example = "matrix.example.com";
      description = mdDoc ''
        The fully qualified domain name of the matrix server.
        This domain name will also be used to open a minimal nginx reverse proxy
        for the matrix-synapse service.
      '';
    };

    turn = {
      enable = mkEnableOption (mdDoc "coturn as turn server");

      authSecretFile = mkOption {
        type = types.str;
        description = mdDoc ''
          Path to the file containing the shared secret for coturn.
        '';
      };

      # Note(@Ma27): I considered to somehow implement an abstraction
      # which allows to do this with a single option, but since this is a special use-case
      # I didn't consider it worth the effort (including future maintenance effort).
      synapseAuthSecretFile = mkOption {
        type = types.str;
        description = mdDoc ''
          Path to the file containing the same secret as
          [](#opt-mayflower.matrix.turn.authSecretFile),
          but prefixed with `turn_shared_secret` since
          it will be passed to synasep as config file.
        '';
      };

      listenIPs = mkOption {
        type = with types; listOf str;
        default = [];
        description = "";
      };
    };

    element = {
      enable = mkEnableOption (mdDoc "Element web client");

      fqdn = mkOption {
        type = types.str;
        example = "chat.example.com";
        description = mdDoc ''
          The fully qualified domain name of where the Element web frontend will be deployed.
        '';
      };

      defaultHomeServerUrl = mkOption {
        type = types.str;
        example = "https://matrix.org/";
        description = mdDoc ''
          The default home server URL Element should use.
        '';
      };

      defaultIdentityServerUrl = mkOption {
        type = types.str;
        example = "https://vector.im/";
        default = "";
        description = mdDoc ''
          The default identity server URL Element should use.
        '';
      };

      disableCustomUrls = mkOption {
        type = types.bool;
        default = true;
        description = mdDoc ''
          Whether or not to allow custom URLs in Element.
        '';
      };

      disableGuests = mkOption {
        type = types.bool;
        default = true;
        description = mdDoc ''
          Whether or not to allow guest logins through Element.
          Guests must be enabled on the server too.
        '';
      };

      disableLoginLanguageSelector = mkOption {
        type = types.bool;
        default = false;
        description = mdDoc ''
          Whether or not to allow users to change the language for Element.
        '';
      };

      disable3pidLogin = mkOption {
        type = types.bool;
        default = false;
        description = mdDoc ''
          Whether or not to allow third party ID logins.
          This can be an E-Mail address or phone number using an identity server.
        '';
      };

      brand = mkOption {
        type = types.str;
        default = "Element";
      };

      crossOriginRendererDomain = mkOption {
        type = types.nullOr types.str;
        default = null;
        description = mdDoc "";
      };

      extraConfig = mkOption {
        type = types.attrs;
        default = {};
        description = mdDoc "Overrides to the Element config";
      };
    };
  };

  config = mkIf cfg.enable {

    networking.firewall = {
      allowedTCPPorts = [
        80
        443
        # matrix-synapse federation port
        8448
      ] ++ optionals cfg.turn.enable [ 3478 3479 5349 5350 ];
      allowedUDPPorts = optionals cfg.turn.enable [ 3478 3479 5349 5350 ];
      allowedUDPPortRanges = optional cfg.turn.enable { from = 50000; to = 54999; };
    };

    services = {
      postgresql = {
        enable = true;
        settings.synchronous_commit = "off";
      };

      nginx = {
        enable = true;
        virtualHosts = mkMerge [
          { # Reverse Proxy for matrix-synapse
            ${cfg.fqdn} = {
              forceSSL = true;
              enableACME = true;

              locations = {
                "/".extraConfig = mkIf cfg.element.enable "return 302 https://${cfg.element.fqdn};";
                "/_matrix" = {
                  proxyPass = "http://127.0.0.1:8008";
                  priority = 30;
                  extraConfig = ''
                    add_header X-Content-Type-Options "nosniff" always;
                  '';
                };
                "/_synapse/client" = {
                  proxyPass = "http://127.0.0.1:8008";
                  priority = 30;
                  extraConfig = ''
                    add_header X-Content-Type-Options "nosniff" always;
                  '';
                };
                "/_matrix/identity" = {
                  proxyPass = "http://127.0.0.1:8090/_matrix/identity";
                  extraConfig = ''
                    add_header Access-Control-Allow-Origin *;
                    add_header Access-Control-Allow-Method 'GET, POST, PUT, DELETE, OPTIONS';
                    add_header X-Content-Type-Options "nosniff" always;
                  '';
                  priority = 20;
                };
                "/_matrix/client/r0/user_directory" = {
                  proxyPass = "http://127.0.0.1:8090/_matrix/client/r0/user_directory";
                  priority = 10;
                  extraConfig = ''
                    add_header X-Content-Type-Options "nosniff" always;
                  '';
                };
              };
            };
          }
          (mkIf (cfg.element.crossOriginRendererDomain != null) {
            ${cfg.element.crossOriginRendererDomain} = {
              forceSSL = true;
              enableACME = true;
              root = pkgs.fetchFromGitHub {
                owner = "matrix-org";
                repo = "usercontent";
                rev = "2c43f6dbbb64b4e589209965533f7c8a14806010";
                sha256 = "074ln7hfwwwnjhgzx3a59ds6k6007mx0brp7m7lrz1pfn6v79b8j";
              };
              extraConfig = ''
                add_header X-Content-Type-Options "nosniff" always;
              '';
              locations."/".extraConfig = "return 204;";
            };
          })
          (mkIf cfg.element.enable {
            # element web frontend configuration
            ${cfg.element.fqdn} = {
              forceSSL = true;
              enableACME = true;

              locations = {
                "/" = {
                  extraConfig = ''
                    add_header X-Content-Type-Options "nosniff" always;
                  '';
                  root = pkgs.element-web.override {
                        #"welcomePageUrl": "home.html",
                    conf = (flip recursiveUpdate cfg.element.extraConfig {
                      "default_server_config" = {
                        "m.homeserver" = {
                          "base_url" = cfg.element.defaultHomeServerUrl;
                          "server_name" = cfg.fqdn;
                        };
                        "m.identity_server"."base_url" = cfg.element.defaultIdentityServerUrl;
                      };
                      "disable_custom_urls" = cfg.element.disableCustomUrls;
                      "disable_guests" = cfg.element.disableGuests;
                      "disable_login_language_selector" = cfg.element.disableLoginLanguageSelector;
                      "disable_3pid_login" = cfg.element.disable3pidLogin;
                      "brand" = cfg.element.brand;
                      "integrations_ui_url" = "https://scalar.vector.im/";
                      "integrations_rest_url" = "https://scalar.vector.im/api";
                      "integrations_jitsi_widget_url" = "https://scalar.vector.im/api/widgets/jitsi.html";
                      "defaultCountryCode" = "DE";
                      "showLabsSettings" = true;
                      "features" = {
                          "feature_groups" = "enable";
                          "feature_pinning" = "enable";
                          "feature_reactions" = "enable";
                          "feature_message_editing" = "labs";
                      };
                      "default_federate" = false;
                      "default_theme" = "dark";
                      "roomDirectory" = {
                          "servers" = [
                              cfg.fqdn "matrix.org"
                          ];
                      };
                      "welcomeUserId" = null;
                      "piwik" = false;
                      "enable_presence_by_hs_url" = {
                          "https://matrix.org" = false;
                      };
                    });
                  };
                };
              };
            };
          })
        ];
      };

      matrix-synapse = {
        enable = true;
        extraConfigFiles = mkIf cfg.turn.enable [
          cfg.turn.synapseAuthSecretFile
        ];
        settings = {
          server_name = cfg.fqdn;
          tls_certificate_path = "/var/lib/acme/${cfg.fqdn}/fullchain.pem";
          tls_private_key_path = "/var/lib/acme/${cfg.fqdn}/key.pem";
          enable_registration = false;
          enable_metrics = true;
          database.name = "psycopg2";
          # turn configuration with coturn
          turn_uris = optionals cfg.turn.enable [
            "turn:${cfg.fqdn}:3478?transport=udp"
            "turn:${cfg.fqdn}:3478?transport=tcp"
          ];
          turn_user_lifetime = "86400000";
          # For simplicity do not reverse-proxy the federation port
          # See https://github.com/matrix-org/synapse#reverse-proxying-the-federation-port
          listeners = [{
            port = 8448;
            bind_addresses = [ "::" ];
            type = "http";
            tls = true;
            x_forwarded = false;
            resources = [
              { names = ["federation"]; compress = false; }
            ];
          } {
            port = 8008;
            bind_addresses = [ "127.0.0.1" "::1" ];
            type = "http";
            tls = false;
            x_forwarded = true;
            resources = [
              { names = ["client"]; compress = false; }
            ];
          } {
            port = 9092;
            bind_addresses = [ "0.0.0.0" ];
            type = "metrics";
            tls = false;
            resources = [];
          }];
        };
      };

      mxisd = {
        enable = true;
        matrix.domain = cfg.fqdn;
        extraConfig = {
          dns.overwrite.homeserver.client = [
            { name = cfg.fqdn; value = "http://127.0.0.1:8008"; }
          ];
          session.policy.unbind = {
            enabled = true;
            notifications = false;
          };
          session.policy.validation = {
            enabled = true;
            forLocal = {
              enabled = true;
              toLocal = true;
              toRemote.enabled = false;
            };
            forRemote = {
              enabled = true;
              toLocal = true;
              toRemote.enabled = false;
            };
          };
        };
      };

      coturn = mkIf cfg.turn.enable {
        enable = true;
        listening-ips = cfg.turn.listenIPs;
        lt-cred-mech = true;
        use-auth-secret = true;
        static-auth-secret-file = cfg.turn.authSecretFile;
        realm = cfg.fqdn;
        cert = "/var/lib/acme/${cfg.fqdn}/fullchain.pem";
        pkey = "/var/lib/acme/${cfg.fqdn}/key.pem";
        min-port = 50000;
        max-port = 54999;
        no-tcp-relay = true;
        extraConfig = ''
          user-quota=12 # 4 streams per video call, so 12 streams = 3 simultaneous relayed calls per user.
          total-quota=1200
        '';
      };
    };

    users.extraGroups.matrix-certs.members = [
      config.services.nginx.user "matrix-synapse"
    ] ++ optional cfg.turn.enable "turnserver";

    security.acme.certs = {
      ${cfg.fqdn} = {
        group = "matrix-certs";
        postRun = ''
          systemctl restart matrix-synapse
        '' + optionalString cfg.turn.enable ''
          systemctl restart coturn
        '';
      };
    };

    mayflower.matrix.element.defaultHomeServerUrl = lib.mkDefault "https://${cfg.fqdn}/";
  };
}
