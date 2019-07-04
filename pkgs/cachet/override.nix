{pkgs ? import <nixpkgs> {
  inherit system;
}, system ? builtins.currentSystem}:

let
  phpPackage = import ./default.nix {
    inherit pkgs system;
    noDev = true; # Disable development dependencies
  };
in
phpPackage.override {
  removeComposerArtifacts = true; # Remove composer configuration files
}
