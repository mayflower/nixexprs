{ nixpkgs
, supportedSystems ? [ "x86_64-linux" "x86_64-darwin" ]
, pullRequestPackages ? []
}:

with import <nixpkgs/pkgs/top-level/release-lib.nix> { inherit supportedSystems; };
let
  pkgs = import nixpkgs {};

  # makeSet  = with pkgs; name: all;

  # makePackages = with pkgs; paths: (map (x: lib.genAttrs x makeSet) paths);

  # makePaths = with pkgs; prPkgs: (map (x: ["pkgs"] ++ lib.splitString "." x) prPkgs);


  /*
   makeAttrs ["qt58.qtbase" "qcachegrind"]
     => {qt58.qtbase = all; qcachegrind = all;}
   */
  makeAttrs = with pkgs; paths: (map (p: lib.setAttrByPath (lib.splitString "." p) all) paths)
  packages = with pkgs; lib.foldl (a: b: a // b) {} (makeAttrs pullRequestPackages);

  # packages = with pkgs; lib.genAttrs pullRequestPackages makeSet;
  # packages = with pkgs; lib.

  # mapAttrByPath = with pkgs; path: attrs: lib.setAttrByPath path (lib.attrByPath path null attrs);
  # filterAttrsByPath = with pkgs; paths: attrs: lib.foldl' lib.recursiveUpdate {} (map (x: mapAttrByPath x attrs) paths);
  # filterPkgs = with pkgs; paths: pkgs: filterAttrsByPath (map (x: ["pkgs"] ++ lib.splitString "." x) paths) pkgs;

  # packages = filterPkgs pullRequestPackages;
in
(mapTestOn packages)
