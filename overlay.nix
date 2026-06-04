final: prev:

{
  python3 = prev.python3.override {
    packageOverrides = (
      pyFinal: pyPrev: {
      }
    );
  };

  mailmanPackages = prev.mailmanPackages.extend (_: mailmanSuper: {
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
          # Support/require django-allauth>=65.4.
          version = "2025-02-11-git";
          src = prev.fetchFromGitLab {
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

  serviceOverview = prev.callPackage pkgs/service-overview { };

  dovecot = prev.dovecot.override { withPgSQL = true; };
  postfix = prev.postfix.override { withPgSQL = true; };

  bitwarden_rs = prev.bitwarden_rs.overrideAttrs (oldAttrs: {
    postPatch = (oldAttrs.postPatch or "") + ''
      substituteInPlace src/api/admin.rs --replace \
        'let org_name = "bitwarden_rs";' \
        'let org_name = "Mayflower GmbH";'
    '';
  });

  nixosTests = prev.nixosTests // {
    wireguard-star = final.callPackage ./tests/wireguard-star.nix { };
  };
}
