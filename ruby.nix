/* A small release file, with few packages to be built.  The aim is to reduce
   the load on Hydra when testing the `stdenv-updates' branch. */

{ nixpkgs
, supportedSystems ? [ "x86_64-linux" ]
}:

with import <nixpkgs/pkgs/top-level/release-lib.nix> { inherit supportedSystems; };

(mapTestOn (rec {
  ruby_1_9_3 = all;
  ruby_2_0_0 = all;
  ruby_2_1_0 = all;
  ruby_2_1_1 = all;
  ruby_2_1_2 = all;
  ruby_2_1_3 = all;
  ruby_2_1_6 = all;
  ruby_2_1_7 = all;
  ruby_2_2_0 = all;
  ruby_2_2_2 = all;
  ruby_2_2_3 = all;
} ))
