{ buildPythonPackage, fetchPypi, requests, responses, pytestcov, pytest
}:

buildPythonPackage rec {
  pname = "fbmessenger";
  version = "5.1.0";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1rs5kplli85y23ji9b2kdjl1ws8478p4jx73niy9b2sgjid2srs4";
  };

  propagatedBuildInputs = [ requests ];
  checkInputs = [ responses pytestcov pytest ];

  postPatch = ''
    sed -i /pytest-catchlog/d setup.py
  '';

  doCheck = false;
}
