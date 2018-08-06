self: super: {
  colorhash = super.callPackage ./python/colorhash { };
  coloredlogs = super.callPackage ./python/coloredlogs { };
  duckling = super.callPackage ./python/duckling { };
  fakeredis = super.callPackage ./python/fakeredis { };
  fbmessenger = super.callPackage ./python/fbmessenger { };
  humanfriendly = super.callPackage ./python/humanfriendly { };
  mattermostwrapper = super.callPackage ./python/mattermostwrapper { };
  pykwalify = super.callPackage ./python/pykwalify { };
  python-crfsuite = super.callPackage ./python/python-crfsuite { };
  rasa-core = super.callPackage ./python/rasa-core { };
  rasa-nlu = super.callPackage ./python/rasa-nlu { };
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
