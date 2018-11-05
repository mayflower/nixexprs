{ stdenv
, pkgs
, callPackage
, fetchFromGitHub
, bundlerEnv
, ruby
, python
, nodejs
, rsync
, yarn2nix
}:
let
  version = "2018-03-08-1";
  rubyEnv = bundlerEnv {
    name = "loomio-env-${version}";
    inherit ruby;
    gemdir = ./.;
  };
  src = fetchFromGitHub {
    owner = "loomio";
    repo = "loomio";
    rev = "v${version}";
    sha256 = "0jn6pda9k0llbdjdb6kbrv0xp5da6si32n59d4yhj5sqz8mppiaj";
  };
  frontend = yarn2nix.mkYarnPackage {
    name = "loomio-frontend";
    src = "${src}/client";
    yarnNix = ./yarn.nix;
    yarnPreBuild = ''
      mkdir -p $HOME/.node-gyp/${nodejs.version}
      echo 9 > $HOME/.node-gyp/${nodejs.version}/installVersion
      ln -sfv ${nodejs}/include $HOME/.node-gyp/${nodejs.version}
    '';
    # TODO: release-mode gulp build
    postInstall = ''
      ln -s $out/libexec/Loomio/node_modules .
      ./node_modules/.bin/gulp compile
      mkdir -p $out/share/loomio
      cp -r ../public $out/share/loomio
    '';
    pkgConfig.node-sass = {
      buildInputs = [ python ];
      postInstall = "npm run build";
    };
  };
in
stdenv.mkDerivation rec {
  name = "loomio-${version}";
  inherit rubyEnv src frontend;
  nativeBuildInputs = [ rsync ];
  installPhase = ''
    mkdir -p $out/share
    mv config config.dist
    mv client/tasks/{config,config.dist}
    substituteInPlace config.dist/application.rb --replace '../lib/version' "$out/share/loomio/lib/version"
    find . -name "*.rb" -exec sed -ri 's/< ActiveRecord::Migration(\[[0-9]+\.[0-9]+\])?/< ActiveRecord::Migration[4.2]/' {} +
    cp -r . $out/share/loomio
    ln -s ${rubyEnv} $out/rubyenv
    rsync -rv ${frontend}/share/loomio/public $out/share/loomio/
    ln -s /run/loomio/tmp $out/share/loomio/tmp
    ln -s /run/loomio/log $out/share/loomio/log
    ln -s /run/loomio/config $out/share/loomio/config
    ln -s /run/loomio/client-tasks-config $out/share/loomio/client/tasks/config
    # TODO: work out what this version number or whatever is
    ln -s $out/share/loomio/public/client/development $out/share/loomio/public/client/1.8.443
  '';
}
