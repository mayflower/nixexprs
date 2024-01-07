self: super: {
  colorhash = self.callPackage ./python/colorhash { };
  duckling = self.callPackage ./python/duckling { };
  fbmessenger = self.callPackage ./python/fbmessenger { };
  mattermostwrapper = self.callPackage ./python/mattermostwrapper { };
  rasa-core = self.callPackage ./python/rasa-core { };
  rasa-nlu = self.callPackage ./python/rasa-nlu { };
  sklearn-crfsuite = self.callPackage ./python/sklearn-crfsuite { };
  privacyidea-ldap-proxy = self.callPackage ./python/privacyidea-ldap-proxy.nix { };
}
