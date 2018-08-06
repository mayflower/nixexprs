{ stdenv, buildPythonPackage, fetchPypi, lazr-delegates, nose }:

buildPythonPackage rec {
  pname = "lazr.config";
  version = "2.2";

  src = fetchPypi {
    inherit pname version;
    sha256 = "0xyphxcpld2wa4nm6i4a82vrsvrvy69z7q2q46km6riym4ivpii1";
  };

  propagatedBuildInputs = [ lazr-delegates ];
  checkInputs = [ nose ];

  meta = with stdenv.lib; {
    description = "Create configuration schemas, and process and validate configurations";
    maintainers = with maintainers; [ globin ];
    homepage = https://pypi.python.org/pypi/lazr.config;
    license = with licenses; [ lgpl3 ];
  };
}
