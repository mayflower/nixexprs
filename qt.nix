{ nixpkgs
, supportedSystems ? [ "x86_64-linux" "x86_64-darwin" ]
}:

with import <nixpkgs/pkgs/top-level/release-lib.nix> { inherit supportedSystems; };

(mapTestOn {
  # Current LTS
  qt56 = {
    qtbase = all;
    qtconnectivity = all;
    qtdeclarative = all;
    qtdoc = all;
    qtgraphicaleffects = all;
    qtimageformats = all;
    qtlocation = all;
    qtmultimedia = all;
    qtquickcontrols = all;
    qtquickcontrols2 = all;
    qtscript = all;
    qtsensors = all;
    qtserialport = all;
    qtsvg = all;
    qttools = all;
    qttranslations = all;
    qtwebchannel = all;
    qtwebengine = all;
    qtwebkit = all;
    qtwebsockets = all;
    qtxmlpatterns = all;
  };

  qt57 = {
    qtbase = all;
    qtconnectivity = all;
    qtdeclarative = all;
    qtdoc = all;
    qtgraphicaleffects = all;
    qtimageformats = all;
    qtlocation = all;
    qtmultimedia = all;
    qtquickcontrols = all;
    qtquickcontrols2 = all;
    qtscript = all;
    qtsensors = all;
    qtserialport = all;
    qtsvg = all;
    qttools = all;
    qttranslations = all;
    qtwebchannel = all;
    qtwebengine = all;
    qtwebkit = all;
    qtwebsockets = all;
    qtxmlpatterns = all;
  };

  # Latest
  qt58 = {
    qtbase = all;
    qtconnectivity = all;
    qtdeclarative = all;
    qtdoc = all;
    qtgraphicaleffects = all;
    qtimageformats = all;
    qtlocation = all;
    qtmultimedia = all;
    qtquickcontrols = all;
    qtquickcontrols2 = all;
    qtscript = all;
    qtsensors = all;
    qtserialport = all;
    qtsvg = all;
    qttools = all;
    qttranslations = all;
    qtwebchannel = all;
    qtwebengine = all;
    qtwebkit = all;
    qtwebsockets = all;
    qtxmlpatterns = all;
  };
  qtcreator = all;
})
