{ stdenv, lib, fetchFromGitHub, buildPythonPackage
, pytestrunner, dateutil, JPype1, pytestcov, pytest
, autoPatchelfHook
}:

buildPythonPackage rec {
  pname = "duckling";
  version = "1.8.0";

  src = fetchFromGitHub {
    owner = "FraBle";
    repo = "python-duckling";
    rev = "v${version}";
    sha256 = "1w1ckjs3i6hmq6d6pc8mzckvqckp69a69rmj9j105n042f9rz1z0";
  };

  propagatedBuildInputs = [ dateutil JPype1 pytestrunner ];
  checkInputs = [ pytestcov pytest ];
  doCheck = false;

  meta = with lib; {
    description = "Python wrapper for wit.ai's Duckling Clojure library";
    license = licenses.asl20;
    maintainers = with maintainers; [ globin ];
  };
}
