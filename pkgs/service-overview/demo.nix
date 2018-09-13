# build with `nix-build demo.nix`
# then open `result/index.html` in your browser

with import <nixpkgs> {};

callPackage ./default.nix {
  services =  {
    "Example Service" = {
      description = "very fancy service";
      status="alpha";
      address="http://localhost:2342";
    };
    OtherService = {
      description = "some other fancy service";
      status="beta";
      address="https://domain.tld";
    };
  };
}
