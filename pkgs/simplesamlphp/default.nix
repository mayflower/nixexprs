{ stdenv, lib, pkgs, fetchurl, addPrivacyIdeaModule ? true, addMayflowerModule ? true }:
with lib;

stdenv.mkDerivation rec {
  name = "simplesamlphp-${version}";
  version = "1.17.2";

  src = fetchurl {
    url = "https://github.com/simplesamlphp/simplesamlphp/releases/download/v${version}/simplesamlphp-${version}.tar.gz";
    sha256 = "03p8q6waaiqaqr4pkj9vmq5vjgx750g5jr7v6xj9d8nbx10xcbqf";
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
