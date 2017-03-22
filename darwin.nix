{ nixpkgs
, supportedSystems ? [ "x86_64-darwin" ]
}:

with import <nixpkgs/pkgs/top-level/release-lib.nix> { inherit supportedSystems; };
G
(mapTestOn {
  ant = all;
  maven = all;
  aspell = all;
  autoconf = all;
  automake = all;
  binutils = all;
  boost160 = all;
  boost162 = all;
  boost163 = all;
  # borgbackup = all;
  bzip2 = all;
  cairo = all;
  clang-tools = all;
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
  gcc6 = all;
  gdb = all;
  git = all;
  gitMinimal = all;
  # gitAndTools = all;
  glib = all;
  global = all;
  gnugrep = all;
  gnum4 = all;
  gnumake = all;
  gnupg = all;
  gnused = all;
  gnutar = all;
  gnutls = all;
  go = all;
  graphviz = all;
  htop = all;
  imagemagick = all;
  libtool = all;
  # libstdcxx5 = all;
  llvmPackages_37 = {
    clang = all;
    libcxx = all;
    libcxxabi = all;
  };
  llvmPackages_38 = {
    clang = all;
    libcxx = all;
    libcxxabi = all;
  };
  llvmPackages_39 = {
    clang = all;
    libcxx = all;
    libcxxabi = all;
  };
  llvmPackages_4 = {
    clang = all;
    libcxx = all;
    libcxxabi = all;
  };
  mtr = all;
  nghttp2 = all;
  nixops = all;
  nix-repl = all;
  nmap = all;
  nodejs = all;
  offlineimap = all;
  openssh = all;
  pandoc = all;
  patchutils = all;
  pinentry_mac = all;
  pkgconfig = all;
  poppler = all;
  postgresql = all;
  pwgen = all;
  range-v3 = all;
  qt57 = {
    qtbase = all;
    qtconnectivity = all;
    qtdeclarative = all;
    qtdoc = all;
    qtgraphicaleffects = all;
    qtimageformats = all;
    qtlocation = all;
    qtmultimedia = all;
    qtquickcontrols = all;
    qtquickcontrols2 = all;
    qtscript = all;
    qtsensors = all;
  #   qtserialport = all;
    qtsvg = all;
    qttools = all;
    qttranslations = all;
    qtwebchannel = all;
  #   qtwebengine = all;
  #   qtwebkit = all;
    qtwebsockets = all;
    qtxmlpatterns = all;
  };
  qtcreator = all;
  rsync = all;
  rtags = all;
  silver-searcher = all;
  tree = all;
  universal-ctags = all;
  vagrant = all;
  valgrind = all;
  xcbuild = all;
  w3m = all;
  wget = all;
  yarn = all;
  zlib = all;
  zsh = all;
  zsh-autosuggestions = all;
  zsh-completions = all;
  zsh-syntax-highlighting = all;
})
