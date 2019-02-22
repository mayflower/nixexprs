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

  version = "4.1.1";
  srcs = let
    baseUrl = "https://github.com/conversejs/converse.js/releases/download";
  in {
    favicon = ../pkgs/service-overview/assets/img/favicons/favicon.ico;
    assets = fetchzip {
      url = "${baseUrl}/v${version}/converse-assets-${version}.zip";
      sha256 = "194cn7yh9mlnv7p1w63zsci6fb40m6dvwnfkk47snvh4l9jmg2xy";
    };
  };
in
stdenv.mkDerivation rec {
  name = "conversejs-${version}";

  phases = [ "installPhase" ];

  installPhase = with stdenv.lib; ''
    mkdir -p $out/img
    cp ${srcs.favicon} $out/img/favicon.ico
    cp -r ${srcs.assets}/* $out
    ${optionalString withLibSignal "cp ${libsignal} $out/libsignal-protocol.js"}

    cat >> $out/index.html << EOF
    <!doctype html>
    <html lang="en">
    <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Mayflower XMPP Webchat</title>
      <link rel="shortcut icon" href="/img/favicon.ico">
      <link rel="stylesheet" type="text/css" media="screen" href="/css/converse.css">
      ${optionalString withLibSignal ''<script src="/libsignal-protocol.js"></script>''}
      <script src="/converse.js"></script>
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
