{ lib, config, pkgs, ... }:

with lib;

let
  cfg = config.mayflower.matrix;

in
{
  options.mayflower.matrix = {
    enable = mkEnableOption "The Matrix";

    fqdn = mkOption {
      type = types.str;
      example = "matrix.example.com";
      description = ''
        The fully qualified domain name of the matrix server.
        This domain name will also be used to open a minimal nginx reverse proxy
        for the matrix-synapse service.
      '';
    };

    turn = {
      enable = mkEnableOption "coturn as turn server";

      authSecret = mkOption {
        type = types.str;
        description = ''
          Matrix synapse will use this secret to authenticate against the coturn service.
        '';
      };

      listenIPs = mkOption {
        type = with types; listOf str;
        default = [];
        description = "";
      };
    };

    riot = {
      enable = mkEnableOption "riot web client";

      fqdn = mkOption {
        type = types.str;
        example = "chat.example.com";
        description = ''
          The fully qualified domain name of where the Riot web frontend will be deployed.
        '';
      };

      defaultHomeServerUrl = mkOption {
        type = types.str;
        example = "https://matrix.org/";
        description = ''
          The default home server URL Riot should use.
        '';
      };

      defaultIdentityServerUrl = mkOption {
        type = types.str;
        example = "https://vector.im/";
        default = "";
        description = ''
          The default identity server URL Riot should use.
        '';
      };

      disableCustomUrls = mkOption {
        type = types.bool;
        default = true;
        description = ''
          Whether or not to allow custom URLs in Riot.
        '';
      };

      disableGuests = mkOption {
        type = types.bool;
        default = true;
        description = ''
          Whether or not to allow guest logins through Riot.
          Guests must be enabled on the server too.
        '';
      };

      disableLoginLanguageSelector = mkOption {
        type = types.bool;
        default = false;
        description = ''
          Whether or not to allow users to change the language for Riot.
        '';
      };

      disable3pidLogin = mkOption {
        type = types.bool;
        default = false;
        description = ''
          Whether or not to allow third party ID logins.
          This can be an E-Mail address or phone number using an identity server.
        '';
      };

      brand = mkOption {
        type = types.str;
        default = "Riot";
      };

      crossOriginRendererDomain = mkOption {
        type = types.nullOr types.str;
        default = null;
        description = "";
      };

      extraConfig = mkOption {
        type = types.attrs;
        default = {};
        description = "Overrides to the riot config";
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
        extraConfig = ''
          synchronous_commit = off
        '';
      };

      nginx = {
        enable = true;
        virtualHosts = mkMerge [
          { # Reverse Proxy for matrix-synapse
            ${cfg.fqdn} = {
              forceSSL = true;
              enableACME = true;

              locations = {
                "/".extraConfig = mkIf cfg.riot.enable "return 302 https://${cfg.riot.fqdn};";
                "/_matrix" = {
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
          (mkIf (cfg.riot.crossOriginRendererDomain != null) {
            ${cfg.riot.crossOriginRendererDomain} = {
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
            };
          })
          (mkIf cfg.riot.enable {
            # Riot web frontend configuration
            ${cfg.riot.fqdn} = {
              forceSSL = true;
              enableACME = true;

              locations = {
                "/" = {
                  extraConfig = ''
                    add_header X-Content-Type-Options "nosniff" always;
                  '';
                  root = pkgs.riot-web.override {
                        #"welcomePageUrl": "home.html",
                    conf = (flip recursiveUpdate cfg.riot.extraConfig {
                      "default_server_config" = {
                        "m.homeserver" = {
                          "base_url" = cfg.riot.defaultHomeServerUrl;
                          "server_name" = cfg.fqdn;
                        };
                        "m.identity_server"."base_url" = cfg.riot.defaultIdentityServerUrl;
                      };
                      "disable_custom_urls" = cfg.riot.disableCustomUrls;
                      "disable_guests" = cfg.riot.disableGuests;
                      "disable_login_language_selector" = cfg.riot.disableLoginLanguageSelector;
                      "disable_3pid_login" = cfg.riot.disable3pidLogin;
                      "brand" = cfg.riot.brand;
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
        package = pkgs.matrix-synapse.overrideAttrs (oldAttrs: {
          doCheck = false;
          doInstallCheck = false;
          postInstall = ''
            cp ${pkgs.fetchFromGitHub {
              owner = "ma1uta";
              repo = "matrix-synapse-rest-password-provider";
              rev = "ed377fb70513c2e51b42055eb364195af1ccaf33";
              sha256 = "130mc2i8v9p9ngcysg95jbp5fqxlz9p2byca2nsnb2ki96k8k3g7";
            }}/rest_auth_provider.py $out/lib/${pkgs.python37.libPrefix}/site-packages
          '';
        });
        server_name = cfg.fqdn;
        enable_registration = false;
        enable_metrics = true;
        database_type = "psycopg2";
        # turn configuration with coturn
        turn_uris = optionals cfg.turn.enable [
          "turn:${cfg.fqdn}:3478?transport=udp"
          "turn:${cfg.fqdn}:3478?transport=tcp"
        ];
        turn_shared_secret = mkIf cfg.turn.enable cfg.turn.authSecret;
        turn_user_lifetime = "86400000";
        tls_certificate_path = "/var/lib/acme/${cfg.fqdn}/fullchain.pem";
        tls_private_key_path = "/var/lib/acme/${cfg.fqdn}/key.pem";
        # For simplicity do not reverse-proxy the federation port
        # See https://github.com/matrix-org/synapse#reverse-proxying-the-federation-port
        listeners = [{
          port = 8448;
          bind_address = "";
          type = "http";
          tls = true;
          x_forwarded = false;
          resources = [
            { names = ["federation"]; compress = false; }
          ];
        } {
          port = 8008;
          bind_address = "127.0.0.1";
          type = "http";
          tls = false;
          x_forwarded = true;
          resources = [
            { names = ["client" "webclient"]; compress = false; }
          ];
        } {
          port = 9092;
          bind_address = "0.0.0.0";
          type = "metrics";
          tls = false;
          resources = [];
        }];
        extraConfig = ''
          password_providers:
            - module: "rest_auth_provider.RestAuthProvider"
              config:
                endpoint: "http://localhost:8090"
        '';
      };

      mxisd = {
        enable = true;
        matrix.domain = cfg.fqdn;
        extraConfig = {
          dns.overwrite.homeserver.client = [
            { name = cfg.fqdn; value = "http://127.0.0.1:8008"; }
          ];
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
        static-auth-secret = cfg.turn.authSecret;
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
        allowKeysForGroup = true;
        postRun = ''
          systemctl restart matrix-synapse
        '' + optionalString cfg.turn.enable ''
          systemctl restart coturn
        '';
      };
    };

    mayflower.matrix.riot.defaultHomeServerURL = lib.mkDefault "https://${cfg.fqdn}/";
  };
}
