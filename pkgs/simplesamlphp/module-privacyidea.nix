{ stdenv, lib, fetchFromGitHub }:
stdenv.mkDerivation rec {
  name = "simplesamlphp-module-privacyidea-${version}";
  version = "3.0.0";

  src = fetchFromGitHub {
    owner = "privacyidea";
    repo = "simplesamlphp-module-privacyidea";
    rev = "v${version}";
    sha256 = "sha256-5KHM0k7gVGaeMy15mw1oDnowGTdqKPcyNaiDDiDbpmg=";
  };

  installPhase = ''
    cp -va . $out
  '';

  meta = with lib; {
    description = ''
      OTP Two Factor Authentication Module for simpleSAMLphp to run with
      privacyIDEA.
    '';
    homepage = https://simplesamlphp.org;
    maintainers = [ ];
    license = licenses.agpl3;
    platforms = platforms.unix;
  };
}
