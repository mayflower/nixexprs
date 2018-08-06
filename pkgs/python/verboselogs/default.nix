{ buildPythonPackage, fetchPypi, humanfriendly, mock, pylint, astroid }:

buildPythonPackage rec {
  pname = "verboselogs";
  version = "1.7";

  src = fetchPypi {
    inherit pname version;
    sha256 = "09z4d1jiasn7k1hs5af2ckmnrd0i1d1m04bhfjhv7z6svzfdwgg3";
  };

  checkInputs = [ mock pylint astroid ];
}
