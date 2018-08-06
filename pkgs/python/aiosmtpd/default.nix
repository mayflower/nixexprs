{ stdenv, buildPythonPackage, fetchPypi, atpublic }:

buildPythonPackage rec {
  pname = "aiosmtpd";
  version = "1.1";

  src = fetchPypi {
    inherit pname version;
    sha256 = "0mx5f0i9k84kfwxjn2q8800mkzmqvgqg2nw39fq8x7s5n8mwvf4a";
  };

  propagatedBuildInputs = [ atpublic ];

  # network access
  doCheck = false;

  meta = with stdenv.lib; {
    description = "asyncio based SMTP server";
    maintainers = with maintainers; [ globin ];
    license = with licenses; [ asl20 ];
    homepage = https://pypi.python.org/pypi/aiosmtpd;
  };
}
