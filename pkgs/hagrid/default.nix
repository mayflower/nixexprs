{ lib
, fetchFromGitLab
, gettext
, llvmPackages
, nettle
, pkg-config
, rustPlatform
, zsh
, brand ? "keys.mayflower.de"
}:

rustPlatform.buildRustPackage rec {
  pname = "hagrid";
  version = "2023-02-11";

  src = fetchFromGitLab {
    owner = "keys.openpgp.org";
    repo = pname;
    rev = "37d42e96d74928938706c972cf911922b67fcc5f";
    sha256 = "sha256-LccG2xFJ1g6oBuz721aZLuq+201ZtQrxfS1HO6X8l/4=";
  };

  cargoSha256 = "sha256-gPIx7ijEvbjn3gE3GbpzCV0NABX9qp0r6jqxFT/eU1E=";

  cargoBuildFlags = [ "--workspace" ];

  LIBCLANG_PATH = "${llvmPackages.libclang.lib}/lib";

  buildInputs = [ nettle ];
  nativeBuildInputs = [ pkg-config rustPlatform.bindgenHook gettext zsh ];

  patches = [
    ./remove-news-and-stats.patch
  ];

  postPatch = ''
    while read -r file ; do
      substituteInPlace "$file" --replace ">keys.openpgp.org<" ">${brand}<"
    done < <(grep -r '>keys.openpgp.org<' -l)

    zsh ./make-translated-templates

    substituteInPlace src/mail.rs \
      --replace 'SendmailTransport::new()' \
                'SendmailTransport::new_with_command("/run/wrappers/bin/sendmail")'
  '';

  postInstall = ''
    cp -r dist $out/
    cp nginx.conf hagrid-routes.conf Rocket.toml.dist $out/
  '';

  meta = with lib; {
    description = "Hagrid as in, \"keeper of keys\". Verifying OpenPGP keyserver, written in Rust, running on https://keys.openpgp.org";
    homepage = "https://keys.openpgp.org";
    license = licenses.agpl3;
    maintainers = [ ];
  };
}
