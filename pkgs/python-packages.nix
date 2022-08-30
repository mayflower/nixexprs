self: super: {
  automx = self.callPackage ./python/automx { };
  colorhash = self.callPackage ./python/colorhash { };
  duckling = self.callPackage ./python/duckling { };
  fbmessenger = self.callPackage ./python/fbmessenger { };
  mattermostwrapper = self.callPackage ./python/mattermostwrapper { };
  rasa-core = self.callPackage ./python/rasa-core { };
  rasa-nlu = self.callPackage ./python/rasa-nlu { };
  sklearn-crfsuite = self.callPackage ./python/sklearn-crfsuite { };
  # geopy FIXME
  pytest-xdist = super.pytest-xdist.overridePythonAttrs(old: {
    # binfmt? cpu_exec: assertion failed: (cpu == current_cpu)
    doCheck = super.pytest-xdist.system != "aarch64-linux";
  });
}
