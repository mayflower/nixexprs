{ nixpkgs ? <nixpkgs>, declInput ? {} }:

let
  pkgs = import nixpkgs {};
  inherit (pkgs) lib;
  defaultSettings = {
    enabled = "1";
    hidden = false;
    description = "";
    nixexprinput = "nixexprs";
    keepnr = 1;
    schedulingshares = 42;
    checkinterval = 300;
    type = 0;
    inputs = {
      nixpkgs = {
        type = "git";
        value = "https://github.com/mayflower/nixpkgs mf-stable";
        emailresponsible = false;
      };
      nixexprs = {
        type = "git";
        value = "https://github.com/mayflower/nixexprs master";
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

  jobsets = lib.mapAttrs (name: settings: lib.recursiveUpdate defaultSettings settings) ({
    bootstrap-tools = {
      keepnr = 2;
      nixexprinput = "nixpkgs";
      nixexprpath = "pkgs/stdenv/linux/make-bootstrap-tools.nix";
    };
    hydra-jobs = {
      nixexprpath = "hydra-jobs/default.nix";
      keepnr = 3;
      schedulingshares = 420;
    };
    nixos-small = {
      nixexprinput = "nixpkgs";
      nixexprpath = "nixos/release-small.nix";
      inputs.supportedSystems.value = ''[ "x86_64-linux" ]'';
    };
    docs = {
      nixexprpath = "hydra-jobs/docs.nix";
    };
    #hydra-jobs-arm-cross = {
    #  nixexprpath = "hydra-jobs/arm-cross.nix";
    #  schedulingshares = 5;
    #};
  });

  jobsets-next = lib.mapAttrs' (name: value: {
    name = "next-${name}";
    value = lib.recursiveUpdate value {
      inputs.nixpkgs.value = "https://github.com/mayflower/nixpkgs mf-next";
      inputs.nixexprs.value = "https://github.com/mayflower/nixexprs mf-next";
    };
  }) jobsets;

  jobsets-structured-attrs = lib.mapAttrs' (name: value: {
    name = "structured-attrs-${name}";
    value = lib.recursiveUpdate value {
      inputs.nixpkgs.value = "https://github.com/mayflower/nixpkgs structured-attrs-v2";
    };
  }) jobsets;
in {
  jobsets = pkgs.writeText "spec.json" (builtins.toJSON (jobsets // jobsets-next // jobsets-structured-attrs));
}
