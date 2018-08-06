{ stdenv, fetchPypi, buildPythonPackage, tabulate, python-crfsuite, tqdm, six, scikitlearn, pytest }:

buildPythonPackage rec {
  pname = "sklearn-crfsuite";
  version =  "0.3.6";

  src = fetchPypi {
    inherit pname version;
    sha256 = "07l62xvvw4cbpjjqls2jif77h15c3j4m4qwslxwaf0ay0p9sln9g";
  };

  propagatedBuildInputs = [ tabulate python-crfsuite tqdm six ];
  checkInputs = [ scikitlearn pytest ];

  checkPhase = ''
    py.test
  '';

  meta = with stdenv.lib; {
    description = "A thin CRFsuite wrapper which provides interface simlar to scikit-learn";
    license = licenses.mit;
    maintainers = with maintainers; [ globin ];
  };
}
