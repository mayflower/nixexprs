{ lib, config, ... }:

with lib;

{
  options = {
    mayflower.machines = mkOption {
      type = types.attrs;
      default = {};
      description = "Machines in the deployment";
    };
  };
}
