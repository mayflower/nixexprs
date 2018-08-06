{ stdenv, buildPythonPackage, fetchPypi, atpublic }:

buildPythonPackage rec {
  pname = "flufl.i18n";
  version = "2.0.1";

  src = fetchPypi {
    inherit pname version;
    sha256 = "17w1gcfi6sy5v86ngdk437zwsvbpijhllvrxp4j3w825xyzym4z3";
  };

  propagatedBuildInputs = [ atpublic ];

  meta = with stdenv.lib; {
    homepage = "https://pypi.python.org/pypi/flufl.i18n";
    description = "A high level API for Python internationalization";
    license = licenses.lgpl3;
  };
}
