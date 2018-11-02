{
  imports = [ ./modules/loomio.nix ];
  nixpkgs.overlays = [ (import ./overlay.nix) ];
  services.loomio = {
    enable = true;
    databasePassword = "hs4IesTZGTQF9se7uC/w";
    secrets.secret = "hs4IesTZGTQF9se7uC";
  };
  services.postgresql = {
    enable = true;
  };
  networking.firewall.enable = false;
  systemd.services.loomio.environment.CANONICAL_HOST = "10.233.1.2:3000";
}
