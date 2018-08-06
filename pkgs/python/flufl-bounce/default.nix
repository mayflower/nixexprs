{ stdenv, buildPythonPackage, fetchPypi, zope_interface, atpublic }:

buildPythonPackage rec {
  pname = "flufl.bounce";
  version = "3.0";

  src = fetchPypi {
    inherit pname version;
    sha256 = "0k5kjqa3x6gvwwxyzb2vwi1g1i6asm1zw5fivylxz3d583y4kid2";
  };

  propagatedBuildInputs = [ atpublic zope_interface ];

  doCheck = false;

  meta = with stdenv.lib; {
    description = "Email bounce detectors";
    maintainers = with maintainers; [ globin ];
    homepage = "https://pypi.python.org/pypi/flufl.bounce";
    license = licenses.lgpl3;
  };
}
