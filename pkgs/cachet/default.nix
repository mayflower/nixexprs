{pkgs ? import <nixpkgs> {
    inherit system;
  }, system ? builtins.currentSystem, noDev ? true}:

let
  composerEnv = import ./composer-env.nix {
    php = pkgs.php81;
    phpPackages = pkgs.php81Packages;
    inherit (pkgs) stdenv lib writeTextFile fetchurl unzip;
  };
in
import ./php-packages.nix {
  inherit composerEnv noDev;
  inherit (pkgs) fetchFromGitHub fetchurl fetchgit fetchhg fetchsvn;
}
