{ config, lib, pkgs, ... }:

with lib;

{
  options = {
    mayflower.base.enable = mkOption {
      type = types.bool;
      default = true;
    };
  };

  config = mkIf config.mayflower.base.enable {
    boot.tmpOnTmpfs = true;
    boot.kernelParams = [
      "boot.shell_on_fail"
      "panic=10" # wait a bit before rebooting on panics pre-stage2
    ];

    boot.loader.grub.splashImage = null;
    boot.loader.grub.version = 2;
    boot.loader.grub.copyKernels = true;
    boot.loader.timeout = 2;

    boot.kernel.sysctl = {
      "kernel.panic" = "1"; # instantly reboot on panics
      "net.core.default_qdisc" = "fq_codel";
      "net.ipv6.conf.all.use_tempaddr" = 0;
      "net.ipv6.conf.default.use_tempaddr" = 0;
      "net.ipv4.tcp_slow_start_after_idle" = 0;
      "net.ipv6.conf.all.autoconf" = 0;
      "net.ipv6.conf.default.autoconf" = 0;
      "net.ipv6.conf.all.accept_ra" = 0;
      "net.ipv6.conf.default.accept_ra" = 0;
    };

    i18n.defaultLocale = "en_US.UTF-8";
    i18n.supportedLocales = ["en_US.UTF-8/UTF-8" "en_GB.UTF-8/UTF-8"];

    console = {
      font = "Lat2-Terminus16";
      keyMap = "us";
    };

    programs = {
      bash.enableCompletion = true;
      ssh.startAgent = false;
      mtr.enable = true;
    };

    environment = {
      variables.EDITOR = "vim";
      systemPackages = with pkgs; [
        curl
        dnsutils
        file
        htop
        iftop
        iotop
        iperf2
        iperf3
        jnettop
        lsof
        ncdu
        pbzip2
        pciutils
        pv
        rxvt_unicode.terminfo
        strace
        tcpdump
        tmux
        vim
        wget
      ];
    };

    time.timeZone = mkDefault "GMT";

    security.audit.enable = mkDefault false;

    services = {
      openssh = {
        enable = true;
        passwordAuthentication = false;
      };

      fail2ban = {
        enable = true;
        # ssh-iptables jail is enabled by default
      };

      chrony = {
        enable = !config.boot.isContainer;
        servers = [
          "0.de.pool.ntp.org"
          "1.de.pool.ntp.org"
          "2.de.pool.ntp.org"
          "3.de.pool.ntp.org"
        ];
      };

      nginx = {
        package = pkgs.nginxUnstable;
        appendConfig = ''
          worker_processes auto;
          worker_cpu_affinity auto;
        '';
        eventsConfig = ''
          worker_connections 2048;
        '';
        appendHttpConfig = ''
          server_names_hash_max_size 1024;
          server_names_hash_bucket_size  64;

          error_log syslog:server=unix:/dev/log;
        '';
        logError = "syslog:server=unix:/dev/log error";
        recommendedOptimisation = true;
        recommendedTlsSettings = true;
        recommendedGzipSettings = true;
        recommendedProxySettings = true;
      };

      udisks2.enable = false;
      ntp.enable = false;
      timesyncd.enable = false;

      journald.extraConfig = ''
        MaxFileSec=1day
        MaxRetentionSec=1week
      '';

      zfs.autoScrub.enable = config.fileSystems ? "/" &&
        config.fileSystems."/".fsType == "zfs";

      ssmtp = {
        enable = mkDefault true;
        hostName = mkDefault "mail.mayflower.de";
        domain = mkDefault "mayflower.de";
        useTLS = true;
        root = mkDefault "devnull@mayflower.de";
      };
    };

    fonts.fontconfig.enable = lib.mkDefault config.services.xserver.enable;

    virtualisation.docker.autoPrune = {
      enable = mkDefault true;
      flags = [ "--all" "--volumes" ];
    };

    virtualisation.libvirtd.qemuVerbatimConfig = ''
      namespaces = []
      set_process_name = 1
      seccomp_sandbox = 1
    '';

    nix = {
      gc = {
        automatic = !config.boot.isContainer;
        options = "--delete-older-than 7d";
      };
      binaryCaches = lib.mkForce [
        "https://hydra.mayflower.de/"
        "https://cache.nixos.org/"
      ];
      binaryCachePublicKeys = [
        "hydra.mayflower.de:9knPU2SJ2xyI0KTJjtUKOGUVdR2/3cOB4VNDQThcfaY="
      ];
      buildCores = 0;
    };

    documentation.nixos.enable = false;

    hardware.enableAllFirmware = mkDefault false;
    sound.enable = mkDefault false;
  };
}
