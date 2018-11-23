{
  imports = [ ./modules/loomio.nix ];
  nixpkgs.overlays = [ (import ./overlay.nix) ];
  services.loomio = {
    enable = true;
    databasePassword = "hs4IesTZGTQF9se7uC/w";
    secrets.cookie = "hs4IesTZGTQF9se7uC";
    secrets.devise = "hs4IesTZGTQF9se7uC";
    domain = "10.233.1.2";
    smtp = {
      address = "mail.mayflower.de";
      domain = "mayflower.de";
      port = 25;
    };
  };
  services.postgresql = {
    enable = true;
  };
  networking.firewall.enable = false;
  services.nginx.enable = true;
  services.redis.enable = true;
}
