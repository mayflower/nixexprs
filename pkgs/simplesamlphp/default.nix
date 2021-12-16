{ stdenv, lib, pkgs, fetchurl, addPrivacyIdeaModule ? true, addMayflowerModule ? true }:
with lib;

stdenv.mkDerivation rec {
  name = "simplesamlphp-${version}";
  version = "1.19.4";

  src = fetchurl {
    url = "https://github.com/simplesamlphp/simplesamlphp/releases/download/v${version}/simplesamlphp-${version}.tar.gz";
    sha256 = "sha256-NMjneBUU9xu1iFnbijaQFHomknm26IuYPiOysKrEo58=";
  };

  buildPhase = ''
    rm -r metadata
    ln -sf /run/simplesamlphp/metadata .
    ln -sf /run/simplesamlphp/config/authsources.php config/
    ln -sf /run/simplesamlphp/config/config.php config/
  '' +
  (optionalString addMayflowerModule ''
    ln -sf /run/simplesamlphp/modules/mayflower modules/
  '');

  installPhase = ''
    cp -va . $out
  '' +
  (optionalString addPrivacyIdeaModule ''cp -rva \
    ${pkgs.simplesamlphp-module-privacyidea}/ $out/modules/privacyidea
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
