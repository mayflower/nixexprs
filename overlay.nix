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
  freeradius = super.freeradius.override { withJson = true; withRest = true; };

  bitwarden_rs = super.bitwarden_rs.overrideAttrs (oldAttrs: {
    postPatch = (oldAttrs.postPatch or "") + ''
      substituteInPlace src/api/admin.rs --replace \
        'let org_name = "bitwarden_rs";' \
        'let org_name = "Mayflower GmbH";'
    '';
  });

  prometheus-snmp-exporter-generator = super.callPackage ./pkgs/prometheus-snmp-exporter-generator.nix {};

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

  matrix-synapse = super.matrix-synapse.overrideAttrs ({ patches ? [], ... }: {
    patches = patches ++ [
      # https://github.com/matrix-org/synapse/pull/16030
      # allow specifying `client_secret_file` in the `oidc_providers` section
      # rather than having to specify the verbatim secret in the homeserver config.
      (super.fetchpatch {
        url = "https://github.com/matrix-org/synapse/commit/3cbce56fbf91c7420ee89350cc926af4a3c1738e.patch";
        hash = "sha256-VkBMEkdmktyg01c+C40R1GnJyCHsBKGKH+/Ur0qUTYo=";
      })
    ];
  });


  privacyidea = super.privacyidea.overrideAttrs ({disabledTests ? [], patches ? [], ...}: {
    disabledTests = disabledTests ++ [ "test_03_check_subscription" ];
    patches = patches ++ [
      ./pkgs/privacyidea/0001-remove-subscription-check.patch
      ./pkgs/privacyidea/add-description.patch
    ];
  });

  # https://github.com/NixOS/nixpkgs/blob/mf-next/nixos/modules/services/misc/gitlab.nix#L16
  # Remove when changes from git 2.37.2 land in our nixpkgs
  # - https://lore.kernel.org/git/xmqqedxmfyhe.fsf@gitster.g/
  # - (commit-graph: introduce `repo_find_commit_pos_in_graph()`)
  gitlab-workhorse-git-2-35-4 = let
    version = "2.35.4";
  in super.git.overrideAttrs (oldAttrs: rec {
    inherit version;
    src = super.fetchurl {
      url = "https://www.kernel.org/pub/software/scm/git/git-${version}.tar.xz";
      sha256 = "sha256-mv13OdNkXggeKQkJ+47QcJ6lYmcw6Qjri1ZJ2ETCTOk=";
    };
  });

  nixosTests = super.nixosTests // {
    wireguard-star = self.callPackage ./tests/wireguard-star.nix { };
  };
}
