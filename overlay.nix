self: super:

{
  python310 = super.python310.override { packageOverrides = import ./pkgs/python-packages.nix; };

  mailmanPackages = super.mailmanPackages.extend (_: mailmanSuper: {
    postorius = mailmanSuper.postorius.overrideAttrs ({ patches ? [], ... }: {
      patches = patches ++ [
        ./pkgs/postorius_users_can_create_lists.patch
      ];
    });

    python3 = mailmanSuper.python3.override {
      overlay = pythonSelf: pythonSuper: {
        django-allauth = pythonSuper.django-allauth.overridePythonAttrs ({ patches ? [], ... }: {
          # patch is minimally-invasive on purpose, so tests aren't touched in there.
          doCheck = false;
          patches = patches ++ [
            ./pkgs/python/django-allauth/0001-Automatically-link-social-login-users-against-existi.patch
            ./pkgs/python/django-allauth/0002-Implement-superuser-to-oidc-mapping-similar-to-the-a.patch
            ./pkgs/python/django-allauth/0003-Prohibit-authentication-against-local-users.patch
          ];
        });
      };
    };
  });

  cachet = super.callPackage pkgs/cachet {};
  hagrid = super.callPackage pkgs/hagrid {};
  matrix-alertmanager = super.callPackage pkgs/matrix-alertmanager { };
  serviceOverview = super.callPackage pkgs/service-overview { };
  simplesamlphp = super.callPackage pkgs/simplesamlphp { };
  simplesamlphp-module-privacyidea = super.callPackage pkgs/simplesamlphp/module-privacyidea.nix { };

  # `libxcrypt` is a dependency pretty high up in the tree. So it's hard to determine
  # from where the version comes that dovecot gets linked against (i.e. if you add `libxcrypt-legacy`
  # to `buildInputs` it's not sufficient for instance).
  # Also, patching out every possible occurrence is pretty error-prone if internal structures
  # of nixpkgs change. So instead, it's way simpler (implementation-wise, not for our Hydra)
  # to just instantiate a new nixpkgs with `libxcrypt` supporting weak hashes.
  #
  # Rather than investing more energy into a potentially nicer workaround, we should fix
  # the unterlying problem instead anyways.
  dovecot = (import self.path {
    inherit (self.stdenv) system;
    overlays = [
      (_: _: { libxcrypt = self.libxcrypt-legacy; })
    ];
  }).dovecot.override {
    withPgSQL = true;
  };
  postfix = super.postfix.override { withPgSQL = true; };

  bitwarden_rs = super.bitwarden_rs.overrideAttrs (oldAttrs: {
    postPatch = (oldAttrs.postPatch or "") + ''
      substituteInPlace src/api/admin.rs --replace \
        'let org_name = "bitwarden_rs";' \
        'let org_name = "Mayflower GmbH";'
    '';
  });

  # https://github.com/prometheus/node_exporter/issues/2849
  prometheus-node-exporter = let
    version = "unstable-20240201";
    src = super.fetchFromGitHub {
      rev = "57de74a5f63feb222d4506afd2e8f384247fc51a";
      owner = "prometheus";
      repo = "node_exporter";
      sha256 = "sha256-4Zed9joc2JfMwkQoxk32hWuPa6L6OzQfx8IcyUKh+dE=";
    };
  in (super.prometheus-node-exporter.override {
    buildGoModule = args: super.buildGoModule.override {} (args // {
      inherit src version;
      vendorHash = "sha256-HIDfRaDoI2lrY7ru43mSipCTabLCasS77l0P6d5ltko=";
    });
  });

  prometheus-snmp-exporter = let
    version = "0.24.1";
    src = super.fetchFromGitHub {
      owner = "prometheus";
      repo = "snmp_exporter";
      rev = "v${version}";
      sha256 = "sha256-DFphnztS3JX5xmoKB3VVzAP26d9PeCFWyDHHs2Yi+gA=";
    };
  in (super.prometheus-snmp-exporter.override {
    buildGoModule = args: super.buildGoModule.override {} (args // {
      inherit src version;
      vendorHash = "sha256-tf+FIc39a5J05LHCEHs17rkwPdc0SujNm8OV7hsfK3U=";
    });
  });

  prometheus-snmp-exporter-generator = super.callPackage ./pkgs/prometheus-snmp-exporter-generator.nix {
    prometheus-snmp-exporter = self.prometheus-snmp-exporter;
  };

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

  privacyidea = super.privacyidea.overrideAttrs ({disabledTests ? [], patches ? [], ...}: {
    disabledTests = disabledTests ++ [ "test_03_check_subscription" ];
    patches = patches ++ [
      ./pkgs/privacyidea/0001-remove-subscription-check.patch
      ./pkgs/privacyidea/add-description.patch
    ];
  });

  nixosTests = super.nixosTests // {
    wireguard-star = self.callPackage ./tests/wireguard-star.nix { };
  };
}
