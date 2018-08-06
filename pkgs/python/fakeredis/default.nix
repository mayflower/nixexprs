{ buildPythonPackage, fetchPypi, redis }:

buildPythonPackage rec {
  pname = "fakeredis";
  version = "0.10.3";

  src = fetchPypi {
    inherit pname version;
    sha256 = "044k8k05wlhky43q98ml73c2ghms09k1j9s2ybvrdvspxia6d3j8";
  };

  propagatedBuildInputs = [ redis ];
}
