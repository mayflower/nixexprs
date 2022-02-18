/* A small release file, with few packages to be built.  The aim is to reduce
   the load on Hydra when testing the `stdenv-updates' branch. */

{ nixpkgs
, releaseLib
}:

with releaseLib;

let
  pkgs = import nixpkgs { };
  recursiveUpdate = pkgs.lib.recursiveUpdate;

  kernelPackages = {
    bcc = all;
    kernel = all;
    perf = all;
    zfs = all;
    zfsUnstable = all;
    cpupower = all;
  };

in

((mapTestOn {
  acpi = all;
  acpid = all;
  acpitool = all;
  aircrack-ng = all;
  alacritty = all;
  alsaLib = all;
  alsaTools = all;
  alsaUtils = all;
  apparmor-utils = all;
  arandr = all;
  arp-scan = all;
  aspell = all;
  at = all;
  atop = all;
  autoconf = all;
  automake = all;
  autossh = all;
  avahi = all;
  babeld = all;
  bash = all;
  bashInteractive = all;
  bc = all;
  bind = all;
  binutils = all;
  bird = all;
  bird6 = all;
  bitwarden_rs = all;
  bluez = all;
  borgbackup = all;
  bridge-utils = all;
  bruteforce-luks = all;
  bsdgames = all;
  bsdiff = all;
  bundix = all;
  bundler_HEAD = all;
  busybox = all;
  bzip2 = all;
  cabal2nix = all;
  cabal-install = all;
  cargo = all;
  ccid = all;
  ceph = all;
  certmgr = all;
  certmgr-selfsigned = all;
  cfssl = all;
  checksec = all;
  checkstyle = all;
  chromium = all;
  chrony = all;
  cifs_utils = all;
  cipherscan = all;
  clamav = all;
  cmake = all;
  codimd = all;
  collectd = all;
  colmena = all;
  colordiff = all;
  conntrack-tools = all;
  coreutils = all;
  coturn = all;
  cowsay = all;
  cpio = all;
  cpufrequtils = ["x86_64-linux"];
  cpulimit = all;
  cron = all;
  cryptsetup = all;
  cups = all;
  cups_filters = all;
  cups-pk-helper = all;
  curl = all;
  dash = all;
  dbus = all;
  ddrescue = all;
  debootstrap = all;
  dhcp = all;
  dhcpcd = all;
  di = all;
  diffutils = all;
  disnix = all;
  dmenu = all;
  dmidecode = all;
  dnsmasq = all;
  dnsutils = all;
  docker = all;
  docker-distribution = all;
  docker-machine = all;
  dovecot = all;
  dovecot_pigeonhole = all;
  dpkg = all;
  e2fsprogs = all;
  efibootmgr = all;
  efivar = all;
  EmptyEpsilon = all;
  enscript = all;
  etcd = all;
  ethtool = all;
  evince = all;
  exa = all;
  exercism = all;
  exfat = all;
  f2fs-tools = all;
  fail2ban = all;
  fd = all;
  feh = all;
  file = all;
  findutils = all;
  firefox = all;
  flac = all;
  flannel = all;
  flex = all;
  flvstreamer = all;
  foomatic-filters = all;
  fortune = all;
  fping = all;
  gawk = all;
  gcc = all;
  gcc6 = all;
  gcc7 = all;
  gettext = all;
  ghc = all;
  gimp = all;
  git = all;
  gitaly = all;
  gitAndTools.diff-so-fancy = all;
  gitAndTools.git-extras = all;
  gitAndTools.gitFull = all;
  gitAndTools.gitflow = all;
  gitAndTools.hub = all;
  gitAndTools.tig = all;
  gitMinimal = all;
  gitlab = all;
  gitlab-runner = all;
  gitlab-shell = all;
  gitlab-workhorse = all;
  glibc = all;
  glibcLocales = all;
  gmp = all;
  gnome3.dconf = all;
  gnome3.gedit = all;
  gnome3.gnome_settings_daemon = all;
  gnufdisk = all;
  gnugrep = all;
  gnum4 = all;
  gnumake = all;
  gnupatch = all;
  gnupg = all;
  gnuplot = all;
  gnused = all;
  gnutar = all;
  gnutls = all;
  go = all;
  go2nix = all;
  gocode = all;
  gox = all;
  go-mtpfs = all;
  gparted = all;
  gperftools = all;
  grafana = all;
  graphicsmagick = all;
  graphviz = all;
  grub2 = all;
  gsasl = all;
  gsl = all;
  gti = all;
  gtk-engine-murrine = all;
  gtk_engines = all;
  guile = all;
  gutenprint = all;
  gzip = all;
  harfbuzz = all;
  haveged = all;
  hddtemp = all;
  hdparm = all;
  hello = all;
  hexedit = all;
  host = all;
  hostapd = all;
  hping = all;
  hplip = all;
  htop = all;
  hugo = all;
  hydra-unstable = all;
  i3 = all;
  i3-gaps = all;
  i3lock = all;
  i3status = all;
  iana_etc = all;
  icecast = all;
  icedtea_web = all;
  icewm = all;
  iftop = all;
  imagemagick = all;
  inetutils = all;
  inotify-tools = all;
  intel-gpu-tools = ["x86_64-linux"];
  iotop = all;
  iperf = all;
  iperf2 = all;
  iperf3 = all;
  ipmitool = all;
  iproute = all;
  iputils = all;
  irqbalance = all;
  jnettop = all;
  jq = all;
  jre = all;
  jwhois = all;
  kbd = all;
  kubectl = all;
  kubernetes = all;
  kvm = all;
  latencytop = all;
  less = all;
  letsencrypt = all;
  lftp = all;
  libcap = linux;
  libcgroup = all;
  libdbiDrivers = all;
  libinput = all;
  libmediainfo = all;
  libnotify = all;
  libotr = all;
  libressl = all;
  libseccomp = all;
  libtool = all;
  libtool_2 = all;
  libvirt = all;
  libxml2 = all;
  libxslt = all;
  libyaml = all;
  libyamlcpp = all;
  libzip = all;
  lightdm = all;
  lightdm_gtk_greeter = all;
  links2 = all;
  lldpd = all;
  lm_sensors = all;
  lolcat = all;
  lout = all;
  lsof = all;
  ltrace = ["x86_64-linux"];
  lua = all;
  lua52Packages.lua = all;
  lua52Packages.luarocks = all;
  lua52Packages.vicious = all;
  lvm2 = all;
  lxqt.qterminal = all;
  lynx = all;
  lzma = all;
  mailutils = all;
  man = all;
  manpages = all;
  matrix-synapse = all;
  mc = all;
  mcabber = all;
  mdadm = all;
  memtest86plus = ["x86_64-linux"];
  menu-cache = all;
  mercurial = all;
  mesa_drivers = all;
  mingetty = all;
  minikube = all;
  mk = all;
  mkpasswd = all;
  mktemp = all;
  module_init_tools = all;
  mosh = all;
  mpd = all;
  mpg321 = all;
  mplayer = ["x86_64-linux"];
  mpv = all;
  msf = all;
  mtr = all;
  mupdf = all;
  mutt = all;
  mysql.server = all;
  nano = all;
  ncdu = all;
  ncftp = all;
  ncmpcpp = all;
  netcat = all;
  nethack = all;
  netpbm = all;
  networkmanager = all;
  nfs-utils = all;
  nginx = all;
  nginxUnstable = all;
  ngrep = all;
  nix = all;
  nix-diff = all;
  nix-generate-from-cpan = all;
  nixUnstable = all;
  nixops = all;
  nixopsUnstable = all;
  nmap = all;
  nodejs = all;
  nodejs-10_x = all;
  nox = all;
  nss_ldap = all;
  nssmdns = all;
  ntfs3g = all;
  ntp = all;
  openal = all;
  openjdk = all;
  openssh = all;
  openssl = all;
  openvpn = all;
  OVMF = all;
  oxidized = all;
  pam = all;
  pandoc = all;
  pango = linux;
  paprefs = all;
  par2cmdline = all;
  parallel = all;
  parted = all;
  pass = all;
  pavucontrol = all;
  pbzip2 = all;
  pciutils = all;
  perf-tools = all;
  perl = all;
  perlPackages = {
    CGI = all;
    CGIFast = all;
    FCGI = all;
    IOTty = all;
    LWP = all;
    NetDNS = all;
    NetLDAP = all;
    NetSNMP = all;
  };
  phantomjs2 = all;
  php73 = all;
  php73Packages.composer = all;
  php73Extensions.apcu = all;
  php73Extensions.imagick = all;
  php73Extensions.xdebug = all;
  physlock = all;
  picocom = all;
  pinentry = all;
  pipework = all;
  pkgconfig = all;
  ponysay = all;
  postfix = all;
  postgresql = all;
  postgresql_9_6 = all;
  postgresql_10 = all;
  postgresql_11 = all;
  powertop = all;
  privacyidea = all;
  privoxy = all;
  procps = all;
  prometheus = all;
  prometheus-alertmanager = all;
  prometheus-blackbox-exporter = all;
  prometheus-fritzbox-exporter = all;
  prometheus-mysqld-exporter = all;
  prometheus-nginx-exporter = all;
  prometheus-node-exporter = all;
  prometheus-snmp-exporter = all;
  prometheus-unbound-exporter = all;
  prometheus-unifi-exporter = all;
  prosody = all;
  pulseaudioFull = all;
  pulseaudioLight = all;
  pwgen = all;
  python = all;
  python3 = all;
  python36 = all;
  pythonFull = all;
  python3Packages = {
    binwalk = all;
    django = all;
    imageio = all;
    joblib = all;
    jupyter = linux;
    nltk = all;
    numpy = all;
    pandas = linux;
    plotly = linux;
    pyramid = linux;
    privacyidea-ldap-proxy = all;
    scipy = all;
    scikitlearn = all;
    slackclient = linux;
    tempora = linux;
    tkinter = all;
    youtube-dl = all;
    zope_schema = linux;
  };
  SDL2 = all;
  haskellPackages.hoogle = all;
  haskellPackages.xmobar = all;
  haskellPackages.xmonad-contrib = all;
  haskellPackages.xmonad-extras = all;
  pv = all;
  qemu = all;
  qemu_kvm = all;
  qemu_test = all;
  qiv = all;
  radvd = all;
  rdesktop = all;
  readline = all;
  redir = all;
  redis = all;
  redshift = all;
  ripgrep = all;
  rlwrap = all;
  rrdtool = all;
  rspamd = all;
  rsync = all;
  rsyslog = all;
  rtkit = all;
  ruby = all;
  rustfmt = all;
  rxvt_unicode-with-plugins = all;
  samba = all;
  screen = all;
  screenfetch = all;
  screen-message = all;
  scrot = all;
  sdparm = all;
  shairport-sync = all;
  sharutils = all;
  simp_le = all;
  sipcalc = all;
  sks = all;
  sl = all;
  sloccount = all;
  smartmontools = all;
  smokeping = all;
  socat = all;
  speedtest-cli = all;
  sqlite = all;
  sqliteInteractive = all;
  squid = all;
  sshfsFuse = all;
  ssmtp = all;
  stack = all;
  stdenv = all;
  strace = all;
  strongswan = all;
  stunnel = all;
  su = all;
  subversion = all;
  sudo = all;
  sysdig = ["x86_64-linux"];
  sysklogd = all;
  syslinux = ["i686-linux"];
  sysstat = all;
  systemd = all;
  tcl = all;
  tcpdump = all;
  texlive.combined = {
    scheme-small = all;
    scheme-full = all;
  };
  thermald = ["x86_64-linux"];
  time = all;
  tinycc = ["x86_64-linux"];
  tlp = all;
  tmux = all;
  toilet = all;
  tpacpi-bat = all;
  traceroute = all;
  tree = all;
  tzdata = all;
  unbound = all;
  unbound-with-systemd = all;
  unclutter-xfixes = all;
  unetbootin = ["x86_64-linux"];
  units = all;
  unzip = all;
  uqmi = all;
  usbutils = all;
  utillinux = all;
  uwsgi = all;
  vaapiIntel = ["x86_64-linux"];
  vim = all;
  vimHugeX = all;
  virtmanager = all;
  virtualbox = ["x86_64-linux"];
  vlc = all;
  w3m = all;
  wavemon = all;
  weechat = all;
  wget = all;
  which = all;
  whois = all;
  wine = [ "x86_64-linux" ];
  winetricks = [ "x86_64-linux" ];
  wireguard = linux;
  wirelesstools = linux;
  wireshark = all;
  wireshark-cli = all;
  wpa_supplicant = linux;
  wpa_supplicant_gui = linux;
  xautolock = all;
  xcalib = all;
  xclip = all;
  xdg-user-dirs = all;
  xdg_utils = all;
  xdotool = all;
  xfontsel = all;
  xfsprogs = linux;
  xkeyboard_config = linux;
  xmlsec = all;
  xmonad-with-packages = all;
  xorg_sys_opengl = all;
  xscreensaver = all;
  xss-lock = all;
  xtrlock-pam = all;
  xz = all;
  ympd = all;
  youtubeDL = all;
  zathura = all;
  zfs = all;
  zfstools = all;
  zile = all;
  zip = all;
  zlib = all;
  znapzend = all;
  zsh = all;

  linuxPackages = kernelPackages;
  linuxPackages_latest = kernelPackages;

  nodePackages = {
    bower = all;
    grunt-cli = all;
  };

  xorg = {
    sessreg = all;
    xbacklight = all;
    xcursorthemes = all;
    xev = all;
    xf86inputlibinput = all;
    xf86videofbdev = all;
    xf86videointel = ["x86_64-linux"];
    xf86videonouveau = all;
    xkill = all;
    xlsclients = all;
    xmessage = all;
    xmodmap = all;
    xprop = all;
    xrandr = all;
    xset = all;
    xsetroot = all;
  };

  # Mailan3
  mailman = all;
  mailman-web = all;

  # Fonts
  clearlyU = all;
  cm_unicode = all;
  dejavu_fonts = all;
  eb-garamond = all;
  font-awesome-ttf = all;
  freefont_ttf = all;
  gentium = all;
  hack-font = all;
  inconsolata = all;
  proggyfonts = all;
  source-code-pro = all;
  source-sans-pro = all;
  source-serif-pro = all;
  terminus_font = all;
  tewi-font = all;
  ttf_bitstream_vera = all;
  ubuntu_font_family = all;
  unifont = all;
  wqy_microhei = all;
}) // {
  manual = import "${nixpkgs}/doc";
  lib-tests = import "${nixpkgs}/lib/tests/release.nix" { inherit pkgs; };
})
