{ nixpkgs ? <nixpkgs>
, supportedSystems ? [ "x86_64-linux" ]
, crossSystem ? "aarch64-multiplatform"
}:

import ./packages.nix {
  inherit nixpkgs;
  releaseLib = import "${nixpkgs}/pkgs/top-level/release-lib.nix" { inherit supportedSystems; };
}
