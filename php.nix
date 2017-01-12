/* A small release file, with few packages to be built.  The aim is to reduce
   the load on Hydra when testing the `stdenv-updates' branch. */

{ nixpkgs
, supportedSystems ? [ "x86_64-linux" ]
}:

with import <nixpkgs/pkgs/top-level/release-lib.nix> { inherit supportedSystems; };

(mapTestOn (rec {
  php56 = all;
  php70 = all;
  php71 = all;
  phpPackages.composer = all;
} ))
