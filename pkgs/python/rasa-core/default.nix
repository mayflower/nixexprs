{ buildPythonPackage, fetchFromGitHub, coloredlogs, graphviz, Keras
, ConfigArgParse, requests, networkx, fakeredis, typing, flask-cors
, flask, rasa-nlu, slackclient, APScheduler, pykwalify, jsonpickle
, twilio, fbmessenger, colorhash, python-telegram-bot, scikitlearn
, h5py, mattermostwrapper, ruamel_yaml, tensorflow, grpcio, termcolor
, astor, gast, pygraphviz
}:

buildPythonPackage rec {
  pname = "rasa-core";
  version = "0.9.6";

  src = fetchFromGitHub {
    owner = "RasaHQ";
    repo = "rasa_core";
    rev = version;
    sha256 = "06mncqagnh7iysx74f9033gffbax661zbx4x7r18g24q5182xpib";
  };

  propagatedBuildInputs = [
    coloredlogs graphviz Keras ConfigArgParse requests networkx
    fakeredis typing flask-cors flask rasa-nlu slackclient APScheduler
    pykwalify jsonpickle twilio fbmessenger colorhash python-telegram-bot
    scikitlearn h5py mattermostwrapper ruamel_yaml tensorflow grpcio
    termcolor astor gast
  ];
  checkInputs = [ pygraphviz ];
  doCheck = false;

  # postPatch = ''
  #   substituteInPlace setup.py \
  #     --replace 'pykwalify<=1.6.0' pykwalify
  # '';
}
