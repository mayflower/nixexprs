self: super: {
  automx = self.callPackage ./python/automx { };
  colorhash = self.callPackage ./python/colorhash { };
  duckling = self.callPackage ./python/duckling { };
  fbmessenger = self.callPackage ./python/fbmessenger { };
  mattermostwrapper = self.callPackage ./python/mattermostwrapper { };
  rasa-core = self.callPackage ./python/rasa-core { };
  rasa-nlu = self.callPackage ./python/rasa-nlu { };
  sklearn-crfsuite = self.callPackage ./python/sklearn-crfsuite { };
  postorius = super.postorius.overrideAttrs ({patches ? [], ...}: {
    patches = patches ++ [ ./postorius_users_can_create_lists.patch ];
  });

  # geopy FIXME
}
