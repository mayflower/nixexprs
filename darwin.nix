{ nixpkgs
, supportedSystems ? [ "x86_64-darwin" ]
, packages ? []
}:

with import <nixpkgs/pkgs/top-level/release-lib.nix> { inherit supportedSystems; };

(mapTestOn {
  ant = all;
  apache-maven = all;
  aspell = all;
  autoconf = all;
  automake = all;
  boost = all;
  bzip2 = all;
  cairo = all;
  clang-tools = all;
  clang-wrapper = all;
  cmake = all;
  cppcheck = all;
  curl = all;
  diffutils = all;
  dos2unix = all;
  dovecot = all;
  emacs25Macport = all;
  emscripten = all;
  findutils = all;
  fzf = all;
  gawk = all;
  gcc-wrapper = all;
  gdb = all;
  git = all;
  gitMinimal = all;
  glib = all;
  global = all;
  gnugrep = all;
  gnum4 = all;
  gnumake = all;
  gnupg = all;
  gnused = all;
  gnutls = all;
  go = all;
  graphviz = all;
  htop = all;
  imagemagick = all;
  mtr = all;
  nghttp2 = all;
  nmap = all;
  nodejs = all;
  offlineimap = all;
  openssh = all;
  pandoc = all;
  patchutils = all;
  php = all;
  php-apcu = all;
  php-imagick = all;
  pinentry-mac = all;
  pkg-config = all;
  poppler-glib = all;
  postgresql = all;
  pwgen = all;
  rsync = all;
  rtags = all;
  silver-searcher = all;
  tree = all;
  universal-ctags = all;
  vagrant = all;
  valgrind = all;
  w3m = all;
  wget = all;
  yarn = all;
  zlib = all;
  zsh = all;
  zsh-autosuggestions = all;
  zsh-completions = all;
  zsh-syntax-highlighting = all;

})
