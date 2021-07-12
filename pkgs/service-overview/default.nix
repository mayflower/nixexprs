{ stdenv, lib, fetchFromGitHub, fetchurl, runCommand, writeText, services ? {} }:

let
  header = import templates/header.nix { inherit lib; };
  footer = import templates/footer.nix { inherit lib; };

  entry = name: val: import templates/entry.nix ({ inherit lib name; } // val);

  order = [
    "production"
    "external"
    "beta"
    "alpha"
    "deprecated"
    "obsolete"
  ];

  generateEntries = srvAttrs: lib.concatStrings (
    lib.flatten (map (stat: lib.mapAttrsToList (n: v: (
      if v.status == stat then entry n v else ""
    )) srvAttrs) order));

  #genHtml = services: minifyHTML ''
  genHtml = services: writeText "index.html" ''
    ${header}
    ${generateEntries services}
    ${footer}
  '';

  spectreCSS = fetchFromGitHub {
    owner  = "picturepan2";
    repo   = "spectre";
    rev    = "v0.5.3";
    sha256 = "09sdgjpcai2l1ydmkin1rgac83q4k0h8xbrkknqnx9nhc0v58a7v";
  };

  robotoFont = fetchurl {
    url = "https://github.com/google/fonts/raw/08b5f47811dfdea8be45ca44836c4229fc306953/apache/roboto/Roboto-Regular.ttf";
    sha256 = "15bdh52jl469fbdqwib5ayd4m0j7dljss8ixdc8c5njp8r053s3r";
  };
in

stdenv.mkDerivation rec {
  name = "service-overview-${version}";
  version = "0.1.0";
  src = ./.;

  dontConfigure = true;
  dontBuild = true;

  installPhase = ''
    mkdir -p $out/assets/{fonts,css}
    cp -R $src/assets/* $out/assets
    cp ${robotoFont} $out/assets/fonts
    cp ${spectreCSS}/dist/* $out/assets/css
    cp ${genHtml services} $out/index.html
  '';

  passthru = { inherit spectreCSS robotoFont; };
}
