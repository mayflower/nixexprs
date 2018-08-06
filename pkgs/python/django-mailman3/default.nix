{ stdenv, buildPythonPackage, fetchFromGitLab, fetchpatch, future
, mailmanclient, pytz, django-gravatar2, django, django-allauth
, django_compressor, mock
}:

buildPythonPackage rec {
  pname = "django-mailman3";
  version = "1.2.0";

  src = fetchFromGitLab {
    owner = "mailman";
    repo = "django-mailman3";
    rev = version;
    sha256 = "0f7qk66am12zj6vm53ajb714fyzc2z4w3v3plc0p97r9h70xv5k2";
  };

  patches = [
    (fetchpatch {
      url = "https://gitlab.com/mailman/django-mailman3/merge_requests/27.patch";
      sha256 = "0j6ry7c61ym7i733kbb6cawjwvn1qzc10qbvw60s8xmgv741gzlv";
    })
  ];

  propagatedBuildInputs = [
    mailmanclient pytz django-gravatar2 django django-allauth future
    django_compressor
  ];
  checkInputs = [ mock ];

  checkPhase = ''
    cd $NIX_BUILD_TOP/$sourceRoot
    PYTHONPATH=.:$PYTHONPATH django-admin.py test --settings=django_mailman3.tests.settings_test
  '';

  meta = with stdenv.lib; {
    description = "Django library for Mailman UIs";
    homepage = https://gitlab.com/mailman/django-mailman3;
    license = licenses.gpl3;
    maintainers = with maintainers; [ globin ];
  };
}
