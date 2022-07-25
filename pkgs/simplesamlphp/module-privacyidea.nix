{ stdenv, lib, fetchFromGitHub, fetchpatch }:
stdenv.mkDerivation rec {
  name = "simplesamlphp-module-privacyidea-${version}";
  version = "2.1.3";

  src = fetchFromGitHub {
    owner = "privacyidea";
    repo = "simplesamlphp-module-privacyidea";
    rev = "v${version}";
    sha256 = "sha256-1kg1R7BOKDZWu/Cbf3QunzHwpby+nwdbm8aV7ihv2jI=";
  };

  patches = [
    (fetchpatch {
      url = "https://github.com/privacyidea/simplesamlphp-module-privacyidea/commit/f54e3e2bbd7dcb4d0edf91c0576b11e40c569e94.patch";
      sha256 = "sha256-t6kvcF53aQcbxmqymAIwd73vaObm5LOJCe8O8FZ3n6s=";
    })
  ];

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
