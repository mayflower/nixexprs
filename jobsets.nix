{ nixpkgs ? <nixpkgs>, declInput ? {} }:

let
  pkgs = import nixpkgs {};
  defaultSettings = {
    enabled = true;
    hidden = false;
    description = "";
    input = "jobs";
    path = "default.nix";
    keep = 1;
    shares = 42;
    interval = 60;
    inputs = {
      jobs = {
        type = "git";
        value = "git://github.com/mayflower/hydra-jobs";
      };
      nixpkgs = {
        type = "git";
        value = "git://github.com/mayflower/nixkpgs";
      };
      supportedSystems = {
        type = "nix";
        value = ''[ \"x86_64-linux\" \"x86_64-darwin\" ]'';
      };
    };
    mail = true;
    mailOverride = "devnull+hydra@mayflower.de";
  };
  jobsetsAttrs = with pkgs.lib; mapAttrs (name: settings: defaultSettings // settings) (rec {
    bootstrap-tools = {
      keep = 2;
      input = "nixpkgs";
      path = "pkgs/stdenv/linux/make-bootstrap-tools.nix";
    };
    hydra-jobs = {
      keep = 3;
      shares = 420;
    };
    hydra-jobs-production = hydra-jobs // {
      inputs = defaultSettings.inputs // {
        nixpkgs = defaultSettings.inputs.nixpkgs // {
          value = "${defaultSettings.inputs.nixpkgs.value} production";
        };
      };
    };
    mayflower-master = {
      path = "dist.nix";
    };
    mayflower-production = {
      path = "dist.nix";
      inputs = hydra-jobs-production.inputs;
      keep = 2;
    };
    php = {
      path = "jobs.nix";
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
            "enabled": ${if settings.enabled then "1" else "0"},
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
                "${inputName}": { "type": "${inputSettings.type}", "value": "${inputSettings.value}", "emailresponsible": false },
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
