{ stdenv, buildPythonPackage, fetchPypi, django-picklefield, arrow
, blessed, django, future }:

buildPythonPackage rec {
  pname = "django-q";
  version = "0.9.4";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1vvrl2rbwdnvpjdrfdpbfckggywh7jbvl3db0np1rbi1gx4dqz8a";
  };

  propagatedBuildInputs = [
    django-picklefield arrow blessed django future
  ];

  doCheck = false;

  meta = with stdenv.lib; {
    description = "A multiprocessing distributed task queue for Django";
    homepage = https://django-q.readthedocs.org;
    license = licenses.mit;
  };
}
