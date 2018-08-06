{ stdenv, buildPythonPackage, fetchPypi, nose }:

buildPythonPackage rec {
  pname = "lazr.smtptest";
  version = "2.0.3";

  src = fetchPypi {
    inherit pname version;
    sha256 = "05bfpy77n815jrdwpppjlg9qpsics8nsavp3n4id0zvscy81ijlx";
  };

  checkInputs = [ nose ];

  meta = with stdenv.lib; {
    description = "A test framework for SMTP based applications";
    maintainers = with maintainers; [ globin ];
    homepage = https://pypi.python.org/pypi/lazr.smtptest;
    license = with licenses; [ lgpl3 ];
  };
}
