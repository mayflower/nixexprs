{ lib, config, ... }:

with lib;

{
  options = {
    mayflower.machines = mkOption {
      type = types.attrs;
      default = {};
      description = mdDoc "Machines in the deployment";
    };
  };
}
