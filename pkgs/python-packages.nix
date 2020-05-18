self: super: {
  atpublic = super.callPackage ./python/atpublic { };
  automx = super.callPackage ./python/automx { };
  colorhash = super.callPackage ./python/colorhash { };
  coloredlogs = super.callPackage ./python/coloredlogs { };
  django-allauth = super.callPackage ./python/django-allauth { };
  django-gravatar2 = super.callPackage ./python/django-gravatar2 { };
  duckling = super.callPackage ./python/duckling { };
  fakeredis = super.callPackage ./python/fakeredis { };
  fbmessenger = super.callPackage ./python/fbmessenger { };
  humanfriendly = super.callPackage ./python/humanfriendly { };
  mattermostwrapper = super.callPackage ./python/mattermostwrapper { };
  pykwalify = super.callPackage ./python/pykwalify { };
  python3-openid = super.callPackage ./python/python3-openid { };
  python-crfsuite = super.callPackage ./python/python-crfsuite { };
  rasa-core = super.callPackage ./python/rasa-core { };
  rasa-nlu = super.callPackage ./python/rasa-nlu { };
  robot-detection = super.callPackage ./python/robot-detection { };
  sklearn-crfsuite = super.callPackage ./python/sklearn-crfsuite { };
  verboselogs = super.callPackage ./python/verboselogs { };

  privacyidea = super.privacyidea.overrideAttrs (old: {
    patches = old.patches or [] ++ [
      ./privacyidea/0001-remove-subscription-check.patch
      ./privacyidea/add-description.patch
    ];
  });

  graphviz = super.graphviz.overrideAttrs (oldAttrs: rec {
    pname = "graphviz";
    version = "0.8.3";

    src = super.fetchPypi {
      inherit pname version;
      extension = "zip";
      sha256 = "0gnl11w98iib7vif92f3vircavy2v1yl9sl54y6hhk1mwm0f07f6";
    };
  });
  django-haystack = super.django-haystack.overrideAttrs (oldAttrs: rec {
    pname = "django-haystack";
    version = "2.8.1";
    name = "${pname}-${version}";

    src = super.fetchPypi {
      inherit pname version;
      sha256 = "1302fqsrx8w474xk5cmnmg3hjqfprlxnjg9qlg86arsr4v4vqm4b";
    };
    propagatedBuildInputs = with super; [ django python-dateutil whoosh pysolr elasticsearch setuptools_scm ];
  });

  postorius = super.postorius.overrideAttrs ({patches ? [], ...}: {
    patches = patches ++ [ ./postorius_users_can_create_lists.patch ];
  });

  # geopy FIXME
}
