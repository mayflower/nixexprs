{ buildPythonPackage, fetchPypi, requests }:

buildPythonPackage rec {
  pname = "mattermostwrapper";
  version = "2.1";

  src = fetchPypi {
    inherit pname version;
    sha256 = "0w0d8fnv70w57x740bsr217pylzb7jfmadrkqs3ci9c2d8z6r7va";
  };

  propagatedBuildInputs = [ requests ];
}
