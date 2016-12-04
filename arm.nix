{ nixpkgs
, supportedSystems ? [ "armv7l-linux" ]
}:

with import <nixpkgs/pkgs/top-level/release-lib.nix> { inherit supportedSystems; };

(mapTestOn {
  coreutils = all;
  ed = all;
  inetutils = all;
  nixUnstable = all;
  nix = all;
  patch = all;
  vim = all;
  tmux = all;
  screen = all;
  unzip = all;
  hdparm = all;
  ddrescue = all;
  git = all;
  w3m = all;
  lynx = all;
  patchelf = all;
  binutils = all;
  mpg123 = all;
})
