{ config, lib, pkgs, ... }:
let cfg = config.mayflower; in {
  options.mayflower.use-run-nixpkgs = (lib.mkEnableOption "setting NIX_PATH to nixpkgs=/run/nixpkgs") // {default = true;};
  options.mayflower.copy-nixpkgs = lib.mkEnableOption "including nixpkgs used for evaluation in system closure";
  config = {
    nix.nixPath = lib.mkIf (cfg.use-run-nixpkgs) (lib.mkForce [ "nixpkgs=/run/nixpkgs" ]);

    systemd.tmpfiles.rules = lib.mkIf (cfg.copy-nixpkgs) [
      "L+ /run/nixpkgs - - - - ${builtins.path {
        path = pkgs.path;
        filter = lib.cleanSourceFilter;
        name = "nixpkgs-${lib.version}";
      }}"
    ];
  };
}
