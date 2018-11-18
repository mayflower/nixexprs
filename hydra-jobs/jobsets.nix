{ nixpkgs ? <nixpkgs>, declInput ? {} }:

let
  pkgs = import nixpkgs {};
  defaultSettings = {
    enabled = "1";
    hidden = false;
    description = "";
    input = "nixexprs";
    path = "hydra-jobs/default.nix";
    keep = 1;
    shares = 42;
    interval = 300;
    inputs = {
      nixpkgs = {
        type = "git";
        value = "git://github.com/mayflower/nixpkgs";
      };
      nixexprs = {
        type = "git";
        value = "git://github.com/mayflower/nixexprs";
      };
      supportedSystems = {
        type = "nix";
        value = ''[ \"x86_64-linux\" ]'';
      };
    };
    mail = true;
    mailOverride = "devnull+hydra@mayflower.de";
  };
  jobsetsAttrs = with pkgs.lib; mapAttrs (name: settings: recursiveUpdate defaultSettings settings) (rec {
    bootstrap-tools = {
      keep = 2;
      input = "nixpkgs";
      path = "pkgs/stdenv/linux/make-bootstrap-tools.nix";
    };
    hydra = {
      input = "hydra";
      path = "release.nix";
      inputs.hydra = {
        type = "git";
        value = "git://github.com/mayflower/hydra.git";
      };
    };
    hydra-jobs-master = {
      keep = 3;
      shares = 420;
    };
    hydra-jobs-production = recursiveUpdate hydra-jobs-master {
      inputs.nixpkgs.value = "${defaultSettings.inputs.nixpkgs.value} production";
    };
    mayflower-master = {
      path = "hydra-jobs/dist.nix";
    };
    mayflower-production = {
      path = "hydra-jobs/dist.nix";
      inputs = hydra-jobs-production.inputs;
    };
    nixos-small-master = {
      input = "nixpkgs";
      path = "nixos/release-small.nix";
    };
    nixpkgs-manual = {
      input = "nixpkgs";
      path = "doc/default.nix";
    };
    "nixpkgs-stats"= {
      enabled = "1";
      input = "stats";
      keep = 5;
      interval = 3600;
      inputs = {
        stats = {
          type = "git";
          value = "https://git.mayflower.de/open-source/nixpkgs-stats";
        };
        nixpkgs = {
          type = "git";
          value = "git://github.com/mayflower/nixpkgs";
        };
      };
    };
    hydra-jobs-arm-cross = {
      path = "hydra-jobs/arm-cross.nix";
      shares = 5;
    };
  });
  fileContents = with pkgs.lib; ''
    cat <<EOF
    ${builtins.toXML declInput}
    EOF
    cat > $out <<EOF
    {
      ${concatStringsSep "," (mapAttrsToList (name: settings: ''
        "${name}": {
            "enabled": ${settings.enabled},
            "hidden": ${if settings.hidden then "true" else "false"},
            "description": "${settings.description}",
            "nixexprinput": "${settings.input}",
            "nixexprpath": "${settings.path}",
            "checkinterval": ${toString settings.interval},
            "schedulingshares": ${toString settings.shares},
            "enableemail": ${if settings.mail then "true" else "false"},
            "emailoverride": "${settings.mailOverride}",
            "keepnr": ${toString settings.keep},
            "inputs": {
              ${concatStringsSep "," (mapAttrsToList (inputName: inputSettings: ''
                "${inputName}": { "type": "${inputSettings.type}", "value": "${inputSettings.value}", "emailresponsible": false }
              '') settings.inputs)}
            }
        }
      '') jobsetsAttrs)}
    }
    EOF
  '';
in {
  jobsets = pkgs.runCommand "spec.json" {} fileContents;
}
