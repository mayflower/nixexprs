{ nixpkgs ? <nixpkgs> }:
(import nixpkgs {
  overlays = [ (import ./overlay.nix) ];
}).pkgs
