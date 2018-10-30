# Mayflower-opinionated Nix modules, overlay and Hydra Configuration

This is a collection of too opinionated or too experimental Nix code we use at
Mayflower, mostly in production.

## Overlay

The overlay consists of some additional packages that are too experimental to
upstream currently:
 * mailman3, including Postorius and Hyperkitty
 * serviceOverview, see below in the modules section
 * dovecot and postfix, overridden to include PgSQL support

**Using the overlay**

When importing `nixpkgs`:
```
{ nixpkgs ? <nixpkgs> }:

let
  nixexprsRepo = (import nixpkgs {}).fetchFromGitHub {
    owner = "mayflower";
    repo = "nixexprs";
    rev = "afee8fa90f5f864a9d011a0bdcdb4b657deff813";
    sha256 = "0y8da7cg9jg2xl83x6slg5zjjdn2ah9m2ymqynnq8aqqymdp4xf8";
  };
in import nixpkgs {
  overlays = [ (import "${nixexprsRepo}/overlay.nix") ];
}
```

When using it in the NixOS configuration:
```
{ pkgs, ... }:

let
  nixexprsRepo = pkgs.fetchFromGitHub {
    owner = "mayflower";
    repo = "nixexprs";
    rev = "afee8fa90f5f864a9d011a0bdcdb4b657deff813";
    sha256 = "0y8da7cg9jg2xl83x6slg5zjjdn2ah9m2ymqynnq8aqqymdp4xf8";
  };
in {
  nixpkgs.overlays = [ (import "${nixexprsRepo}/overlay.nix") ];
}
```

Testing builds with your local nixpkgs (from `NIX_PATH`).
In this repository default.nix just applies the overlay to `<nixpkgs>`:
```
nix-build -A postfix  # includes pgsql support
```

Use another nixpkgs repository:
```
nix-build --argstr nixpkgs /home/robin/dev/nixpkgs-upstream -A postfix
```

## Modules

### services.automx

Automx service to provide mail client auto configuration. To be upstreamed soon,
but not clean enough, yet.

### services.mailman

Mailman3 plus Hyperkitty and Postorius service. To be upstreamed after clean-up
and stabilisation. (And rather a lot of code, maybe to opinionated in parts
even)

### mayflower.base

Enabled by default. Sets a number of default options including some opinionated
defaults as well as very Mayflower-specific things like setting our mailserver
for delivery. Thus, you will want to turn this off and steal the parts you want
to have yourself. Or feel free to open a PR to split this up into opinionated
options and company-specific options if we don't beat you to it.

### mayflower.demockrazy

A service to create polls which are as anonymous as possible and leave as little
trace as possible. This is software that was written in-house at mayflower but
is open source and mostly needs some polishing up prior to upstreaming this as
`services.demockrazy`.

### mayflower.docker-runner

A litte abstraction for docker gitlab runners. Not too interesting probably if
you don't actually want our defaults and not worth upstreaming.

### mayflower.kvm

Some defaults for kvm guests.

### mayflower.machines

An option to pass NixOps `resources.machines` to, which is not accessible from
the module system otherwise.

### mayflower.monitoring

Auto-generation of prometheus targets from the config of all your machines in
the deployment (fetched by using `mayflower.machines`). Very opinionated, but
feel free to send in PRs to make this more configurable and fit your needs
better. Especially the alert rules will most probably not meet your
requirements, but this generally should be a good starting point for prometheus
used with NixOps as it includes federation support and meshed alertmanager and a
number of exporters that get enabled by default if the relevant service is
running. As always YMMV.

### mayflower.openldap-ha

HA openldap, highly experimental and not used in production, no guarantees for
anything. (well, actually neither for the other modules)

### mayflower.serviceOverview

Generates a list of services and their support status from options over all
`mayflower.machines`.

### mayflower.wireguard-tunnel
wireguard abstraction, not used in production and probably deleted due to the
upcoming networking clean-up, which will improve support for things like this.

## Hydra Jobs

This repository also contains our complete hydra declarative project and jobset
specification. This won't be of much use outside of our environment but there
probably are a few things to take inspiration from. This includes a more
elaborate example for declarative jobsets and aarch64 cross-building on hydra.
