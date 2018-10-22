self: super:

{
  python3 = super.python3.override { packageOverrides = import ./pkgs/python-packages.nix; };
  python35 = super.python35.override { packageOverrides = import ./pkgs/python-packages.nix; };
  python36 = super.python36.override { packageOverrides = import ./pkgs/python-packages.nix; };
  python2 = super.python2.override { packageOverrides = import ./pkgs/python-packages.nix; };
  python = super.python.override { packageOverrides = import ./pkgs/python-packages.nix; };

  mailman3 = super.callPackage pkgs/mailman { };
  postorius = super.callPackage pkgs/mailman/postorius.nix { };
  hyperkitty = super.callPackage pkgs/mailman/hyperkitty.nix { };
  serviceOverview = super.callPackage pkgs/service-overview { };

  yarn2nix = super.callPackage (super.fetchFromGitHub {
    owner = "mayflower";
    repo = "yarn2nix-moretea";
    rev = "bcac6f2b96c795fe9eda9b9b75e6c885db184e66";
    sha256 = "0g0gy9yv39k1cd8nyh1cv8hwzx18w4y4fzjqpnbpz3vcnnkx7jsm";
  }) {};
  mkYarnPackage = (super.callPackage self.yarn2nix.src {}).mkYarnPackage;
  loomio = super.callPackage pkgs/loomio { };

  dovecot = super.dovecot.override { withPgSQL = true; };
  postfix = super.postfix.override { withPgSQL = true; };
}
