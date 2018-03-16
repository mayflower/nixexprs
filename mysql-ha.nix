{ config, lib, pkgs, ... }:

with lib;

let

  cfg = config.mayflower.mysql-ha;

  clusterName = cfg.clusterName;

  allMachines = config.mayflower.machines;

  allMachinesSameCluster = flip filterAttrs allMachines (n: v: clusterName == v.mayflower.openldap-ha.clusterName &&
    v.deployment.targetHost != config.deployment.targetHost);

in {
  options = {
    mayflower.mysql-ha = {
      clusterName = mkOption {
        type = types.nullOr types.str;
        default = null;
        description = ''
          Cluster name this machine is part of
        '';
      };
      nodeAddress = mkOption {
        type = types.str;
        default = config.deployment.targetHost;
        description = ''
          Address of this node other nodes should connect to. Defaults to deployment.targetHost address
        '';
      };
      listeningPort = mkOption {
        type = types.int;
        default = 4567;
        description = ''
          Port this node is awaiting connections
        '';
      };
      bootstrapNode = mkOption {
        type = types.bool;
        default = false;
        description = ''
          Whether this node should act as bootstrap node for the cluster
        '';
      };
      sstUserName = mkOption {
        type = types.str;
        description = ''
          Username of the sst user that needs to be present in the cluster databases
        '';
      };
      sstUserPass = mkOption {
        type = types.str;
        description = ''
          Password for the sst user
        '';
      };
    };
  };

  config = mkIf (clusterName != null) {
    services.mysql.extraOptions = ''
      binlog_format=ROW
      max_allowed_packet=256M

      wsrep_on=ON
      wsrep_provider=${pkgs.mariadb.galera}/lib/galera/libgalera_smm.so
      wsrep_cluster_name="${cfg.clusterName}"
      wsrep_cluster_address="gcomm://${concatStringsSep "," (flip mapAttrsToList allMachinesSameCluster (machine: cnf:
        "${cnf.mayflower.mysql-ha.nodeAddress}:${toString cnf.mayflower.mysql-ha.listeningPort}"
      ))}"
      wsrep_sst_method=mysqldump
      wsrep_sst_auth=${cfg.sstUserName}:${cfg.sstUserPass}

      wsrep_node_address="${cfg.nodeAddress}"
      wsrep_provider_options="gmcast.listen_addr=tcp://${cfg.nodeAddress}:${toString cfg.listeningPort}; pc.wait_prim=FALSE; pc.recovery=TRUE;"
      wsrep_node_name="${config.deployment.targetHost}"
    '';
  };
}
