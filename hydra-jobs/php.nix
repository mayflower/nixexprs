/* A small release file, with few packages to be built.  The aim is to reduce
   the load on Hydra when testing the `stdenv-updates' branch. */

{ nixpkgs
, supportedSystems ? [ "x86_64-linux" "x86_64-darwin" ]
}:

with import <nixpkgs/pkgs/top-level/release-lib.nix> { inherit supportedSystems; };

(mapTestOn (rec {
  hhvm = all;
  php56 = all;
  php70 = all;
  php71 = all;
  php56Packages = {
    apcu = all;
    imagick = all;
    memcached = all;
    phpcs = all;
    redis = all;
    xdebug = all;
  };
  php70Packages = {
    apcu = all;
    imagick = all;
    memcached = all;
    phpcs = all;
    redis = all;
    xdebug = all;
  };
  php71Packages = {
    apcu = all;
    imagick = all;
    memcached = all;
    phpcs = all;
    redis = all;
    xdebug = all;
  };
} ))
