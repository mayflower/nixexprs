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
        value = "git://github.com/mayflower/nixexprs mf-20.03";
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
    hydra-jobs-master = {
      keepnr = 3;
      schedulingshares = 420;
    };
    hydra-jobs-production = recursiveUpdate hydra-jobs-master {
      inputs.nixpkgs.value = "${defaultSettings.inputs.nixpkgs.value} production";
    };
    mayflower-master = {
      nixexprpath = "hydra-jobs/dist.nix";
    };
    mayflower-production = {
      nixexprpath = "hydra-jobs/dist.nix";
      inputs = hydra-jobs-production.inputs;
    };
    nixos-small-master = {
      nixexprinput = "nixpkgs";
      nixexprpath = "nixos/release-small.nix";
    };
    nixpkgs-manual = {
      nixexprinput = "nixpkgs";
      nixexprpath = "doc/default.nix";
    };
    #"nixpkgs-stats"= {
    #  enabled = "1";
    #  nixexprinput = "stats";
    #  keepnr = 5;
    #  checkinterval = 3600;
    #  inputs = {
    #    stats = {
    #      type = "git";
    #      value = "https://git.mayflower.de/open-source/nixpkgs-stats";
    #    };
    #    nixpkgs = {
    #      type = "git";
    #      value = "git://github.com/mayflower/nixpkgs";
    #    };
    #  };
    #};
    hydra-jobs-arm-cross = {
      #inputs.nixpkgs.value = "${defaultSettings.inputs.nixpkgs.value} mf-cross";
      nixexprpath = "hydra-jobs/arm-cross.nix";
      schedulingshares = 5;
    };
  });
in {
  jobsets = pkgs.writeText "spec.json" (builtins.toJSON jobsets);
}
