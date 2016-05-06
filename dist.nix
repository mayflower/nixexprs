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
      system.defaultChannel = "https://filedump.mayflower.de/nixos/channels/master";

      users.extraUsers.root.initialHashedPassword = mkForce "";

      time.timeZone = "UTC";
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

