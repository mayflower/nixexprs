{ stdenv
, pkgs
, callPackage
, runCommandNoCC
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
    groups = [ "default" "production" ];
  };
  src = #(pkgs.lib.cleanSource /home/linus/projects/loomio)
  fetchFromGitHub {
    owner = "loomio";
    repo = "loomio";
    rev = "e122bff3ce011748eb767ce2c300e057e74ae315"; # 1.8.656
    sha256 = "1wn6nss7lvmn5cv62khjcrx5zry9hvhl4nvag9y7hiiklqk11avb";
  };
  nodeModules = yarn2nix.mkYarnPackage {
    name = "loomio-frontend";
    src = "${src}/client";
    yarnNix = ./yarn.nix;
    yarnPreBuild = ''
      mkdir -p $HOME/.node-gyp/${nodejs.version}
      echo 9 > $HOME/.node-gyp/${nodejs.version}/installVersion
      ln -sfv ${nodejs}/include $HOME/.node-gyp/${nodejs.version}
    '';
    pkgConfig.node-sass = {
      buildInputs = [ python ];
      postInstall = "npm run build";
    };
  };
  frontend = runCommandNoCC "loomio-frontend" {} ''
    src=${src}/client unpackPhase
    cd client
    echo "--- Patching lodash stuff ---"
    find . \
         -name '*.js' -or -name '*.coffee' \
         -exec sed -ri 's/_\.pluck/_.map/g ;
                        s/_\.all/_.every/g ;
                        s/_\.contains/_.includes/g;
                        s/_\.trunc/_.truncate/g;
                        s/_\.any/_.some/g;
         ' {} +
    ln -s ${nodeModules}/libexec/Loomio/node_modules .
    ./node_modules/.bin/gulp compile
    mkdir -p $out/share/loomio
    cp -r ../public $out/share/loomio
  '';
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
    find . -name "*.rb" -not -name ".*" -exec sed -ri 's/< ActiveRecord::Migration(\[[0-9]+\.[0-9]+\])?/< ActiveRecord::Migration[4.2]/' {} +
    cp -r . $out/share/loomio
    ln -s ${rubyEnv} $out/rubyenv
    rsync -rv ${frontend}/share/loomio/public $out/share/loomio/
    ln -s /run/loomio/tmp $out/share/loomio/tmp
    ln -s /run/loomio/log $out/share/loomio/log
    ln -s /run/loomio/config $out/share/loomio/config
    ln -s /run/loomio/client-tasks-config $out/share/loomio/client/tasks/config

    chmod u+w $out/share/loomio/public/client
    # TODO: work out what this version number or whatever is
    ln -s $out/share/loomio/public/client/development $out/share/loomio/public/client/1.8.657
  '';
}
