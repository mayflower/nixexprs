{ stdenv, buildPythonPackage, fetchPypi, zope_interface, nose }:

buildPythonPackage rec {
  pname = "lazr.delegates";
  version = "2.0.4";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1rdnl85j9ayp8n85l0ciip621j9dcziz5qnmv2m7krgwgcn31vfx";
  };

  propagatedBuildInputs = [ nose zope_interface ];

  doCheck = false;

  meta = with stdenv.lib; {
    description = "Easily write objects that delegate behavior";
    maintainers = with maintainers; [ globin ];
    homepage = https://pypi.python.org/pypi/lazr.delegates;
    license = with licenses; [ lgpl3 ];
  };
}
