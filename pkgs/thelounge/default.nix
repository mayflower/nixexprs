{ fetchFromGitHub, nodejs, python, yarn2nix }:

yarn2nix.mkYarnPackage rec {
  name = "thelounge-${version}";
  version = "3.0.0-rc.6";

  src = fetchFromGitHub {
    owner = "thelounge";
    repo = "thelounge";
    rev = "v${version}";
    sha256 = "01nzp2vfa0wzdn0sssyljvq8ck7bkxrlwrljs4llir3mjkv177d0";
  };

  yarnNix = ./yarn.nix;

  installPhase = ''
    npm run build
    mkdir -p $out/bin $out/share/thelounge
    cp -R . $out/share/thelounge
  '';

  yarnPreBuild = ''
    mkdir -p $HOME/.node-gyp/${nodejs.version}
    echo 9 > $HOME/.node-gyp/${nodejs.version}/installVersion
    ln -sfv ${nodejs}/include $HOME/.node-gyp/${nodejs.version}
  '';

  pkgConfig = {
    node-pre-gyp = {
      postInstall = ''
        patchShebangs .
      '';
    };
    sqlite3 = {
      buildInputs = [ python ];
      postInstall = ''
        npm run install
      '';
    };
  };
}

