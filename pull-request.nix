{ nixpkgs
, supportedSystems ? [ "x86_64-linux", "x86_64-darwin" ]
, pullRequestPackages ? {}
}:

with import <nixpkgs/pkgs/top-level/release-lib.nix> { inherit supportedSystems; };

(mapTestOn pullRequestPackages)
