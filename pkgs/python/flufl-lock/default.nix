{ stdenv, buildPythonPackage, fetchPypi, atpublic }:

buildPythonPackage rec {
  pname = "flufl.lock";
  version = "3.2";

  src = fetchPypi {
    inherit pname version;
    sha256 = "0nzzd6l30ff6cwsrlrb94xzfja4wkyrqv3ydc6cz0hdbr766mmm8";
  };

  propagatedBuildInputs = [ atpublic ];

  meta = with stdenv.lib; {
    description = "NFS-safe file locking with timeouts for POSIX systems";
    maintainers = with maintainers; [ globin ];
    homepage = "https://pypi.python.org/pypi/flufl.lock";
    license = licenses.lgpl3;
  };
}
