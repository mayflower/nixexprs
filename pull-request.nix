{ nixpkgs
, supportedSystems ? [ "x86_64-linux" "x86_64-darwin" ]
, pullRequestPackages ? []
}:

with import <nixpkgs/pkgs/top-level/release-lib.nix> { inherit supportedSystems; };
let
  pkgs = import nixpkgs {};
  lib = pkgs.lib;

  /*
   makeAttrs ["qt58.qtbase" "qcachegrind"]
     => {qt58 = {qtbase = all}; qcachegrind = all;}
  */
  makeAttrs = paths: (map (p: lib.setAttrByPath (lib.splitString "." p) all) paths);
  packages = lib.foldl (a: b: a // b) {} (makeAttrs pullRequestPackages);
in
(mapTestOn packages)
