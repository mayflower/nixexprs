{ stdenv, buildPythonPackage, fetchPypi }:

buildPythonPackage rec {
  pname = "flufl.testing";
  version = "0.8";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1nkm95mhcfhl4x5jgs6y97ikszaxsfh07nyawsih6cxxm6l62641";
  };

  # no tests
  doCheck = false;

  meta = with stdenv.lib; {
    description = "Random collection of testing helpers";
    maintainers = with maintainers; [ globin ];
    homepage = "https://pypi.python.org/pypi/flufl.testing";
    license = licenses.lgpl3;
  };
}
