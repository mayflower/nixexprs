self: super:

{
  python3 = super.python3.override { packageOverrides = import ./pkgs/python-packages.nix; };

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
        django-mailman3 = pythonSuper.django-mailman3.overridePythonAttrs (old: {
          version = "2025-02-11-git";
          src = super.fetchFromGitLab {
            owner = "mailman";
            repo = "django-mailman3";
            rev = "5d2dbadb62262223b6e3ebd000deb6a65399519a";
            hash = "sha256-a6No0MRzPqKiOcnSJcpj0RWopo5WTqLCJKZiZQm1QgQ=";
          };
          meta.broken = false;
        });
      };
    };
  });

  hagrid = super.callPackage pkgs/hagrid {};
  matrix-alertmanager = super.callPackage pkgs/matrix-alertmanager { };
  serviceOverview = super.callPackage pkgs/service-overview { };

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

  mxisd = super.runCommandNoCC "override-mxisd" {
    preferLocalBuild = true;
  } ''
    mkdir -p $out/bin
    ln -vs ${super.ma1sd}/bin/ma1sd $out/bin/mxisd
  '';

  nixosTests = super.nixosTests // {
    wireguard-star = self.callPackage ./tests/wireguard-star.nix { };
  };
}
