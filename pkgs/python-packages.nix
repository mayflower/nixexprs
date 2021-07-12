self: super: {
  automx = self.callPackage ./python/automx { };
  colorhash = self.callPackage ./python/colorhash { };
  duckling = self.callPackage ./python/duckling { };
  fbmessenger = self.callPackage ./python/fbmessenger { };
  mattermostwrapper = self.callPackage ./python/mattermostwrapper { };
  python-crfsuite = self.callPackage ./python/python-crfsuite { };
  rasa-core = self.callPackage ./python/rasa-core { };
  rasa-nlu = self.callPackage ./python/rasa-nlu { };
  sklearn-crfsuite = self.callPackage ./python/sklearn-crfsuite { };

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
