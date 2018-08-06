{ buildPythonPackage, fetchFromGitHub, numpy, gevent, matplotlib
, future, typing, boto3, tqdm, jsonschema, pyyaml, cloudpickle
, klein, requests, pathlib2, treq, duckling, sklearn-crfsuite
}:

buildPythonPackage rec {
  pname = "rasa-nlu";
  version = "0.12.3";

  src = fetchFromGitHub {
    owner = "RasaHQ";
    repo = "rasa_nlu";
    rev = version;
    sha256 = "1pck78x208178j1hf6v7i4djc161w7rzzy64w9kydz3875pflbxy";
  };

  patchPhase = ''
    sed -i /pathlib/d setup.py
  '';

  propagatedBuildInputs = [
    numpy gevent matplotlib future typing boto3 tqdm jsonschema
    pyyaml cloudpickle klein requests pathlib2 duckling sklearn-crfsuite
  ];

  doCheck = false;
  checkInputs = [
    treq
  ];
}
