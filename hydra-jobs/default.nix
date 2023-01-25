{ nixpkgs ? <nixpkgs>
, nixexprs ? <nixexprs>
, supportedSystems ? [ "x86_64-linux" ]
}:

import ./packages.nix {
  inherit nixpkgs;
  releaseLib = import "${nixpkgs}/pkgs/top-level/release-lib.nix" {
    inherit supportedSystems;
    nixpkgsArgs = {
      config = {
        allowUnfree = false;

        # As soon as something is redistributable, it's legally OK to - well - redistribute
        # it in our binary cache. Nixpkgs is stricter here because of political reasons,
        # i.e. everything that's not approved as free by e.g. OSI won't be
        # redistributed with only a *few* exceptions such as firmware code.
        #
        # However, we want mongodb to be built by our Hydra.
        allowUnfreePredicate = { meta ? {}, ... }:
          let
            license = meta.license or {};
          in
          ((builtins.isAttrs license) && (license.redistributable or false));

        inHydra = true;

        permittedInsecurePackages = [
          "python2.7-pyjwt-1.7.1" # nixops-1.7
          "python2.7-certifi-2021.10.8" # nixops-1.7
        ];
      };
      overlays = [ (import "${nixexprs}/overlay.nix") ];
    };
  };
}
