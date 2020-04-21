{ config, lib, pkgs, ... }:
with lib;
{
  options = {
    mayflower.kvm.enable = mkOption {
      type = types.bool;
      default = false;
    };
  };

  config = mkIf config.mayflower.kvm.enable (mkMerge [
    { hardware.enableAllFirmware = false;

      boot.loader.grub.enable = true;
      boot.loader.grub.device = "/dev/vda";
      boot.initrd.availableKernelModules = [ "ata_piix" "uhci_hcd" ];

      fileSystems."/" = {
        device = "/dev/disk/by-label/nixos";
        fsType = lib.mkDefault "ext4";
      };
    }
    ((import <nixpkgs/nixos/modules/profiles/qemu-guest.nix>) { inherit config pkgs lib; })
  ]);
}
