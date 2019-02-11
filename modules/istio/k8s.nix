{
  k8s = { config, pkgs, lib, ... }: let

    istio = pkgs.stdenv.mkDerivation rec {
      name = "istio-${version}";
      #version = "master-20190209-09-16";
      version = "master-20190210-09-16";

      src = pkgs.fetchurl {
        url = "https://gcsweb.istio.io/gcs/istio-prerelease/daily-build/${version}/istio-${version}-linux.tar.gz";
        name = "istio-${version}-linux.tar.gz";
        #sha256 = "0il14kql2cchsl8rz1mqs8ghb8k0f45q8lhlc26py8fiwb3xwl2h";
        sha256 = "0pzi3a9nvkjkac1v1csa81c77j6bz944zbj3ckv6ip21amgbia76";
      };

      dontBuild = true;

      installPhase = ''
        mkdir -p $out
        rm -fr bin/
        for archive in install/kubernetes/helm/charts/*.tgz ; do
          tar xf $archive -C install/kubernetes/helm/
        done
        mv * $out/
      '';
      
      meta = {
        homepage = https://gcsweb.helm-istio.io/gcs/istio-prerelease/daily-build;
        license = lib.licenses.asl20;
        maintainers = with lib.maintainers; [];
      };
    };

  in {

    networking = {
      firewall = {
        trustedInterfaces = [  ];
        allowedUDPPorts = [  ];
        allowedTCPPorts = [ 443 6443 8080 ];
      };
    };

    environment.systemPackages = with pkgs; [
      dnsutils
      git
      istio
      kitty
      kubectl
      kubernetes-helm
      stern
      tcpdump
    ];
    
    services.kubernetes = {
      roles = [ "master" "node" ];
      masterAddress = "localhost";
      easyCerts = true;
      apiserver = {
      #  advertiseAddress = "127.0.0.1";
      #  insecurePort = 8080;
      };
      addons = {
        #dashboard = {
        #  enable = true;
        #};
        dns = {
          enable = true;
        };
      };
    };

    systemd.targets.kubectl-init = {
      description = "Initialize kubectl";
      wantedBy = [ "kubernetes.target" ];
      after = [ "kubernetes.target" ];
    };

    systemd.targets.helm = {
      description = "Initialize helm";
      wantedBy = [ "kubectl-init.target" ];
      after = [ "kubectl-init.target" ];
    };

    systemd.targets.istio = {
      description = "Install and initialize istio";
      wantedBy = [ "helm.target" ];
      after = [ "helm.target" ];
    };

    systemd.services.kubectl-init = {
      wantedBy = [ "kubernetes.target" ];
      after = [ "kubernetes.target" ];

      description = "Install config and wait for kubectl to be usable";

      preStart = ''
        mkdir -p ''${HOME}/.kube
      '';
      script = ''
        cat /etc/kubernetes/cluster-admin.kubeconfig > ''${HOME}/.kube/config
      '';
      postStart = ''
        while ! ${pkgs.kubectl}/bin/kubectl --namespace kube-system wait pods --selector=k8s-app --for=condition=Ready ; do sleep 2 ; done
      '';

      serviceConfig = {
        Type = "oneshot";
        RemainAfterExit = true;
        User = "root";
        Group = "root";
      };
    };

    systemd.services.tiller = {
      requiredBy = [ "helm.target" ];
      after = [ "kubectl-init.service" ];

      description = "helm init tiller";

      serviceConfig = {
        ExecStartPre = [
          "${pkgs.kubectl}/bin/kubectl apply -f ${istio}/install/kubernetes/helm/helm-service-account.yaml"
        ];
        ExecStart = [
          "${pkgs.kubernetes-helm}/bin/helm init --service-account tiller"
        ];
        ExecStartPost = [
          "${pkgs.kubectl}/bin/kubectl --namespace kube-system wait pod --selector=name=tiller --for=condition=Ready --timeout=2m"
        ];
        ExecStopPost = [
          "${pkgs.kubernetes-helm}/bin/helm reset --force"
        ];
        Type = "oneshot";
        RemainAfterExit = true;
        User = "root";
        Group = "root";
      };
    };

    systemd.services.istio-init = {
      requiredBy = [ "istio.target" ];
      bindsTo = [ "tiller.service" ];
      after = [ "tiller.service" ];

      description = "helm install istio-init";

      serviceConfig = {
        ExecStart = [
          "${pkgs.kubernetes-helm}/bin/helm install ${istio}/install/kubernetes/helm/istio-init --name istio-init --namespace istio-system"
        ];
        ExecStartPost = [
          "${pkgs.kubectl}/bin/kubectl --namespace istio-system wait jobs --selector=job-name --for=condition=Complete --timeout=2m"
        ];
        ExecStopPost = [
          "${pkgs.kubernetes-helm}/bin/helm delete --purge istio-init"
        ];
        Type = "oneshot";
        RemainAfterExit = true;
        User = "root";
        Group = "root";
      };
    };

    systemd.services.istio = {
      requiredBy = [ "istio.target" ];
      bindsTo = [ "istio-init.service" ];
      after = [ "istio-init.service" ];

      description = "helm install istio";

      serviceConfig = {
        ExecStart = [
          "${pkgs.kubernetes-helm}/bin/helm install ${istio}/install/kubernetes/helm/istio --name istio --namespace istio-system --set global.mtls.enabled=true"
        ];
        ExecStartPost = [
          "${pkgs.kubectl}/bin/kubectl --namespace istio-system wait pods --selector=release=istio --for=condition=Ready --timeout=5m"
        ];
        ExecStopPost = [
          "${pkgs.kubernetes-helm}/bin/helm delete --purge istio"
        ];
        Type = "oneshot";
        RemainAfterExit = true;
        User = "root";
        Group = "root";
      };
    };
  };
}
