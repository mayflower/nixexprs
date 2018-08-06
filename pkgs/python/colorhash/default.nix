{ buildPythonPackage, fetchPypi }:

buildPythonPackage rec {
  pname = "colorhash";
  version = "1.0.2";

  src = fetchPypi {
    inherit pname version;
    sha256 = "0r777ry4c8d24j7g7p8b95smnfr64liljfc0zvjxcpidv31jbyg0";
    extension = "tar.bz2";
  };

  #propagatedBuildInputs = [ humanfriendly verboselogs ];

  doCheck = false;
}
