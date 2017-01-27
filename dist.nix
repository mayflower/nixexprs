{ nixpkgs ? { outPath = <nixpkgs>; revCount = 420; shortRev = "deadbeef"; }
, supportedSystems ? [ "x86_64-linux" ]
, stableBranch ? false
}:

with import <nixpkgs/lib>;

let
  pkgs = import nixpkgs { };

  nixos = import <nixpkgs/nixos/release.nix> {
    inherit stableBranch supportedSystems nixpkgs;
  };

  version = builtins.readFile "${toString nixpkgs.outPath}/.version";
  versionSuffix =
    (if stableBranch then "." else "pre") + "${toString nixpkgs.revCount}.${nixpkgs.shortRev}";
  versionModule =
    { system.nixosVersionSuffix = versionSuffix;
      system.nixosRevision = "pre";
    };

  specialSauceModule =
    { nix.binaryCachePublicKeys = [ "hydra.mayflower.de:9knPU2SJ2xyI0KTJjtUKOGUVdR2/3cOB4VNDQThcfaY=" ];
      nix.binaryCaches = [ "https://hydra.mayflower.de" ];
      system.defaultChannel = "https://nixos.mayflower.de/channels/branches/production";

      users.extraUsers.root = {
        initialHashedPassword = mkForce "$6$rounds=6000000$y4FqIddH$DBusKfK1nqeC74bHFPjKup9reHbJYYhMhF8HvtQJUZlBneuvptwpZA6qrTIT4yG3Zs1AFgpCnSA.g2UYnGODp/";
        openssh.authorizedKeys.keys = [
          "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD2BA27CHT85uegdPaocOV9YyiKNiVOGm6eU3oaJmuEFp0hpAbjn7pvvNpT6oAXmV06V0Kj7TpKzHrfjWs+kkOnM0LgBAbcPMsJMG/oNCJL9T1JQgBxefJ3ZcSKbPRlutJ6y5hwxFI5dn4DP6OyDfiSvjTEyyRiaa70jbkmixSKZckO5DgvbxEo3lUplZt9zQECZEePkBodTNTT79DWXfbvmLOzdrXG8ekZIjvEvvdDO+3Aj74ca5KOVGgaJSBMNX5DOYI+r9K/oz7E+NFuwORDghXSYmodrC5JMBBuUdhIc0S+pksNZHYYguYUGXaleIXQ10lGBRBSJ6uPdNLFYel3 fadenb@taytay"
          "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCs/VM56N9OsG/hK7LEwheHwptClBNPdBl/tIW8URWyQPsE0dN2FYAERsHom3I3IvAS3phfhYtLOwrQ+MqEt7u5f/E3CgdfvEFRER12arxlT/q3gSh5rUdq508fTjkUNmJr6Vul+BCZ7VeESa2yvvTesFqvdVP9NtpGbAusX/JCrXwQciygJ0hDuMdLFW8MmRzljDoBsyjz18MDaMzsGQddQuE+3uAzJ1NXZpNh+M+C6eLNe+QJQMb9VTPGB3Pc0cU0GWyXYpWTVkpJqJVe180ldMU9x2c2sBBcRM3N/UDn2MF3XQi3TdGO93AIcUHNCLmUvIdqz+DPdKzCt3c3HvHh fpletz@lolnovo"
          "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIK20Lv3TggAXcctelNGBxjcQeMB4AqGZ1tDCzY19xBUV fpletz@yolovo"
          "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBB3eD81QQnNhkDiNVSo8GPd/FCLzNzu38soXZ5VEZnw robin@graffel"
          "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBwSuOuGgbtA1JNWxJzJmiIPyHLquw22us9b6QHZpzae markus.mueller@mayflower.de"
          "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIENindp3VvVDFERb5Ejlk9/srxExQeeOZd6Bv3ETqmpG 0ida"
        ];
      };

      time.timeZone = "UTC";

      environment.systemPackages= [ pkgs.vim ];

      nix.maxJobs = 4;

      security.polkit.enable = mkForce false;

      services.openssh.enable = true;

      system.activationScripts.sshd = ''
        ${pkgs.systemd}/bin/systemctl enable sshd
      '';
    };

  vmModule =
    { systemd.services."serial-getty@ttyS0".enable = mkForce true;
      systemd.services."autovt@".enable = mkForce true;
      systemd.enableEmergencyMode = mkForce true;
    };

  makeIso =
    { module, type, maintainers ? ["fpletz"], system }:

    (import <nixpkgs/nixos/lib/eval-config.nix> {
      inherit system;
      modules = [ module versionModule specialSauceModule { isoImage.isoBaseName = "nixos-${type}"; } ];
    }).config.system.build.isoImage;

  makeVMDiskImage =
    { module, maintainers ? ["fpletz"], system }:

    (import <nixpkgs/nixos/lib/eval-config.nix> {
      inherit system;
      modules = [ module versionModule specialSauceModule vmModule ];
    }).config.system.build.novaImage;

  makeSystemTarball =
    { module, maintainers ? ["fpletz"], system }:

    let

      config = (import <nixpkgs/nixos/lib/eval-config.nix> {
        inherit system;
        modules = [ module versionModule specialSauceModule ];
      }).config;

      tarball = config.system.build.tarball;

    in
      tarball //
        { meta = with import <nixpkgs> { inherit system; }; {
            description = "NixOS system tarball for ${system} - ${stdenv.platform.name}";
            maintainers = map (x: lib.maintainers.${x}) maintainers;
          };
          inherit config;
        };

  makeNetboot =
    { system }:

    let build = (import <nixpkgs/nixos/lib/eval-config.nix> {
        inherit system;
        modules = [
          <nixpkgs/nixos/modules/installer/netboot/netboot-minimal.nix>
          versionModule
          specialSauceModule
        ];
      }).config.system.build;
    in
      pkgs.symlinkJoin {
        name = "netboot";
        paths = [
          build.netbootRamdisk
          build.kernel
          build.netbootIpxeScript
        ];
      };

in

{
  channel = nixos.channel;

  containerTarball = genAttrs supportedSystems (system: makeSystemTarball {
    module = <nixpkgs/nixos/modules/virtualisation/lxc-container.nix>;
    inherit system;
  });

  isoMinimal = genAttrs supportedSystems (system: makeIso {
    module = <nixpkgs/nixos/modules/installer/cd-dvd/installation-cd-minimal.nix>;
    type = "minimal";
    inherit system;
  });

  vmDiskImage = genAttrs supportedSystems (system: makeVMDiskImage {
    module = <nixpkgs/nixos/modules/virtualisation/nova-image.nix>;
    inherit system;
  });

  netboot = genAttrs supportedSystems (system: makeNetboot { inherit system; });
}

