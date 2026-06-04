{ stdenv, lib, buildPythonPackage, fetchFromGitHub, lxml, python-dateutil, setuptools }:

buildPythonPackage rec {
  pname = "automx";
  version = "1.1.2";

  src = fetchFromGitHub {
    owner = "sys4";
    repo = "automx";
    rev = "v${version}";
    sha256 = "1wmmsmfkrfxxxsjknj2bd80abfq5agrgfby8k3mfk4j2d6hizxj9";
  };

  propagatedBuildInputs = [ lxml python-dateutil ];

  pyproject = true;
  build-system = [ setuptools ];

  # no tests
  doCheck = false;

  postInstall = ''
    mkdir -p $out/share
    cp -Rv doc/man $out/share
    install -vD src/automx_wsgi.py -t $out/share/automx
    cp -Rv src/html $out/share/automx
    install -v src/html/index.html.en $out/share/automx/html/index.html
    install -vD src/conf/automx.conf* -t $out/etc
  '';

  meta = with lib; {
    description = "A mail client account configuration service, combining various autoconfiguration techniques in one webservice";
    homepage = "https://automx.org";
    license = licenses.gpl3Plus;
    maintainers = with maintainers; [ globin ];
  };
}
