{ stdenv, buildPythonPackage, fetchPypi }:

buildPythonPackage rec {
  pname = "atpublic";
  version = "0.4";

  src = fetchPypi {
    inherit pname version;
    sha256 = "0ihmmcqaq7py4f8bh20crhaw36avdq9d5ams3ikr4hdlap7ilagk";
  };

  doCheck = false;

  meta = with stdenv.lib; {
    description = "A very simple decorator and function which populates a module’s __all__";
    maintainers = with maintainers; [ globin ];
    homepage = https://pypi.python.org/pypi/atpublic;
    license = licenses.asl20;
  };
}
