{ stdenv, lib, fetchFromGitHub, fetchpatch }:
stdenv.mkDerivation rec {
  name = "simplesamlphp-module-privacyidea-${version}";
  version = "2.0";

  src = fetchFromGitHub {
    owner = "privacyidea";
    repo = "simplesamlphp-module-privacyidea";
    rev = "v${version}";
    sha256 = "sha256-vxL9dQLZRDIeE7g7O9UqGuXss0V5+NgnwLCu8VH1R44=";
  };

  postPatch = ''
    # Dirty, but needed since the PHP SDK is manually copied into `src/privacyidea` in version
    # 2.0 (this got changed later). This means that the structure doesn't match the one from the
    # git repository here and we can't apply the patch as-is (i.e. there's one `src/` too much).
    mkdir src/privacyidea-php-sdk/src
    mv src/privacyidea-php-sdk/*.php src/privacyidea-php-sdk/src/
    cd src/privacyidea-php-sdk
    # no-op, but to have no merge conflicts for the next patch
    patch -p1 < ${fetchpatch {
      url = "https://github.com/privacyidea/sdk-php/commit/b0465701a06d2dc6251452fd220a43b0f259c586.patch";
      sha256 = "sha256-zcXXT7ReQ3D2e8ij3zpL5/WSckeiYTbwav0PBBLGo0c=";
    }}
    # see https://github.com/privacyidea/sdk-php/pull/6
    patch -p1 < ${fetchpatch {
      url = "https://github.com/Ma27/sdk-php/commit/4af50960e48faeaad8999b4ed517272f56d03927.patch";
      sha256 = "sha256-v1PXNBjdTVXiCvPkCF+C9g2Fzbrml5cMNd9dcystPVc=";
    }}
    cd ../..
    mv src/privacyidea-php-sdk/src/*.php src/privacyidea-php-sdk/
    rm -r src/privacyidea-php-sdk/src/
  '';

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
