{ nixpkgs ? <nixpkgs>
, nixexprs ? <nixexprs>
, system ? builtins.currentSystem
}:
let
  nixosManual = (import (nixpkgs + "/nixos/lib/eval-config.nix") {
    inherit system;
    modules = [({ lib, ... }: {
      config.documentation.nixos.includeAllModules = true;
      config.documentation.nixos.enable = lib.mkForce true;
      config.documentation.nixos.options.warningsAreErrors = false;
    })];
    baseModules = import (nixpkgs + "/nixos/modules/module-list.nix");
    extraModules = import (nixexprs + "/module-list.nix");
  }).config.system.build.manual;
in {
  inherit (nixosManual) manual manualEpub manualHTML optionsDocBook optionsJSON manpages;
  nixpkgsManual = import (nixpkgs + "/doc/default.nix") {};
}
