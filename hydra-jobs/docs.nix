{ nixpkgs ? <nixpkgs>
, nixexprs ? <nixexprs>
, system ? builtins.currentSystem
}:
{
  nixosManual = (import (nixpkgs + "/nixos/lib/eval-config.nix") {
    inherit system;
    modules = [({ lib, ... }: {
      documentation.nixos.enable = lib.mkForce true;
    })];
    baseModules = import (nixpkgs + "/nixos/modules/module-list.nix") ++ import (nixexprs + "/module-list.nix");
  }).config.system.build.manual;

  nixpkgsManual = import (nixpkgs + "/doc/default.nix") {};
}
