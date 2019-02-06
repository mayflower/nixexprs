{ config, lib, pkgs, ... }:

with lib;

let

  cfg = config.mayflower.wireguard-tunnel;

  tunnelName = cfg.tunnelName;

  allMachines = config.mayflower.machines;

  allMachinesSameTunnel = flip filterAttrs allMachines (n: v: (tunnelName == v.mayflower.wireguard-tunnel.tunnelName)
    && config.deployment.targetHost != v.deployment.targetHost);

in {
  options = {
    mayflower.wireguard-tunnel = {
      tunnelName = mkOption {
        type = types.nullOr types.str;
        default = null;
        description = ''
          Tunnel name this machine is part of
        '';
      };
      nodeAddress = mkOption {
        type = types.str;
        default = config.deployment.targetHost;
        description = ''
          Address of this node to which other nodes should connect to. Defaults to deployment.targetHost address
        '';
      };
      nodeIndex = mkOption {
        type = types.int;
        description = ''
          Index of this node in the tunnel.
        '';
      };
      privateKey = mkOption {
        type = types.str;
        description = ''
          Wireguard private key
        '';
      };
      publicKey = mkOption {
        type = types.str;
        description = ''
          Wireguard public key
        '';
      };
      listenPort = mkOption {
        type = types.int;
        description = ''
          Port this node is listening on
        '';
      };
      additionalAllowedIPs = mkOption {
        type = types.listOf types.str;
        default = [];
        description = ''
          Additional IPs to be set for this peer
        '';
      };
      baseV4Net = mkOption {
        type = types.str;
        default = "10.123.124";
        description = ''
          Base address of the /24 to be used in the tunnel
        '';
      };
    };
  };

  config = mkIf (tunnelName != null) {
    networking.wireguard.interfaces.${tunnelName} = {
      inherit (cfg) privateKey;
      inherit (cfg) listenPort;
      ips = [ "${cfg.baseV4Net}.${toString cfg.nodeIndex}/24" "fe80::${toString cfg.nodeIndex}/64"];
      peers = flip mapAttrsToList allMachinesSameTunnel (n: v:
        let
          peerTunnelConfig = v.mayflower.wireguard-tunnel;
        in
        { inherit (peerTunnelConfig) publicKey;
          allowedIPs = [
            "${peerTunnelConfig.baseV4Net}.${toString peerTunnelConfig.nodeIndex}/32"
            "fe80::${toString peerTunnelConfig.nodeIndex}/128"
          ] ++ peerTunnelConfig.additionalAllowedIPs;
          endpoint = "${v.deployment.targetHost}:${toString peerTunnelConfig.listenPort}";
        }
      );
    };
    networking.firewall.allowedUDPPorts = [ cfg.listenPort ];
  };
}
