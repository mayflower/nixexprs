{
  inputs = {};
  outputs = {
    overlay = import ./overlay.nix;
    nixosModules = import ./module-list.nix;
  };
}
