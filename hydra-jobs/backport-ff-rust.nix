/* A small release file, with few packages to be built.  The aim is to reduce
   the load on Hydra when testing the `stdenv-updates' branch. */

{ nixpkgs
, supportedSystems ? [ "x86_64-linux" "x86_64-darwin" ]
}:

with import <nixpkgs/pkgs/top-level/release-lib.nix> { inherit supportedSystems; };

(mapTestOn (rec {
  cargo = all;
  rustc = all;

  cargo-edit = all;
  rainicorn = all;
  rustfmt = all;
  rustracer = all;
  rust-bindgen = all;
  rustup = all;

  altcoins.ethabi = all;
  altcoins.ethrun = all;
  altcoins.zcash = all;
  alacritty = all;
  habitat = all;
  cfdyndns = all;
  pijul = all;
  way-cooler = all;
  wtftw = all;
  loc = all;
  clog-cli = all;
  git-series = all;
  tokei = all;
  rq = all;
  tw-rs = all;
  ion = all;
  intecture-agent = all;
  intecture-auth = all;
  intecture-cli = all;
  btrfs-dedupe = all;
  exa = all;
  fd = all;
  heatseeker = all;
  nix-index = all;
  ripgrep = all;
  staccato = all;
  xsv = all;
  tectonic = all;
  
  firefox = all;
  firefox-esr = all;
  tor-browser-unwrapped = all;
} ))
