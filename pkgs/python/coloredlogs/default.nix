{ buildPythonPackage, fetchFromGitHub, humanfriendly, verboselogs }:

buildPythonPackage rec {
  pname = "coloredlogs";
  version = "10.0";

  src = fetchFromGitHub {
    owner = "xolox";
    repo = "python-coloredlogs";
    rev = version;
    sha256 = "0rdvp4dfvzhx7z7s2jdl3fv7x1hazgpy5gc7bcf05bnbv2iia54a";
  };

  propagatedBuildInputs = [ humanfriendly verboselogs ];

  doCheck = false;
}
