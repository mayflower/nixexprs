{ nixpkgs
, supportedSystems ? [ "x86_64-linux" ]
}:

with import <nixpkgs/lib>;

let
  versionModule =
    { system.nixosVersionSuffix = versionSuffix;
      system.nixosRevision = "pre";
    };
  versionSuffix = "pre";
  makeSystemTarball =
    { module, maintainers ? ["viric"], system }:

    with import nixpkgs { inherit system; };

    let

      config = (import <nixpkgs/nixos/lib/eval-config.nix> {
        inherit system;
        modules = [ module versionModule ];
      }).config;

      tarball = config.system.build.tarball;

    in
      tarball //
        { meta = {
            description = "NixOS system tarball for ${system} - ${stdenv.platform.name}";
            maintainers = map (x: lib.maintainers.${x}) maintainers;
          };
          inherit config;
        };
in {
  lxcTarball = genAttrs supportedSystems (system: makeSystemTarball {
    module = <nixpkgs/nixos/modules/virtualisation/lxc-container.nix>;
    inherit system;
  });
}

