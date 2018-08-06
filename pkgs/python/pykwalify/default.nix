{ buildPythonPackage, fetchPypi, docopt, pyyaml, python-dateutil
, pytest, testfixtures }:

buildPythonPackage rec {
  pname = "pykwalify";
  version = "1.5.2";

  src = fetchPypi {
    inherit pname version;
    sha256 = "04nprkzxhk771l5r4mxmm6qsyww6bxcp0qfp5c4n6cgdrrw6338d";
  };

  propagatedBuildInputs = [ docopt pyyaml python-dateutil ];
  checkInputs = [ pytest testfixtures ];
}
