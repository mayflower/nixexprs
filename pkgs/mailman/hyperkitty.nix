{ stdenv, fetchFromGitLab, fetchpatch, python3 }:

python3.pkgs.buildPythonPackage rec {
  name = "hyperkitty-${version}";
  version = "1.2.0";

  src = fetchFromGitLab {
    owner = "mailman";
    repo = "hyperkitty";
    rev = "v${version}";
    sha256 = "1x6bp5y3583lw5cpylb61j2in3vc4npji9pk3xf1a5b6ak3visls";
  };

  propagatedBuildInputs = with python3.pkgs; [
    robot-detection django_extensions rjsmin cssmin django-mailman3
    django-haystack lockfile networkx dateutil defusedxml
    django-paintstore djangorestframework django django-q
    django_compressor beautifulsoup4 six psycopg2
  ];

  buildInputs = with python3.pkgs; [ coverage mock ];

  patches = [
    (fetchpatch {
      url = "https://gitlab.com/mailman/hyperkitty/merge_requests/88.patch";
      sha256 = "0cmmsicwfnqqfq8w0nh8m5gz1s3dksmzbyy2q10ampndfm99cii7";
    })
  ];

  doCheck = true;
  checkPhase = ''
    cd $NIX_BUILD_TOP/$sourceRoot
    PYTHONPATH=.:$PYTHONPATH python example_project/manage.py test \
      --settings=hyperkitty.tests.settings_test hyperkitty
  '';

  meta = {
    homepage = "http://www.gnu.org/software/mailman/";
    description = "Archiver for GNU Mailman v3";
    license = stdenv.lib.licenses.gpl3;
    platforms = stdenv.lib.platforms.linux;
    maintainers = [ stdenv.lib.maintainers.globin ];
  };
}
