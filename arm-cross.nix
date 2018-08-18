{ nixpkgs ? <nixpkgs>
, nixexprs ? <nixexprs>
, supportedSystems ? [ "x86_64-linux" ]
, crossSystem ? "aarch64-multiplatform"
}:

import ./packages.nix {
  inherit nixpkgs;
  releaseLib = import "${nixpkgs}/pkgs/top-level/release-lib.nix" {
    inherit supportedSystems;
    nixpkgsArgs = {
      config = {
        allowUnfree = false;
        inHydra = true;
        overlays = [ (import "${nixexprs}/overlay.nix") ];
      };
      crossSystem = (import nixpkgs {}).lib.systems.examples.${crossSystem};
    };
  };
}
