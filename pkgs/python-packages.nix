self: super: {
  aiosmtpd = super.callPackage ./python/aiosmtpd { };
  atpublic = super.callPackage ./python/atpublic { };
  colorhash = super.callPackage ./python/colorhash { };
  coloredlogs = super.callPackage ./python/coloredlogs { };
  django-mailman3 = super.callPackage ./python/django-mailman3 { };
  duckling = super.callPackage ./python/duckling { };
  fakeredis = super.callPackage ./python/fakeredis { };
  fbmessenger = super.callPackage ./python/fbmessenger { };
  flufl-bounce = super.callPackage ./python/flufl-bounce { };
  flufl-i18n = super.callPackage ./python/flufl-i18n { };
  flufl-lock = super.callPackage ./python/flufl-lock { };
  flufl-testing = super.callPackage ./python/flufl-testing { };
  humanfriendly = super.callPackage ./python/humanfriendly { };
  lazr-config = super.callPackage ./python/lazr-config { };
  lazr-delegates = super.callPackage ./python/lazr-delegates { };
  lazr-smtptest = super.callPackage ./python/lazr-smtptest { };
  mailmanclient = super.callPackage ./python/mailmanclient { };
  mailman-hyperkitty = super.callPackage ./python/mailman-hyperkitty { };
  mattermostwrapper = super.callPackage ./python/mattermostwrapper { };
  pykwalify = super.callPackage ./python/pykwalify { };
  python3-openid = super.callPackage ./python/python3-openid { };
  python-crfsuite = super.callPackage ./python/python-crfsuite { };
  rasa-core = super.callPackage ./python/rasa-core { };
  rasa-nlu = super.callPackage ./python/rasa-nlu { };
  robot-detection = super.callPackage ./python/robot-detection { };
  sklearn-crfsuite = super.callPackage ./python/sklearn-crfsuite { };
  verboselogs = super.callPackage ./python/verboselogs { };

  graphviz = super.graphviz.overrideAttrs (oldAttrs: rec {
    pname = "graphviz";
    version = "0.8.3";

    src = super.fetchPypi {
      inherit pname version;
      extension = "zip";
      sha256 = "0gnl11w98iib7vif92f3vircavy2v1yl9sl54y6hhk1mwm0f07f6";
    };
  });
}
