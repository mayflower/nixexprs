/* A small release file, with few packages to be built.  The aim is to reduce
   the load on Hydra when testing the `stdenv-updates' branch. */

{ nixpkgs
, supportedSystems ? [ "x86_64-linux" ]
}:

with import <nixpkgs/pkgs/top-level/release-lib.nix> { inherit supportedSystems; };

(mapTestOn (rec {
  cargo = all;
  rustPlatform.rustc = all;
  rustPlatform.rustRegistry = all;
  rustUnstable.rustc = all;
  rustUnstable.rustRegistry = all;
} ))
