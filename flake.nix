{
  description = "Mayflower-opinionated Nix modules, overlay and Hydra Configuration";
  outputs = { ... }: {
    overlay = import ./overlay.nix;
    nixosModules = let
      inherit (builtins) listToAttrs head match elemAt split;
      mkModuleName = x:
        let
          strippedExt = baseNameOf (head (match "(.*)\\.nix$" x));
          dirname = baseNameOf (dirOf x);
        in "mf-${if strippedExt == "default" then dirname else strippedExt}";
    in
    listToAttrs
      (map (x: {
        name = mkModuleName (toString x);
        value.imports = [ x ];
      }) (import ./module-list.nix));
  };
}
