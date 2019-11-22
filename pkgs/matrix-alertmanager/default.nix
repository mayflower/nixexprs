{ stdenv, fetchFromGitHub, makeWrapper, nodejs, yarn2nix-moretea }:

yarn2nix-moretea.mkYarnPackage rec {
  pname = "matrix-alertmanager";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "jaywink";
    repo = pname;
    rev = "v${version}";
    sha256 = "1kik0246zxp4cvznyl9hs142glhspxl9vx548z0ajbbnfrpm3kjn";
  };

  yarnNix = ./yarn.nix;
  yarnLock = ./yarn.lock;
  packageJSON = ./package.json;

  dontBuild = true;
  dontInstall = true;

  nativeBuildInputs = [ makeWrapper ];

  distPhase = ''
    runHook preDist

    cd deps/matrix-alertmanager

    mkdir -p $out/{bin,lib}
    cp -R src/*.js $out
    cp -R "$node_modules" $out/lib/node_modules

    cat > $out/bin/matrix-alertmanager <<EOF
      #!${stdenv.shell}/bin/sh
      ${nodejs}/bin/node $out/app.js
    EOF

    chmod +x $out/bin/matrix-alertmanager

    wrapProgram $out/bin/matrix-alertmanager \
      --set NODE_PATH "$out/lib/node_modules"

    runHook postDist
  '';

  meta = with stdenv.lib; {
    inherit (src.meta) homepage;
    description = "A bot to receive Alertmanager webhook events and forward them to chosen rooms";
    license = licenses.mit;
    maintainers = with maintainers; [ willibutz ];
    platforms = platforms.linux;
  };
}
