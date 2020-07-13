{ config, lib, pkgs, ... }:

with lib;

let

  cfg = config.mayflower.openldap-ha;

  clusterName = cfg.clusterName;

  allMachines = config.mayflower.machines;

  allMachinesSameCluster = flip filterAttrs allMachines (n: v: clusterName == v.mayflower.openldap-ha.clusterName &&
    v.deployment.targetHost != config.deployment.targetHost);

in {
  options = {
    mayflower.openldap-ha = {
      clusterName = mkOption {
        type = types.nullOr types.str;
        default = null;
        description = ''
          Cluster name this machine is part of
        '';
      };
      nodeAddress = mkOption {
        type = types.str;
        description = ''
          Address of this node other nodes should connect to. Defaults to deployment.targetHost address
        '';
      };
      listenPort = mkOption {
        type = types.int;
        default = 1389;
        description = ''
          Port on which openldap is listening on this node
        '';
      };
      searchBase = mkOption {
        type = types.str;
        description = ''
          LDAP tree base from which synchronisation should be done
        '';
      };
      binddn = mkOption {
        type = types.str;
        description = ''
          The user a consumer should connect as
        '';
      };
      syncCredentials = mkOption {
        type = types.str;
        description = ''
          Credentials for the consumer user
        '';
      };
      serverId = mkOption {
        type = types.int;
        description = ''
          ServerId of this node
        '';
      };
    };
  };

  config = mkIf (clusterName != null) {
    mayflower.openldap-ha.nodeAddress = lib.mkDefault config.deployment.targetHost;
    services = {
      openldap = {
        extraConfig = ''
          serverID ${toString cfg.serverId}
          moduleload syncprov.la
        '';
        extraDatabaseConfig = ''
          overlay syncprov
        '' + (concatStrings (flip mapAttrsToList allMachinesSameCluster (machine: cnf:
          let
            peerHAConfig = cnf.mayflower.openldap-ha;
          in
            ''
              syncrepl rid=${toString peerHAConfig.serverId}
                provider=ldap://${peerHAConfig.nodeAddress}:${toString peerHAConfig.listenPort}/
                type=refreshAndPersist
                searchbase=${peerHAConfig.searchBase}
                filter="(objectClass=*)"
                scope=sub
                retry="3 +"
                bindmethod=simple
                binddn="${peerHAConfig.binddn}"
                credentials=${peerHAConfig.syncCredentials}
            ''
        ))) + ''
          mirrormode on
        '';
      };
    };
    networking.firewall.allowedTCPPorts = [ cfg.listenPort ];
  };
}
