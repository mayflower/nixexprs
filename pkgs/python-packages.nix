self: super: {
  automx = super.callPackage ./python/automx { };
  colorhash = super.callPackage ./python/colorhash { };
  duckling = super.callPackage ./python/duckling { };
  fbmessenger = super.callPackage ./python/fbmessenger { };
  mattermostwrapper = super.callPackage ./python/mattermostwrapper { };
  python-crfsuite = super.callPackage ./python/python-crfsuite { };
  rasa-core = super.callPackage ./python/rasa-core { };
  rasa-nlu = super.callPackage ./python/rasa-nlu { };
  sklearn-crfsuite = super.callPackage ./python/sklearn-crfsuite { };

  privacyidea = super.privacyidea.overrideAttrs ({disabledTests ? [], patches ? [], ...}: {
    disabledTests = disabledTests ++ [ "test_03_check_subscription" ];
    patches = patches ++ [
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
