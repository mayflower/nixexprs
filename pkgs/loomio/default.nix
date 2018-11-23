{ stdenv
, pkgs
, callPackage
, lib
, runCommandNoCC
, fetchFromGitHub
, bundlerEnv
, ruby
, python
, nodejs
, rsync
, yarn2nix
, enableDebug ? false # If true, patch loomio so as not to minify the javascript
}:
let
  version = "1.8.675";
  rubyEnv = bundlerEnv {
    name = "loomio-env-${version}";
    inherit ruby;
    gemdir = ./.;
    groups = [ "default" "production" ];
  };
  src = fetchFromGitHub {
    owner = "loomio";
    repo = "loomio";
    rev = "dbd75a9f492df0a2831c4890996825242bc78402";
    sha256 = "0k1vc3824ac51dka8jv6v1abpcjfvc0n0j8q7d7kk213rkpdm8ji";
  };
  nodeModules = yarn2nix.mkYarnPackage {
    name = "loomio-frontend-${version}";
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
    ${lib.optionalString enableDebug "patch -p2 <${./debug.patch}"}

    # TODO: Work out why this hack for getting the right version of
    # lodash in is necessary, and fix the problem properly (I hope
    # this isn't the proper fix!?)
    cp -r ${nodeModules}/libexec/Loomio/node_modules .
    chmod u+w node_modules
    chmod -R u+w node_modules/lodash
    cp -r ${nodeModules}/libexec/Loomio/deps/Loomio/node_modules/* node_modules/

    ./node_modules/.bin/gulp compile
    mkdir -p $out/share/loomio
    cp -r ../public $out/share/loomio
  '';
in
stdenv.mkDerivation rec {
  name = "loomio-${version}";
  inherit rubyEnv src frontend;
  patches = [ ./smtp-security.patch ];
  nativeBuildInputs = [ rsync ];
  installPhase = ''
    mkdir -p $out/share
    mv config config.dist
    mv client/tasks/{config,config.dist}
    substituteInPlace config.dist/application.rb --replace '../lib/version' "$out/share/loomio/lib/version"
    cp -r . $out/share/loomio
    ln -s ${rubyEnv} $out/rubyenv
    # This is necessary (as opposed to symlinking) because the trees
    # need to be merged as opposed to just containing files from the
    # one
    rsync -r ${frontend}/share/loomio/public $out/share/loomio/
    ln -s /run/loomio/tmp $out/share/loomio/tmp
    ln -s /run/loomio/log $out/share/loomio/log
    ln -s /run/loomio/config $out/share/loomio/config
    ln -s /run/loomio/public-system $out/share/loomio/public/system
    ln -s /run/loomio/client-tasks-config $out/share/loomio/client/tasks/config

    chmod u+w $out/share/loomio/public/client
    ln -s $out/share/loomio/public/client/development $out/share/loomio/public/client/${version}
  '';
  passthru = {
    inherit nodeModules frontend;
  };
}
