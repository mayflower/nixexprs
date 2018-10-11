/* A small release file, with few packages to be built.  The aim is to reduce
   the load on Hydra when testing the `stdenv-updates' branch. */

{ nixpkgs
, supportedSystems ? [ "x86_64-linux" ]
}:

with import <nixpkgs/pkgs/top-level/release-lib.nix> { inherit supportedSystems; };

(mapTestOn (rec {
  cargo = all;
  rustc = all;
  rust.rustRegistry = all;
  rustNightly.rustc = all;
  rustNightly.cargo = all;
  rustNightly.rustRegistry = all;

  heatseeker = all;
  racerRust = all;
  rustfmt = all;
  ripgrep = all;
  alacritty = all;
} ))
