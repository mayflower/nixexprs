{ testers, ... }:

let
  inherit (testers) nixosTest;
  keypairs = {
    peer0 = {
      private = "QBgNpLmX0D6mFItuXb5HiD76fCAYGO19gee925xYhXs=";
      public = "ulMFud03eE41dGmK7c7tU90LFQ9zv5e0ebLLGzX+7xA=";
    };
    peer1 = {
      private = "gFWHdy/GegWlN0OoAa/v46g1C2DnR3WBcYlMmaapOVY=";
      public = "jbXTjY7xhchg7pW1QM2lOUywxTWEyZzfooCQCUmas10=";
    };
    container0 = {
      private = "ECmlWBOsunu1xHfDTh55hjhrtEK1VAuenOGmgjYkEFw=";
      public = "qVJWZiRm+IWjicx+uxVxUsQq8FwgG39NKrXXEG7G6iA=";
    };
  };
  base = {
    imports = [ ../modules/wireguard.nix ];
    networking.useNetworkd = true;
    mayflower.wireguard = {
      enable = true;
      star.test.enable = true;
    };
  };
in nixosTest {
  name = "wireguard-star";
  nodes = {
    peer0 = { nodes, pkgs, ... }: {
      virtualisation.vlans = [ 1 ];
      imports = [ base ];
      networking.useNetworkd = true;
      mayflower.wireguard.star.test = {
        isServer = true;
        wireguard = {
          tunnelIPv4Address = "10.99.0.1";
          tunnelIPv6Address = "fc00::99:1";
          publicKey = keypairs.peer0.public;
          privateKeyFile = "${pkgs.writeText "supersecret" keypairs.peer0.private}";
          endpoint = {
            hostname = "192.168.1.1";
            listenPort = 23542;
          };
        };
      };
    };
    peer1 = { nodes, pkgs, inputs, ... }: {
      virtualisation.vlans = [ 1 ];
      imports = [ base ];
      mayflower.wireguard.star.test.wireguard = {
        tunnelIPv4Address = "10.99.0.2";
        tunnelIPv6Address = "fc00::99:2";
        publicKey = keypairs.peer1.public;
        privateKeyFile = "${pkgs.writeText "supersecret" keypairs.peer1.private}";
      };
      networking.firewall.extraCommands = ''
        ip46tables -P FORWARD DROP
        ip46tables -F FORWARD
        ip46tables -A FORWARD -i ve-+ -m comment --comment "outgoing traffic from container0" -j ACCEPT
        ip46tables -A FORWARD -o ve-+ -m conntrack --ctstate RELATED,ESTABLISHED -m comment --comment "return traffic to container0" -j ACCEPT
        ip46tables -t nat -F POSTROUTING
        ip46tables -t nat -A POSTROUTING -o eth1 -j MASQUERADE
      '';
      containers.container0 = {
        autoStart = true;
        privateNetwork = true;
        hostAddress = "172.29.23.1";
        hostAddress6 =  "fc23::23:1";
        localAddress = "172.29.23.10";
        localAddress6 = "fc23::23:10";
        config = { config, lib, ... }: {
          _module.args = { nodes = with lib; mapAttrs (const (config: { inherit config; })) nodes; };
          imports = [ base ];
          services.resolved.enable = false;
          mayflower.wireguard.star.test.wireguard = {
            tunnelIPv4Address = "10.99.0.3";
            tunnelIPv6Address = "fc00::99:3";
            publicKey = keypairs.container0.public;
            privateKeyFile = "${pkgs.writeText "supersecret" keypairs.container0.private}";
          };
        };
      };
    };
  };
  testScript = let
    runInContainer = container: command: "systemd-run -M ${container} --pty -- /bin/sh --login -c '${command}' >&2";
  in ''
    start_all()

    peer0.wait_for_unit("multi-user.target")
    peer1.wait_for_unit("multi-user.target")

    with subtest("Basic connectivity"):
        peer0.wait_until_succeeds("ping -c4 >&2 192.168.1.1")
        peer0.wait_until_succeeds("ping -c4 >&2 192.168.1.2")
        peer1.wait_until_succeeds("ping -c4 >&2 192.168.1.1")
        peer1.wait_until_succeeds("ping -c4 >&2 192.168.1.2")

    with subtest("Container connectivity"):
        peer1.succeed("${runInContainer "container0" "ping -c4 172.29.23.10"}")
        peer1.succeed("${runInContainer "container0" "ping -c4 172.29.23.1"}")
        peer1.succeed("${runInContainer "container0" "ping -c4 192.168.1.2"}")
        peer1.succeed("${runInContainer "container0" "ping -c4 192.168.1.1"}")

    with subtest("WireGuard traffic between peers"):
        peer0.wait_until_succeeds("ping -c4 >&2 10.99.0.1")
        peer0.wait_until_succeeds("ping -c4 >&2 10.99.0.2")
        peer1.wait_until_succeeds("ping -c4 >&2 10.99.0.2")
        peer1.wait_until_succeeds("ping -c4 >&2 10.99.0.1")
        peer1.wait_until_succeeds("ping -c4 >&2 fc00::99:2")
        peer1.wait_until_succeeds("ping -c4 >&2 fc00::99:1")
        peer0.wait_until_succeeds("ping -c4 >&2 fc00::99:1")
        peer0.wait_until_succeeds("ping -c4 >&2 fc00::99:2")

    with subtest("WireGuard traffic from/to container"):
        peer1.succeed("${runInContainer "container0" "ping -c4 >&2 10.99.0.1"}")
        peer1.succeed("${runInContainer "container0" "ping -c4 >&2 fc00::99:1"}")

    with subtest("/etc/hosts is configured correctly"):
        peer1.succeed("ping -c4 test-server >&2")
        peer1.succeed("${runInContainer "container0" "ping -c4 test-server >&2"}")

    peer0.shutdown()
    peer1.shutdown()
  '';
}
