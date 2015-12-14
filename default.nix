/* A small release file, with few packages to be built.  The aim is to reduce
   the load on Hydra when testing the `stdenv-updates' branch. */

{ nixpkgs
, supportedSystems ? [ "x86_64-linux" ]
}:

with import <nixpkgs/pkgs/top-level/release-lib.nix> { inherit supportedSystems; };
(mapTestOn (rec {

  ack = all;
  acpi = all;
  acpid = all;
  acpitool = all;
  alsaPlugins = all;
  alsaUtils = all;
  aspell = all;
  at = all;
  aterm25 = all;
  atom = all;
  atop = all;
  autoconf = all;
  automake = all;
  autossh = all;
  avahi = allBut cygwin;  # Cygwin builds fail
  bash = all;
  bashInteractive = all;
  bc = all;
  bind = all;
  binutils = all;
  binwalk = all;
  bsdiff = all;
  busybox = all;
  byobu = all;
  bzip2 = all;
  chromium = all;
  chrony = all;
  clawsMail = all;
  cmake = all;
  coreutils = all;
  cpio = all;
  cron = all;
  cryptsetup = all;
  cups = all;
  dhcp = all;
  di = all;
  diffutils = all;
  dnsmasq = all;
  docker = all;
  dovecot = all;
  dpkg = all;
  debootstrap = all;
  e2fsprogs = all;
  emacs24 = gtkSupported;
  enscript = all;
  #fail2ban = all;
  feh = all;
  file = all;
  findutils = all;
  firefox-wrapper = all;
  flex = all;
  gajim = all;
  gcc = all;
  gettext = all;
  gimp = all;
  git = all;
  gitAndTools.gitFull = all;
  gitAndTools.tig = all;
  gitAndTools.hub = all;
  glibc = all;
  glibcLocales = all;
  gmp = all;
  gnat = all;
  gnome.gconfmm = all;
  gnome.libglademm = all;
  gnugrep = all;
  gnum4 = all;
  gnumake = all;
  gnupatch = all;
  gnupg = all;
  gnupg21 = all;
  gnuplot = allBut cygwin;
  gnused = all;
  gnutar = all;
  gnutls = all;
  gogoclient = all;
  gperftools = all;
  grub2 = all;
  gsl = all;
  guile = all;
  gzip = all;
  hddtemp = all;
  hdparm = all;
  hello = all;
  horst = all;
  host = all;
  htop = all;
  i3 = all;
  i3lock = all;
  i3status = all;
  iana_etc = all;
  icecast = all;
  icewm = all;
  idutils = all;
  ifplugd = all;
  inetutils = all;
  inkscape = all;
  iotop = all;
  iperf2 = all;
  iperf3 = all;
  iproute = all;
  iputils = all;
  jnettop = all;
  jq = all;
  jwhois = all;
  kbd = all;
  keen4 = ["i686-linux"];
  kvm = all;
  less = all;
  letsencrypt = all;
  lftp = all;
  libressl = all;
  libreoffice = all;
  libtool = all;
  libtool_2 = all;
  libvirt = all;
  libxml2 = all;
  libxslt = all;
  libyaml = all;
  libyamlcpp = all;
  lolcat = all;
  lout = all;
  lsh = all;
  lsof = all;
  ltrace = all;
  lvm2 = all;
  lxc = all;
  lxd = all;
  lynx = all;
  lzma = all;
  man = all;
  manpages = all;
  mc = all;
  mcron = all;
  mdadm = all;
  mercurial = all;
  mesa = mesaPlatforms;
  mingetty = all;
  mk = all;
  mktemp = all;
  module_init_tools = all;
  mongodb = all;
  monotone = all;
  mpg321 = all;
  mplayer = all;
  mpv = all;
  mtr = all;
  mupdf = all;
  mutt = all;
  mysql = all;
  ncat = all;
  ncdu = all;
  ncmpcpp = all;
  netcat = all;
  nfs-utils = all;
  nix = all;
  nixUnstable = all;
  nixops = all;
  nixopsUnstable = all;
  nix-generate-from-cpan = all;
  nmap = all;
  nodejs = all;
  nss_ldap = all;
  nssmdns = all;
  ntfs3g = all;
  ntp = all;
  openjdk = all;
  openssh = all;
  openssl = all;
  openvpn = all;
  packer = all;
  pan = gtkSupported;
  pandoc = all;
  par2cmdline = all;
  parted = all;
  paprefs = all;
  pavucontrol = all;
  pass = all;
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
  physlock = all;
  pkgconfig = all;
  pmccabe = all;
  poezio = all;
  policykit = all;
  portmap = all;
  postfix = all;
  postfix30 = all;
  postgresql = all;
  powertop = all;
  procps = all;
  prosody = all;
  pulseaudioFull = all;
  pulseaudioLight = all;
  pwgen = all;
  python = allBut cygwin;
  pythonFull = all;
  pv = all;
  qemu = all;
  qemu_kvm = all;
  qutebrowser = all;
  readline = all;
  redshift = all;
  rkt = all;
  rlwrap = all;
  rpm = all;
  rrdtool = all;
  rsync = all;
  rxvt_unicode-with-plugins = all;
  screen = all;
  scrot = all;
  sdparm = all;
  sharutils = all;
  silver-searcher = all;
  simp_le = all;
  sipcalc = all;
  sl = all;
  sloccount = allBut cygwin;
  smartmontools = all;
  socat = all;
  sqlite = allBut cygwin;
  squid = all;
  sshfsFuse = all;
  sslscan = all;
  ssmtp = all;
  stdenv = all;
  strace = all;
  su = all;
  sudo = all;
  sysklogd = all;
  syslinux = ["i686-linux"];
  sysstat = all;
  systemd = all;
  sysvinit = all;
  sysvtools = all;
  tcl = all;
  tcpdump = all;
  terminator = all;
  tightvnc = all;
  time = all;
  tinc_pre = all;
  tinycc = all;
  tmux = all;
  toilet = all;
  udev = all;
  units = all;
  unrar = all;
  unzip = all;
  upstart = all;
  usbutils = all;
  utillinux = all;
  utillinuxCurses = all;
  vaapiIntel = all;
  vagrant = all;
  vim = all;
  vimHugeX = all;
  virtmanager = all;
  vlc = all;
  w3m = all;
  wavemon = all;
  webkit = all;
  webkitgtk2 = all;
  weechat = all;
  wget = all;
  which = all;
  whois = all;
  wirelesstools = linux;
  wireshark = all;
  wpa_supplicant = linux;
  xcalib = all;
  xfsprogs = linux;
  xkeyboard_config = linux;
  xmonad-with-packages = all;
  haskellPackages.xmonad-contrib = all;
  haskellPackages.xmonad-extras = all;
  haskellPackages.xmobar = all;
  xz = all;
  youtubeDL = all;
  zathura = all;
  zile = all;
  zip = all;
  zlib = all;
  zsh = all;

  dbus = {
    libs = all;
    daemon = all;
    tools = all;
  };

  linux = all;
  linuxHeaders = all;
  linuxPackages_4_3 = {
    kernel = all;
    kernelHeaders = all;
    perf = all;
  };
  linuxPackages_4_2 = {
    kernel = all;
    kernelHeaders = all;
    perf = all;
  };

  nodePackages = {
    bower = all;
    grunt-cli = all;
  };

  xorg = {
    xkill = all;
    xmessage = all;
    xbacklight = all;
    xrandr = all;
  };

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
  vistafonts = all;
  wqy_microhei = all;

} ))
