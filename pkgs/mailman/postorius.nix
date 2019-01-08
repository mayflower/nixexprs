{ stdenv, fetchFromGitLab, fetchpatch, python3 }:

python3.pkgs.buildPythonPackage rec {
  pname = "postorius";
  version = "1.2.2";

  src = fetchFromGitLab {
    owner = "mailman";
    repo = "postorius";
    rev = version;
    sha256 = "1ll449d0gb6xp62jgvl9842m4prm4jg5wyy4szdqx35j0yv0hhlm";
  };

  propagatedBuildInputs = with python3.pkgs; [
    mailmanclient django django-mailman3 beautifulsoup4 vcrpy mock psycopg2
  ];

  patches = [ ./users_can_create_lists.patch ];

  postInstall = ''
    mkdir -p $out/share/postorius
    cp -R . $out/share/postorius
  '';

  checkPhase = ''
    cd $NIX_BUILD_TOP/$sourceRoot
    PYTHONPATH=.:$PYTHONPATH python example_project/manage.py test --settings=test_settings postorius
  '';

  doCheck = false; # FIXME: remove with 1.2.3

  meta = {
    homepage = "http://www.gnu.org/software/mailman/";
    description = "Web UI for GNU Mailman";
    license = stdenv.lib.licenses.gpl3;
    platforms = stdenv.lib.platforms.linux;
    maintainers = [ stdenv.lib.maintainers.globin ];
  };
}
