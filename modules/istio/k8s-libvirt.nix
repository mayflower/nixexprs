{
  k8s = {
    deployment = {
      targetEnv = "libvirtd";
      libvirtd = {
        headless = true;
        memorySize = 8192;
        vccpu = 4;
      };
    };
  };
}
