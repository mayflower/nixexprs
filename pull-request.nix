{ nixpkgs
, supportedSystems ? [ "x86_64-linux" "x86_64-darwin" ]
, pullRequestPackages ? []
}:

with import <nixpkgs/pkgs/top-level/release-lib.nix> { inherit supportedSystems; };
let
  pkgs = import nixpkgs {};
  makeSet  = name: all;
  packages = with pkgs; lib.genAttrs pullRequestPackages makeSet;
in
(mapTestOn packages)
