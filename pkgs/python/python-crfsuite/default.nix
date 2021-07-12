{ stdenv, lib, fetchPypi, buildPythonPackage }:

buildPythonPackage rec {
  pname = "python-crfsuite";
  version =  "0.9.5";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1cyadk40p18c4wbjvvanbkm1wb3cr5vk3d12g7drqhq3l14hkwa7";
  };

  meta = with lib; {
    description = "Python bindings to CRFsuite";
    license = licenses.mit;
    maintainers = with maintainers; [ globin ];
  };
}
