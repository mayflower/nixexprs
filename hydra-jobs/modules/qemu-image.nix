{ config, lib, pkgs, ... }:

with lib;

{
  imports =
    [ <nixpkgs/nixos/modules/installer/cd-dvd/channel.nix> ];

  system.build.qemuImage = import <nixpkgs/nixos/lib/make-disk-image.nix> {
    inherit lib config pkgs;
    diskSize = 2048;
    format = "raw";
    postVM = ''
      xz -T $NIX_BUILD_CORES -v -1 --stdout $diskImage > $diskImage.xz
      rm -f $diskImage
    '';
    configFile = pkgs.writeText "configuration.nix" ''
      throw "nixos-rebuild is not supported with this VM image!"
    '';
  };

}
