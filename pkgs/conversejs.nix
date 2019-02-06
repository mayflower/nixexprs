{ stdenv, fetchurl, fetchzip, withLibSignal ? true }:

let
  ls-version = "1.3.0";
  libsignal = fetchurl {
    url = "https://raw.githubusercontent.com/signalapp/libsignal-protocol-javascript/v${ls-version}/dist/libsignal-protocol.js";
    sha256 = "0mrxyxfzxq6c9pkwmw9ixdyv6zwzsvzz4jx59wqrng3c2mbbfsrf";

    meta = with stdenv.lib; {
      description = "Signal Protocol library for JavaScript";
      homepage = https://github.com/signalapp/libsignal-protocol-javascript;
      license = licenses.gpl3;
    };
  };

  version = "4.1.0";
  srcs = let
    baseUrl = "https://github.com/conversejs/converse.js/releases/download";
  in {
    favicon = ../pkgs/service-overview/assets/img/favicons/favicon.ico;
    css = fetchurl {
      url = "${baseUrl}/v${version}/converse.min.css";
      sha256 = "06whcy3km1gcclgzzlmfwz71fzh7ip3qb2nsd6049ykfv5gq8xkf";
    };
    js = fetchurl {
      url = "${baseUrl}/v${version}/converse.min.js";
      sha256 = "1nazi6w0qgxz344p9hsk4i06hldqdylgxaqq618z52b0xxdqmpxw";
    };
    locales = fetchzip {
      url = "${baseUrl}/v${version}/locale.zip";
      sha256 = "1ym7ziz59lwgxpfdjlc134pvcb9w26m009w0phq4b9c69msvabbi";
    };
    sounds = fetchzip {
      url = "${baseUrl}/v${version}/sounds.zip";
      sha256 = "0d1f3zx1d1brd5l1pxv48mdsqdcnvagxpl7474d7rw3lzggch879";
    };
    webfonts = fetchzip {
      url = "${baseUrl}/v${version}/webfonts.zip";
      sha256 = "18xgc247clzraq9x42fj07ajjr8bvvavbwb110qfzvbb2zz2s8ff";
    };
  };
in
stdenv.mkDerivation rec {
  name = "conversejs-${version}";

  phases = [ "installPhase" ];

  installPhase = with stdenv.lib; ''
    mkdir -p $out/{css,img,js,fonts}
    cp ${srcs.css} $out/css/converse.min.css
    cp ${srcs.js} $out/js/converse.min.js
    cp ${srcs.favicon} $out/img/favicon.ico
    cp -r ${srcs.locales} $out/locales
    cp -r ${srcs.sounds} $out/sounds
    cp -r ${srcs.webfonts}/webfonts $out/css/webfonts
    ${optionalString withLibSignal "cp ${libsignal} $out/js/libsignal-protocol.js"}

    cat >> $out/index.html << EOF
    <!doctype html>
    <html lang="en">
    <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Mayflower XMPP Webchat</title>
      <link rel="shortcut icon" href="/img/favicon.ico">
      <link rel="stylesheet" type="text/css" media="screen" href="/css/converse.min.css">
      ${optionalString withLibSignal ''<script src="/js/libsignal-protocol.js"></script>''}
      <script src="/js/converse.min.js"></script>
    </head>
    <body class="converse-fullscreen">
    <div id="conversejs-bg"></div>
    <script>
      converse.initialize({
        authentication: 'login',
        allow_non_roster_messaging: true,
        allow_registration: false,
        auto_away: 300,
        auto_reconnect: true,
        bosh_service_url: 'https://jabber.mayflower.de/http-bind/',
        default_domain: 'mayflower.de',
        domain_placeholder: 'mayflower.de',
        message_archiving: 'always',
        muc_domain: 'conference.mayflower.de',
        view_mode: 'fullscreen'
      });
    </script>
    </body>
    </html>
    EOF
  '';

  meta = with stdenv.lib; {
    description = "Web-based XMPP/Jabber chat client written in JavaScript with OMEMO support";
    homepage = https://conversejs.org;
    license = licenses.mpl20;
    maintainers = with maintainers; [ willibutz ];
  };
}
