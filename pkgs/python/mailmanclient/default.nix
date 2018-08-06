{ stdenv, buildPythonPackage, fetchFromGitLab, httplib2, six }:

buildPythonPackage rec {
  name = "mailmanclient-${version}";
  version = "3.2.0";

  src = fetchFromGitLab {
    owner = "mailman";
    repo = "mailmanclient";
    rev = version;
    sha256 = "0gspdcsvqc2zadz49f63mhgadw2k4zlqrypxc9nb0rzc8axzr3gv";
  };

  propagatedBuildInputs = [ httplib2 six ];

  # needs access to mailman REST API
  doCheck = false;

  meta = {
    homepage = "http://www.gnu.org/software/mailman/";
    description = "REST client for driving Mailman 3";
    license = stdenv.lib.licenses.lgpl3;
    platforms = stdenv.lib.platforms.linux;
    maintainers = [ stdenv.lib.maintainers.globin ];
  };
}
