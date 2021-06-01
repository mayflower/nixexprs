{ stdenv, lib, fetchFromGitHub }:
stdenv.mkDerivation rec {
  name = "simplesamlphp-module-privacyidea-${version}";
  version = "1.8";

  src = fetchFromGitHub {
    owner = "privacyidea";
    repo = "simplesamlphp-module-privacyidea";
    rev = "v${version}";
    sha256 = "1mb95ccvvmjnkkcgr4bcbmkb6inbvkbl403b64wb26na4sllnwdj";
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
