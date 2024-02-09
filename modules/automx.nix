{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.services.automx;
  uwsgi = pkgs.uwsgi.override { plugins = [ "python3" ]; };
  automxUwsgi = pkgs.writeText "uwsgi.json" (builtins.toJSON {
    uwsgi = {
      plugins = [ "python3" ];
      uid = "automx";
      socket = "/run/automx/web.socket";
      chown-socket = "automx:nginx";
      chmod-socket = 770;
      chdir = "${uwsgi.python3.pkgs.automx}/share/automx";
      wsgi-file = "automx_wsgi.py";
      master = true;
      processes = 4;
      no-orphans = true;
      vacuum = true;
      logger = "syslog";
    };
  });
  pythonEnv = uwsgi.python3.withPackages (ps: [ ps.automx ]);
  pythonPath = "${pythonEnv}/${pythonEnv.python.sitePackages}";
in {
  options.services.automx = {
    enable = mkEnableOption (mdDoc "automx service");
    nginx.enable = mkEnableOption (mdDoc "nginx vhosts for automx");
    domain = mkOption {
      type = types.str;
      example = "example.com";
      description = mdDoc "Mail domain to use for configuration of nginx.";
    };
    configFile = mkOption {
      type = types.path;
      description = mdDoc "Config file for the automx service.";
    };
  };

  config = mkIf cfg.enable {
    services.memcached.enable = mkDefault true;

    environment.etc."automx.conf".source = cfg.configFile;

    systemd.sockets.automx = {
      wantedBy = [ "sockets.target" ];
      listenStreams = [ "/run/automx/web.socket" ];
    };
    systemd.services.automx = {
      description = "A mail client account configuration service, combining various autoconfiguration techniques in one webservice";
      after = [ "network.target" ];
      requires = [ "automx.socket" ];
      environment.PYTHONPATH = pythonPath;
      serviceConfig = {
        Type = "notify";
        Restart = "on-failure";
        KillSignal = "SIGQUIT";
        StandardError = "syslog";
        NotifyAccess = "all";
        ExecStart = "${uwsgi}/bin/uwsgi --json ${automxUwsgi}";
        DynamicUser = true;
      };
    };

    services.nginx = mkIf cfg.nginx.enable {
      enable = mkDefault true;
      virtualHosts."autoconfig.${cfg.domain}" = {
        forceSSL = true;
        enableACME = true;
        serverAliases = [ "autodiscover.${cfg.domain}" ];
        root = "${uwsgi.python3.pkgs.automx}/share/automx/html";
        locations."/" = {
          extraConfig = ''
            try_files $uri $uri/ index.html;
          '';
        };
        locations."~ ^/(mail/config-v1.1.xml|autodiscover|mobileconfig)" = {
          extraConfig = ''
            uwsgi_pass unix:/run/automx/web.socket;
          '';
        };
        extraConfig = ''
          add_header X-Content-Type-Options "nosniff" always;
        '';
      };
    };
  };
}
