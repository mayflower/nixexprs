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

  dovecot = super.dovecot.override { withPgSQL = true; };
  postfix = super.postfix.override { withPgSQL = true; };
  freeradius = super.freeradius.override { withJson = true; withRest = true; };
}
