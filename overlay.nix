self: super:

{
  python3 = super.python3.override { packageOverrides = import ./pkgs/python-packages.nix; };
  python35 = super.python35.override { packageOverrides = import ./pkgs/python-packages.nix; };
  python36 = super.python36.override { packageOverrides = import ./pkgs/python-packages.nix; };
  python2 = super.python2.override { packageOverrides = import ./pkgs/python-packages.nix; };
  python = super.python.override { packageOverrides = import ./pkgs/python-packages.nix; };

  cachet = super.callPackage pkgs/cachet {};
  mailman3 = super.callPackage pkgs/mailman { };
  matrix-alertmanager = super.callPackage pkgs/matrix-alertmanager { };
  hyperkitty = super.callPackage pkgs/mailman/hyperkitty.nix { };
  postorius = super.callPackage pkgs/mailman/postorius.nix { };
  serviceOverview = super.callPackage pkgs/service-overview { };
  simplesamlphp = super.callPackage pkgs/simplesamlphp { };
  simplesamlphp-module-privacyidea = super.callPackage pkgs/simplesamlphp/module-privacyidea.nix { };

  dovecot = super.dovecot.override { withPgSQL = true; };
  postfix = super.postfix.override { withPgSQL = true; };
  freeradius = super.freeradius.override { withJson = true; withRest = true; };

  bitwarden_rs = super.bitwarden_rs.overrideAttrs (oldAttrs: {
    postPatch = (oldAttrs.postPatch or "") + ''
      substituteInPlace src/api/admin.rs --replace \
        'let org_name = "bitwarden_rs";' \
        'let org_name = "Mayflower GmbH";'
    '';
  });

  grafana-loki = super.grafana-loki.overrideAttrs (oldAttrs: {
    nativeBuildInputs = oldAttrs.nativeBuildInputs ++ [ super.makeWrapper ];
    buildInputs = oldAttrs.buildInputs ++ [ super.systemd.dev ];
    src = super.fetchFromGitHub {
      rev = "3d5319e72afb8008e1ed75432af4212fc7e5be47";
      owner = "grafana";
      repo = "loki";
      sha256 = "1pdq4lf4v9rnsvdippb9bh1nsp8rjcv7yq709n3kx6az9v4wmkdh";
    };
    preFixup = oldAttrs.preFixup + ''
      wrapProgram $bin/bin/promtail \
        --prefix LD_LIBRARY_PATH : "${super.systemd.lib}/lib"
    '';
  });

  defaultGemConfig = super.defaultGemConfig // {
    oxidized = (attrs: rec {
      tplinkPatch = (super.fetchpatch {
        url = https://patch-diff.githubusercontent.com/raw/ytti/oxidized/pull/1443.diff;
        sha256 = "09dyf1hnxgdxfkh9l6y63qmm1ds5wgb2d52vvrwwc0s4gl0b1yad";
      });
      postInstall = ''
        patch -p1 -d $(cat $out/nix-support/gem-meta/install-path) -i ${tplinkPatch}
      '';
    });
  };

  mxisd = super.runCommandNoCC "override-mxisd" {
    preferLocalBuild = true;
  } ''
    mkdir -p $out/bin
    ln -vs ${super.ma1sd}/bin/ma1sd $out/bin/mxisd
  '';

  inherit (import (builtins.fetchTarball {
    # 2019-12-12
    url = "https://github.com/nixos/nixpkgs/archive/d2eba63b317f2112260b50bb3f61aa4b879e9041.tar.gz";
    sha256 = "02h927vivzc1g4qkyyjw8xdxinfzc7l065qqljkz9r9g0frh8xkp";
  }) {}) matrix-appservice-slack;
}
