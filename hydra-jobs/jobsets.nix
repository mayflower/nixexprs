{ nixpkgs ? <nixpkgs>, declInput ? {} }:

let
  pkgs = import nixpkgs {};
  defaultSettings = {
    enabled = "1";
    hidden = false;
    description = "";
    nixexprinput = "nixexprs";
    nixexprpath = "hydra-jobs/default.nix";
    keepnr = 1;
    schedulingshares = 42;
    checkinterval = 300;
    type = 0;
    inputs = {
      nixpkgs = {
        type = "git";
        value = "git://github.com/mayflower/nixpkgs";
        emailresponsible = false;
      };
      nixexprs = {
        type = "git";
        value = "git://github.com/mayflower/nixexprs";
        emailresponsible = false;
      };
      supportedSystems = {
        type = "nix";
        value = ''[ "x86_64-linux" ]'';
        emailresponsible = false;
      };
    };
    enableemail = true;
    emailoverride = "devnull+hydra@mayflower.de";
  };
  jobsets = with pkgs.lib; mapAttrs (name: settings: recursiveUpdate defaultSettings settings) (rec {
    bootstrap-tools = {
      keepnr = 2;
      nixexprinput = "nixpkgs";
      nixexprpath = "pkgs/stdenv/linux/make-bootstrap-tools.nix";
    };
    hydra-jobs-stable = {
      keepnr = 3;
      schedulingshares = 420;
    };
    hydra-jobs-next = recursiveUpdate hydra-jobs-stable {
      inputs.nixpkgs.value = "${defaultSettings.inputs.nixpkgs.value} mf-next";
      inputs.nixexprs.value = "${defaultSettings.inputs.nixexprs.value} mf-next";
    };
    hydra-jobs-arm-cross = {
      #inputs.nixpkgs.value = "${defaultSettings.inputs.nixpkgs.value} mf-cross";
      nixexprpath = "hydra-jobs/arm-cross.nix";
      schedulingshares = 5;
    };
    nixos-small-stable = {
      nixexprinput = "nixpkgs";
      nixexprpath = "nixos/release-small.nix";
    };
    docs.nixexprpath = "hydra-jobs/docs.nix";
  });
in {
  jobsets = pkgs.writeText "spec.json" (builtins.toJSON jobsets);
}
