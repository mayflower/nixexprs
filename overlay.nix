self: super:

{
  python3 = super.python3.override { packageOverrides = import ./pkgs/python-packages.nix; };
  python35 = super.python35.override { packageOverrides = import ./pkgs/python-packages.nix; };
  python36 = super.python36.override { packageOverrides = import ./pkgs/python-packages.nix; };
  python39 = super.python39.override { packageOverrides = import ./pkgs/python-packages.nix; };
  python2 = super.python2.override { packageOverrides = import ./pkgs/python-packages.nix; };
  python = super.python.override { packageOverrides = import ./pkgs/python-packages.nix; };

  mailmanPackages = super.mailmanPackages.extend (_: mailmanSuper: {
    postorius = mailmanSuper.postorius.overrideAttrs ({ patches ? [], ... }: {
      patches = patches ++ [
        ./pkgs/postorius_users_can_create_lists.patch
      ];
    });
  });

  cachet = super.callPackage pkgs/cachet {};
  matrix-alertmanager = super.callPackage pkgs/matrix-alertmanager { };
  serviceOverview = super.callPackage pkgs/service-overview { };
  simplesamlphp = super.callPackage pkgs/simplesamlphp { };
  simplesamlphp-module-privacyidea = super.callPackage pkgs/simplesamlphp/module-privacyidea.nix { };

  dovecot = super.dovecot.override { withPgSQL = true; };
  postfix = super.postfix.override { withPgSQL = true; };
  freeradius = super.freeradius.override { withJson = true; withRest = true; };

  nixops = super.nixops.overrideAttrs (oldAttrs: {
    patches = (oldAttrs.patches or []) ++ [ pkgs/nixops/0001-eval-machine-info-fix-deprecation-warning.patch ];
  });

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

  matrix-synapse = super.matrix-synapse.overrideAttrs (oldAttrs: {
    postInstall = (oldAttrs.postInstall or "") + ''
      cp ${super.fetchFromGitHub {
        owner = "ma1uta";
        repo = "matrix-synapse-rest-password-provider";
        rev = "ed377fb70513c2e51b42055eb364195af1ccaf33";
        sha256 = "130mc2i8v9p9ngcysg95jbp5fqxlz9p2byca2nsnb2ki96k8k3g7";
      }}/rest_auth_provider.py $out/lib/${super.python3.libPrefix}/site-packages
    '';
  });


  privacyidea = super.privacyidea.overrideAttrs ({disabledTests ? [], patches ? [], ...}: {
    disabledTests = disabledTests ++ [ "test_03_check_subscription" ];
    patches = patches ++ [
      ./pkgs/privacyidea/0001-remove-subscription-check.patch
      ./pkgs/privacyidea/add-description.patch

      # Fix webauthn with Apple's TouchID
      (self.fetchpatch {
        url = "https://github.com/privacyidea/privacyidea/commit/055ec0707424c6b3c0ea2caa0510d79027412c1f.patch";
        sha256 = "sha256-qQHBcHf+BxVyhpFaJiNfQ1B4oo5XZBJMCQ4ldByvDaY=";
      })
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

  libseccomp = super.libseccomp.overrideAttrs(old: {
    # 52-basic-load
    doCheck = super.libseccomp.system != "aarch64-linux";
  });
  llvm = super.llvm.overrideAttrs(old: {
    # two_module_global_variables_case
    doCheck = super.llvm.system != "aarch64-linux";
  });
}
