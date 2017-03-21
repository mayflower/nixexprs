{ nixpkgs
, supportedSystems ? [ "x86_64-linux" "x86_64-darwin" ]
, pullRequestPackages ? []
}:

with import <nixpkgs/pkgs/top-level/release-lib.nix> { inherit supportedSystems; };
let
  pkgs = import nixpkgs {};

  /*
   makeAttrs ["qt58.qtbase" "qcachegrind"]
     => {qt58.qtbase = all; qcachegrind = all;}
  */
  makeAttrs = with pkgs; paths: (map (p: lib.setAttrByPath (lib.splitString "." p) all) paths);
  packages = with pkgs; lib.foldl (a: b: a // b) {} (makeAttrs pullRequestPackages);
in
(mapTestOn packages)
