{
  imports = [ ./modules/loomio.nix ];
  nixpkgs.overlays = [ (import ./overlay.nix) ];
  services.loomio = {
    enable = true;
    databasePassword = "hs4IesTZGTQF9se7uC/w";
    secret = "hs4IesTZGTQF9se7uC";
    domain = "10.233.1.2";
    smtp = {
      address = "mail.mayflower.de";
      username = "loomio";
      password = "NZyD0JwBSWq8idok"; # not really :)
    };
  };
  services.postgresql = {
    enable = true;
  };
  networking.firewall.enable = false;
  services.nginx.enable = true;
  services.redis.enable = true;
}
