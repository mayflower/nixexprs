{pkgs ? import <nixpkgs> {
    inherit system;
  }, system ? builtins.currentSystem, noDev ? true}:

let
  composerEnv = import ./composer-env.nix {
    inherit (pkgs) php phpPackages;
    inherit (pkgs) stdenv lib writeTextFile fetchurl unzip;
  };
in
import ./php-packages.nix {
  inherit composerEnv noDev;
  inherit (pkgs) fetchFromGitHub fetchurl fetchgit fetchhg fetchsvn;
}
