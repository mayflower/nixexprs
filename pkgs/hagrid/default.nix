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
  version = "2023-12-28";

  src = fetchFromGitLab {
    owner = "keys.openpgp.org";
    repo = pname;
    rev = "da4665306e501e35f349f9d6c84148b9ff3a0da5";
    sha256 = "sha256-mZyRNOJuAf5I9ybzEZcZZ0smGBKHZidU57fv+kGgYLc=";
  };

  cargoLock = {
    lockFile = ./Cargo.lock;
    outputHashes = {
      "rocket_i18n-0.5.0" = "sha256-EbUE8Z3TQBnDnptl9qWK6JvsACCgP7EXTxcA7pouYbc=";
    };
  };

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
