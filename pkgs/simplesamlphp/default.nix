{ stdenv, lib, pkgs, fetchurl, addPrivacyIdeaModule ? true, fetchFromGitHub, writeText }:
with lib;

let
  phpclient = fetchFromGitHub {
    owner = "privacyidea";
    repo = "php-client";
    rev = "v0.9.7";
    sha256 = "sha256-l5+1dzpVCwTdjfyUBJ06K5KUNLDIO3RlgveRtzqKUhQ=";
  };
in
stdenv.mkDerivation rec {
  name = "simplesamlphp-${version}";
  version = "1.19.8";

  src = fetchurl {
    url = "https://github.com/simplesamlphp/simplesamlphp/releases/download/v${version}/simplesamlphp-${version}.tar.gz";
    sha256 = "sha256-qQQV+ECDB1pmWXeG2fR1d+reR25tNk7DNIXsXNyMYRo=";
  };

  buildPhase = ''
    rm -r metadata
    ln -sf /run/simplesamlphp/metadata .
    ln -sf /run/simplesamlphp/config/authsources.php config/
    ln -sf /run/simplesamlphp/config/config.php config/
  '';

  installPhase = ''
    cp -va . $out
  '' +
  (optionalString addPrivacyIdeaModule ''cp -rva \
    ${pkgs.simplesamlphp-module-privacyidea}/ $out/modules/privacyidea
    mkdir -p $out/external
    cp -r ${phpclient} $out/external/php-client
    cat >>$out/lib/_autoload_modules.php <<-EOF
    require "$out/external/php-client/src/Client-Autoloader.php";
  '');

  meta = {
    description = ''
      SimpleSAMLphp is an award-winning application written in
      native PHP that deals with authentication.
    '';
    homepage = https://simplesamlphp.org;
    maintainers = with maintainers; [ ciil ];
    license = licenses.lgpl21;
    platforms = with platforms; unix;
  };
}
