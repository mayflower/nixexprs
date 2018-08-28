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

    networking = {
      firewall.allowPing = true;
      defaultMailServer = {
        directDelivery = lib.mkDefault true;
        hostName = mkDefault "mail.mayflower.de";
        domain = mkDefault "mayflower.de";
        useSTARTTLS = true;
        root = mkDefault "devnull@mayflower.de";
      };
    };

    i18n = {
      consoleFont = "Lat2-Terminus16";
      consoleKeyMap = "us";
      defaultLocale = "en_US.UTF-8";
    };

    programs = {
      bash.enableCompletion = true;
      ssh.startAgent = false;
      mtr.enable = true;
    };

    # sigh :/
    nixpkgs.config = {
      allowUnfree = true;
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

          add_header X-Content-Type-Options "nosniff" always;
        '';
        recommendedOptimisation = true;
        recommendedTlsSettings = true;
        recommendedGzipSettings = true;
        recommendedProxySettings = true;
      };

      nscd.enable = false;
      udisks2.enable = false;
      ntp.enable = false;
      timesyncd.enable = false;
      nixosManual.enable = false;

      journald.extraConfig=''
        MaxFileSec=1day
        MaxRetentionSec=1week
      '';

      zfs.autoScrub.enable = config.fileSystems ? "/" &&
        config.fileSystems."/".fsType == "zfs";
    };

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
        "https://cache.nixos.community/"
        "https://cache.nixos.org/"
      ];
      binaryCachePublicKeys = [
        "hydra.mayflower.de:9knPU2SJ2xyI0KTJjtUKOGUVdR2/3cOB4VNDQThcfaY="
      ];
      buildCores = 0;
    };

    hardware.enableAllFirmware = mkDefault false;
    sound.enable = mkDefault false;

    # set nixpkgs in NIX_PATH to the currently deployed git revision
    nix.nixPath = let
      gitRevCmd = "/run/current-system/sw/bin/cut -d. -f4 < /run/current-system/nixos-version";
    in [
      "nixpkgs=https://github.com/mayflower/nixpkgs/archive/$(${gitRevCmd}).tar.gz"
    ];
  };
}
