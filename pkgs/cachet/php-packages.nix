{composerEnv, fetchurl, fetchgit ? null, fetchFromGitHub, fetchhg ? null, fetchsvn ? null, noDev ? false}:

let
  packages = {
    "alt-three/bus" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "alt-three-bus-21d1623520c0ad48acb72420fd7f986cd23f349a";
        src = fetchurl {
          url = "https://api.github.com/repos/AltThree/Bus/zipball/21d1623520c0ad48acb72420fd7f986cd23f349a";
          sha256 = "1gw9r7awcnam7lmxgq8wq66fi3bs5a3jcmknzm5m9wsvc995zpkk";
        };
      };
    };
    "alt-three/validator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "alt-three-validator-65ffc90cda5589052f0dac124d588946dfffd803";
        src = fetchurl {
          url = "https://api.github.com/repos/AltThree/Validator/zipball/65ffc90cda5589052f0dac124d588946dfffd803";
          sha256 = "0bgyfdd5hyr2jl9a2mgh70hi8j1bkpraaawzfq5ika7b39pflz0y";
        };
      };
    };
    "asm89/stack-cors" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "asm89-stack-cors-b9c31def6a83f84b4d4a40d35996d375755f0e08";
        src = fetchurl {
          url = "https://api.github.com/repos/asm89/stack-cors/zipball/b9c31def6a83f84b4d4a40d35996d375755f0e08";
          sha256 = "0629c22fhvkvbq6xgfkaain7cy67lfkrlny26l2665gsrdlyhm6a";
        };
      };
    };
    "aws/aws-crt-php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "aws-aws-crt-php-3942776a8c99209908ee0b287746263725685732";
        src = fetchurl {
          url = "https://api.github.com/repos/awslabs/aws-crt-php/zipball/3942776a8c99209908ee0b287746263725685732";
          sha256 = "0g4vjln6s1419ydljn5m64kzid0b7cplbc0nwn3y4cj72408fyiz";
        };
      };
    };
    "aws/aws-sdk-php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "aws-aws-sdk-php-61875282d6ec1c441ca0af94fc00a5f516db12ef";
        src = fetchurl {
          url = "https://api.github.com/repos/aws/aws-sdk-php/zipball/61875282d6ec1c441ca0af94fc00a5f516db12ef";
          sha256 = "01iq79ngrf3pgwfd8ll2vims475d9l5qpficakjh3b1x5dhv9c4x";
        };
      };
    };
    "brick/math" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "brick-math-ca57d18f028f84f777b2168cd1911b0dee2343ae";
        src = fetchurl {
          url = "https://api.github.com/repos/brick/math/zipball/ca57d18f028f84f777b2168cd1911b0dee2343ae";
          sha256 = "1nr1grrb9g5g3ihx94yk0amp8zx8prkkvg2934ygfc3rrv03cq9w";
        };
      };
    };
    "bugsnag/bugsnag" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "bugsnag-bugsnag-ad2b40ba8a512d9b19ed0ff8fab169184d3eb775";
        src = fetchurl {
          url = "https://api.github.com/repos/bugsnag/bugsnag-php/zipball/ad2b40ba8a512d9b19ed0ff8fab169184d3eb775";
          sha256 = "03947vi521xnwa9qg82gz5y1mp369dwd653jbs7cjq820idk2v44";
        };
      };
    };
    "bugsnag/bugsnag-laravel" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "bugsnag-bugsnag-laravel-ea7ecfe9c73aae0f8004f12f31df039675fec6df";
        src = fetchurl {
          url = "https://api.github.com/repos/bugsnag/bugsnag-laravel/zipball/ea7ecfe9c73aae0f8004f12f31df039675fec6df";
          sha256 = "09vyb2k6g2nx825bs7vnlhvizlj9fklkp4627gfgpr0i6yd9yipf";
        };
      };
    };
    "bugsnag/bugsnag-psr-logger" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "bugsnag-bugsnag-psr-logger-366430a94d983488d265c1068f47d78ebfbacd74";
        src = fetchurl {
          url = "https://api.github.com/repos/bugsnag/bugsnag-psr-logger/zipball/366430a94d983488d265c1068f47d78ebfbacd74";
          sha256 = "0g2bcgi40id4y69i6hi8szn8h75mrbg9284n0cxd57qvxr9c4rrz";
        };
      };
    };
    "cachethq/badger" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "cachethq-badger-b04929db8ad35e40bfccd578ac0c9d89af6c5738";
        src = fetchurl {
          url = "https://api.github.com/repos/mayflower/Badger/zipball/b04929db8ad35e40bfccd578ac0c9d89af6c5738";
          sha256 = "02sanarcmcjrb754mpr3cymjysi7fza41j0mb7migmrymc887sz9";
        };
      };
    };
    "cachethq/emoji" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "cachethq-emoji-566c190b30157b135914922e0e19aa2703c50083";
        src = fetchurl {
          url = "https://api.github.com/repos/mayflower/Emoji/zipball/566c190b30157b135914922e0e19aa2703c50083";
          sha256 = "091nif97mb5vnbiq59dw9sm66h1zkd6jn4rgk38x4j6snb05z13p";
        };
      };
    };
    "cachethq/twitter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "cachethq-twitter-fd117f15a97e9a1401c8f5466b14ba533372dda5";
        src = fetchurl {
          url = "https://api.github.com/repos/mayflower/Twitter/zipball/fd117f15a97e9a1401c8f5466b14ba533372dda5";
          sha256 = "0a5mvkpmzvr8kjhwir5ky7h0mbk3kbbpld5l4akixkqvf5smrhfx";
        };
      };
    };
    "chillerlan/php-qrcode" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "chillerlan-php-qrcode-bf0382aaf2f79fa41c2dcb0f216675f74d633fe7";
        src = fetchurl {
          url = "https://api.github.com/repos/chillerlan/php-qrcode/zipball/bf0382aaf2f79fa41c2dcb0f216675f74d633fe7";
          sha256 = "1f7isqswcj2gprmr24nvhspcpp85zarnzaic6d4id83zbmkqkb3h";
        };
      };
    };
    "chillerlan/php-traits" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "chillerlan-php-traits-264759946b6aaeb427346b749fc9639b790b8e7f";
        src = fetchurl {
          url = "https://api.github.com/repos/chillerlan/php-traits/zipball/264759946b6aaeb427346b749fc9639b790b8e7f";
          sha256 = "0ysp5hy6vpy2qjszwn8wlcsw599a8ar150fyf5l1ldrpy6n8bk0d";
        };
      };
    };
    "composer/ca-bundle" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-ca-bundle-4c679186f2aca4ab6a0f1b0b9cf9252decb44d0b";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/ca-bundle/zipball/4c679186f2aca4ab6a0f1b0b9cf9252decb44d0b";
          sha256 = "1rwd8mf34mwz5hhw98rv5372p2gj99clx45dcaqrzkmxjd1f2jbh";
        };
      };
    };
    "doctrine/cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-cache-331b4d5dbaeab3827976273e9356b3b453c300ce";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/cache/zipball/331b4d5dbaeab3827976273e9356b3b453c300ce";
          sha256 = "1ksr3460a5dpqgq5kgy2l7kdz7fairpvmip8nwaz9y833r5hnnyz";
        };
      };
    };
    "doctrine/dbal" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-dbal-dc9b3c3c8592c935a6e590441f9abc0f9eba335b";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/dbal/zipball/dc9b3c3c8592c935a6e590441f9abc0f9eba335b";
          sha256 = "0dzb1mg5al0pw5p0jbrlml2788w1mh5bb3y7nbhacag0i8hmilmk";
        };
      };
    };
    "doctrine/deprecations" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-deprecations-9504165960a1f83cc1480e2be1dd0a0478561314";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/deprecations/zipball/9504165960a1f83cc1480e2be1dd0a0478561314";
          sha256 = "04kpbzk5iw86imspkg7dgs54xx877k9b5q0dfg2h119mlfkvxil6";
        };
      };
    };
    "doctrine/event-manager" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-event-manager-41370af6a30faa9dc0368c4a6814d596e81aba7f";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/event-manager/zipball/41370af6a30faa9dc0368c4a6814d596e81aba7f";
          sha256 = "0pn2aiwl4fvv6fcwar9alng2yrqy8bzc58n4bkp6y2jnpw5gp4m8";
        };
      };
    };
    "doctrine/inflector" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-inflector-8b7ff3e4b7de6b2c84da85637b59fd2880ecaa89";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/inflector/zipball/8b7ff3e4b7de6b2c84da85637b59fd2880ecaa89";
          sha256 = "1l83jbj4k59m1agi041gzx1rxix1wzxw9mvnivmg1hqr158149n7";
        };
      };
    };
    "doctrine/lexer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-lexer-c268e882d4dbdd85e36e4ad69e02dc284f89d229";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/lexer/zipball/c268e882d4dbdd85e36e4ad69e02dc284f89d229";
          sha256 = "12g069nljl3alyk15884nd1jc4mxk87isqsmfj7x6j2vxvk9qchs";
        };
      };
    };
    "dragonmantank/cron-expression" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "dragonmantank-cron-expression-be85b3f05b46c39bbc0d95f6c071ddff669510fa";
        src = fetchurl {
          url = "https://api.github.com/repos/dragonmantank/cron-expression/zipball/be85b3f05b46c39bbc0d95f6c071ddff669510fa";
          sha256 = "09k5cj8bay6jkphjl5ngfx7qb17dxnlvpf6918a9ms8am731s2a6";
        };
      };
    };
    "egulias/email-validator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "egulias-email-validator-0dbf5d78455d4d6a41d186da50adc1122ec066f4";
        src = fetchurl {
          url = "https://api.github.com/repos/egulias/EmailValidator/zipball/0dbf5d78455d4d6a41d186da50adc1122ec066f4";
          sha256 = "00kwb8rhk1fq3a1i152xniipk3y907q1v5r3szqbkq5rz82dwbck";
        };
      };
    };
    "fideloper/proxy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "fideloper-proxy-c073b2bd04d1c90e04dc1b787662b558dd65ade0";
        src = fetchurl {
          url = "https://api.github.com/repos/fideloper/TrustedProxy/zipball/c073b2bd04d1c90e04dc1b787662b558dd65ade0";
          sha256 = "05jzgjj4fy5p1smqj41b5qxj42zn0mnczvsaacni4fmq174mz4gy";
        };
      };
    };
    "fruitcake/laravel-cors" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "fruitcake-laravel-cors-1d127dbec313e2e227d65e0c483765d8d7559bf6";
        src = fetchurl {
          url = "https://api.github.com/repos/fruitcake/laravel-cors/zipball/1d127dbec313e2e227d65e0c483765d8d7559bf6";
          sha256 = "0igxrf1kbfnaddp7s1lw6w79n8h9yb8z5gck09k0d5qy2qv3mjym";
        };
      };
    };
    "graham-campbell/binput" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "graham-campbell-binput-9fc00fdaec0eec0a3744b5f19b82e9661f2b334a";
        src = fetchurl {
          url = "https://api.github.com/repos/GrahamCampbell/Laravel-Binput/zipball/9fc00fdaec0eec0a3744b5f19b82e9661f2b334a";
          sha256 = "04xjd167s5c64h1pdrkgfvbs4n1zp6mrg6kxkp8abwgnlw4w0vl3";
        };
      };
    };
    "graham-campbell/exceptions" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "graham-campbell-exceptions-0caee9f11559fa9aa8cfad048eb34bd4bc59915a";
        src = fetchurl {
          url = "https://api.github.com/repos/GrahamCampbell/Laravel-Exceptions/zipball/0caee9f11559fa9aa8cfad048eb34bd4bc59915a";
          sha256 = "0am4va6avfxr7mnffs3z4f9m4i3mf4zm7z64y5gkkvfv5qa8w68d";
        };
      };
    };
    "graham-campbell/guzzle-factory" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "graham-campbell-guzzle-factory-618cf7220b177c6d9939a36331df937739ffc596";
        src = fetchurl {
          url = "https://api.github.com/repos/GrahamCampbell/Guzzle-Factory/zipball/618cf7220b177c6d9939a36331df937739ffc596";
          sha256 = "078kgakcnn90blc4bijxmk516wwarg1bsnsm1q0kw3gf3aa7dwk5";
        };
      };
    };
    "graham-campbell/markdown" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "graham-campbell-markdown-275f96e5b1a2f86f3239eb2c2c5262790725f4ba";
        src = fetchurl {
          url = "https://api.github.com/repos/GrahamCampbell/Laravel-Markdown/zipball/275f96e5b1a2f86f3239eb2c2c5262790725f4ba";
          sha256 = "0dz75rh5k3d5azjnlixd0sq4yn3hwrxq68b9x6rrnj511vl05b3m";
        };
      };
    };
    "graham-campbell/result-type" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "graham-campbell-result-type-0690bde05318336c7221785f2a932467f98b64ca";
        src = fetchurl {
          url = "https://api.github.com/repos/GrahamCampbell/Result-Type/zipball/0690bde05318336c7221785f2a932467f98b64ca";
          sha256 = "0a6kj3vxmhr1wh2kggmrl6y41hkg19jc0iq8qw095lf11mr4bd83";
        };
      };
    };
    "graham-campbell/security" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "graham-campbell-security-2206db3f70bb8312b9321033f4686a24125df41d";
        src = fetchurl {
          url = "https://api.github.com/repos/GrahamCampbell/Laravel-Security/zipball/2206db3f70bb8312b9321033f4686a24125df41d";
          sha256 = "064n29yjqqfh9qv0wn33rf9240v12fzsndwzwyanwmrgxbxfasi2";
        };
      };
    };
    "graham-campbell/security-core" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "graham-campbell-security-core-f5a98c9b4eb079f76c7dcc64d035c3a310cc9e5f";
        src = fetchurl {
          url = "https://api.github.com/repos/GrahamCampbell/Security-Core/zipball/f5a98c9b4eb079f76c7dcc64d035c3a310cc9e5f";
          sha256 = "1hlnaad9fhi993cbr6yh5vrxjfcp0nk1dkn1i3r3kxh4322y35bg";
        };
      };
    };
    "guzzlehttp/guzzle" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "guzzlehttp-guzzle-9d4290de1cfd701f38099ef7e183b64b4b7b0c5e";
        src = fetchurl {
          url = "https://api.github.com/repos/guzzle/guzzle/zipball/9d4290de1cfd701f38099ef7e183b64b4b7b0c5e";
          sha256 = "1dlrdpil0173cmx73ghy8iis2j0lk00dzv3n166d0riky21n8djb";
        };
      };
    };
    "guzzlehttp/promises" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "guzzlehttp-promises-fe752aedc9fd8fcca3fe7ad05d419d32998a06da";
        src = fetchurl {
          url = "https://api.github.com/repos/guzzle/promises/zipball/fe752aedc9fd8fcca3fe7ad05d419d32998a06da";
          sha256 = "09ivi77y49bpc2sy3xhvgq22rfh2fhv921mn8402dv0a8bdprf56";
        };
      };
    };
    "guzzlehttp/psr7" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "guzzlehttp-psr7-1afdd860a2566ed3c2b0b4a3de6e23434a79ec85";
        src = fetchurl {
          url = "https://api.github.com/repos/guzzle/psr7/zipball/1afdd860a2566ed3c2b0b4a3de6e23434a79ec85";
          sha256 = "192p1yb0x4wb1hsxvqaxxidal2hk9382siy6x5l9g3i5k5dc1nnh";
        };
      };
    };
    "jenssegers/date" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "jenssegers-date-506f86096e0b512f9ece6ad0ccae62b03c125771";
        src = fetchurl {
          url = "https://api.github.com/repos/jenssegers/date/zipball/506f86096e0b512f9ece6ad0ccae62b03c125771";
          sha256 = "1niisim7lslwm9n77gd3fxrs19ljvg95sd53g59rwkh0lj8pbba8";
        };
      };
    };
    "laravel/framework" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-framework-97a549f1a83cfb32dab1eecab4c4d40a984a72b5";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel/framework/zipball/97a549f1a83cfb32dab1eecab4c4d40a984a72b5";
          sha256 = "0fy4zhnjl2wznpnmbby1fz2jnkclcy299l6r5xdvqmz6y3s4m30h";
        };
      };
    };
    "laravel/legacy-factories" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-legacy-factories-5edc7e7eb76e7b4b29221f32139bcbf806c8870f";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel/legacy-factories/zipball/5edc7e7eb76e7b4b29221f32139bcbf806c8870f";
          sha256 = "0ij8md8g3p71ppp333b8s6fdhh5lrpr1n5x2crr7b7qjnidh8yfw";
        };
      };
    };
    "laravel/serializable-closure" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-serializable-closure-9e4b005daa20b0c161f3845040046dc9ddc1d74e";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel/serializable-closure/zipball/9e4b005daa20b0c161f3845040046dc9ddc1d74e";
          sha256 = "1arjkh7rxjnifcccqrdyby308fg3vlp5mfz5bhhk9cs9q1xhrhna";
        };
      };
    };
    "laravel/slack-notification-channel" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-slack-notification-channel-060617a31562c88656c95c5971a36989122d4b53";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel/slack-notification-channel/zipball/060617a31562c88656c95c5971a36989122d4b53";
          sha256 = "1b2hw28aqb805ac5w7knm9myrgyh40aqw9njyzmvsr2jrphjwgr4";
        };
      };
    };
    "laravel/tinker" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-tinker-5f2f9815b7631b9f586a3de7933c25f9327d4073";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel/tinker/zipball/5f2f9815b7631b9f586a3de7933c25f9327d4073";
          sha256 = "1msw0c39f5fj59ymlf1266a1fcng6qgv9b45gcy6f99w7583bf3a";
        };
      };
    };
    "lcobucci/jwt" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "lcobucci-jwt-82be04b4753f8b7693b62852b7eab30f97524f9b";
        src = fetchurl {
          url = "https://api.github.com/repos/lcobucci/jwt/zipball/82be04b4753f8b7693b62852b7eab30f97524f9b";
          sha256 = "08lgs386g8a91w9hz54adysl8h7g9dbjm6xc98pqgzgh0h0277zh";
        };
      };
    };
    "league/commonmark" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-commonmark-2b8185c13bc9578367a5bf901881d1c1b5bbd09b";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/commonmark/zipball/2b8185c13bc9578367a5bf901881d1c1b5bbd09b";
          sha256 = "14hp7vmqag9jh89rcq1mi3hyw01rkmypdbw2p3zsnjq2p8wwh4r5";
        };
      };
    };
    "league/flysystem" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-flysystem-094defdb4a7001845300334e7c1ee2335925ef99";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/flysystem/zipball/094defdb4a7001845300334e7c1ee2335925ef99";
          sha256 = "0dn71b1pwikbwz1cmmz9k1fc8k1fsmah3gy8sqxbz7czhqn5qiva";
        };
      };
    };
    "league/mime-type-detection" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-mime-type-detection-aa70e813a6ad3d1558fc927863d47309b4c23e69";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/mime-type-detection/zipball/aa70e813a6ad3d1558fc927863d47309b4c23e69";
          sha256 = "0k2kccf1v0002bb083p1ncmm8fbyflnkjx45808sxlkrxggzqcy3";
        };
      };
    };
    "mccool/laravel-auto-presenter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "mccool-laravel-auto-presenter-e139110a82c8a1573d4015b4f6d600d79e1d33e5";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel-auto-presenter/laravel-auto-presenter/zipball/e139110a82c8a1573d4015b4f6d600d79e1d33e5";
          sha256 = "08gdxazigq6b6cpqaakjn9ixfzzk9xnbw7n15jkznn6xa132wa7b";
        };
      };
    };
    "monolog/monolog" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "monolog-monolog-d7fd7450628561ba697b7097d86db72662f54aef";
        src = fetchurl {
          url = "https://api.github.com/repos/Seldaek/monolog/zipball/d7fd7450628561ba697b7097d86db72662f54aef";
          sha256 = "1zi8pprp0jfjvnw4xh5rcbcr8wmqcgrsccl257p25x2n50sggm8l";
        };
      };
    };
    "mtdowling/jmespath.php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "mtdowling-jmespath.php-9b87907a81b87bc76d19a7fb2d61e61486ee9edb";
        src = fetchurl {
          url = "https://api.github.com/repos/jmespath/jmespath.php/zipball/9b87907a81b87bc76d19a7fb2d61e61486ee9edb";
          sha256 = "1ig3gi6f8gisagcn876598ps48s86s6m0c82diyksylarg3yn0yd";
        };
      };
    };
    "nesbot/carbon" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nesbot-carbon-4a54375c21eea4811dbd1149fe6b246517554e78";
        src = fetchurl {
          url = "https://api.github.com/repos/briannesbitt/Carbon/zipball/4a54375c21eea4811dbd1149fe6b246517554e78";
          sha256 = "00l918jykwyi8pjn7x08m29x3wrwh92sq495acyp9dkiby7k59y1";
        };
      };
    };
    "nexmo/client" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nexmo-client-c6d11d953c8c5594590bb9ebaba9616e76948f93";
        src = fetchurl {
          url = "https://api.github.com/repos/Nexmo/nexmo-php-complete/zipball/c6d11d953c8c5594590bb9ebaba9616e76948f93";
          sha256 = "1cly90didpwbhligkaj3dzg41186fkz7bssq6kabz3f8k0g5xm96";
        };
      };
    };
    "nexmo/client-core" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nexmo-client-core-f74df3e6d3df5edf0474142a99644317e6fd21e9";
        src = fetchurl {
          url = "https://api.github.com/repos/Nexmo/nexmo-php/zipball/f74df3e6d3df5edf0474142a99644317e6fd21e9";
          sha256 = "0f63h61s5wr1rl4a54jlayslxysmgh7svx5ys4j4x2i5xdm99b1x";
        };
      };
    };
    "nikic/php-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nikic-php-parser-210577fe3cf7badcc5814d99455df46564f3c077";
        src = fetchurl {
          url = "https://api.github.com/repos/nikic/PHP-Parser/zipball/210577fe3cf7badcc5814d99455df46564f3c077";
          sha256 = "191ijb7bybqnl1jayx6bipqh91dc9acg9zsbh89fk4h1ff87b1qp";
        };
      };
    };
    "opis/closure" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "opis-closure-3d81e4309d2a927abbe66df935f4bb60082805ad";
        src = fetchurl {
          url = "https://api.github.com/repos/opis/closure/zipball/3d81e4309d2a927abbe66df935f4bb60082805ad";
          sha256 = "0hqs6rdkkcggswrgjlispkby2yg4hwn63bl2ma62lnmpfbpwn0sd";
        };
      };
    };
    "paragonie/constant_time_encoding" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "paragonie-constant_time_encoding-9229e15f2e6ba772f0c55dd6986c563b937170a8";
        src = fetchurl {
          url = "https://api.github.com/repos/paragonie/constant_time_encoding/zipball/9229e15f2e6ba772f0c55dd6986c563b937170a8";
          sha256 = "1cn71hyvjd100w0dyqibjxwkc8wn5525jmpv5fyh1ag04lr5ld90";
        };
      };
    };
    "php-http/guzzle6-adapter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "php-http-guzzle6-adapter-a56941f9dc6110409cfcddc91546ee97039277ab";
        src = fetchurl {
          url = "https://api.github.com/repos/php-http/guzzle6-adapter/zipball/a56941f9dc6110409cfcddc91546ee97039277ab";
          sha256 = "1v8rnn6fb8k8cb9v2vncqrim2587hrl4c7jjsmw17mlhzs2sjarl";
        };
      };
    };
    "php-http/httplug" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "php-http-httplug-1c6381726c18579c4ca2ef1ec1498fdae8bdf018";
        src = fetchurl {
          url = "https://api.github.com/repos/php-http/httplug/zipball/1c6381726c18579c4ca2ef1ec1498fdae8bdf018";
          sha256 = "1rricl1bxallfp2fc2rvk9wmsk8ivnqm2ixdk141p2z51r01kk4j";
        };
      };
    };
    "php-http/promise" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "php-http-promise-4c4c1f9b7289a2ec57cde7f1e9762a5789506f88";
        src = fetchurl {
          url = "https://api.github.com/repos/php-http/promise/zipball/4c4c1f9b7289a2ec57cde7f1e9762a5789506f88";
          sha256 = "0xjprpx6xlsjr599vrbmf3cb9726adfm1p9q59xcklrh4p8grwbz";
        };
      };
    };
    "phpoption/phpoption" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpoption-phpoption-eab7a0df01fe2344d172bff4cd6dbd3f8b84ad15";
        src = fetchurl {
          url = "https://api.github.com/repos/schmittjoh/php-option/zipball/eab7a0df01fe2344d172bff4cd6dbd3f8b84ad15";
          sha256 = "1lk50y8jj2mzbwc2mxfm2xdasxf4axya72nv8wfc1vyz9y5ys3li";
        };
      };
    };
    "pragmarx/google2fa" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "pragmarx-google2fa-17c969c82f427dd916afe4be50bafc6299aef1b4";
        src = fetchurl {
          url = "https://api.github.com/repos/antonioribeiro/google2fa/zipball/17c969c82f427dd916afe4be50bafc6299aef1b4";
          sha256 = "1z6rjqqigw6v2rns2mgjy9y0addqhc05cl19j80z8nw03dschqib";
        };
      };
    };
    "predis/predis" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "predis-predis-a2fb02d738bedadcffdbb07efa3a5e7bd57f8d6e";
        src = fetchurl {
          url = "https://api.github.com/repos/predis/predis/zipball/a2fb02d738bedadcffdbb07efa3a5e7bd57f8d6e";
          sha256 = "109j0chyqmr0rzfn25843yacfnm438z94rpxlx1hvhcigfspjhvf";
        };
      };
    };
    "psr/container" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-container-513e0666f7216c7459170d56df27dfcefe1689ea";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/container/zipball/513e0666f7216c7459170d56df27dfcefe1689ea";
          sha256 = "00yvj3b5ls2l1d0sk38g065raw837rw65dx1sicggjnkr85vmfzz";
        };
      };
    };
    "psr/event-dispatcher" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-event-dispatcher-dbefd12671e8a14ec7f180cab83036ed26714bb0";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/event-dispatcher/zipball/dbefd12671e8a14ec7f180cab83036ed26714bb0";
          sha256 = "05nicsd9lwl467bsv4sn44fjnnvqvzj1xqw2mmz9bac9zm66fsjd";
        };
      };
    };
    "psr/http-message" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-http-message-f6561bf28d520154e4b0ec72be95418abe6d9363";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/http-message/zipball/f6561bf28d520154e4b0ec72be95418abe6d9363";
          sha256 = "195dd67hva9bmr52iadr4kyp2gw2f5l51lplfiay2pv6l9y4cf45";
        };
      };
    };
    "psr/log" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-log-d49695b909c3b7628b6289db5479a1c204601f11";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/log/zipball/d49695b909c3b7628b6289db5479a1c204601f11";
          sha256 = "0sb0mq30dvmzdgsnqvw3xh4fb4bqjncx72kf8n622f94dd48amln";
        };
      };
    };
    "psr/simple-cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-simple-cache-408d5eafb83c57f6365a3ca330ff23aa4a5fa39b";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/simple-cache/zipball/408d5eafb83c57f6365a3ca330ff23aa4a5fa39b";
          sha256 = "1djgzclkamjxi9jy4m9ggfzgq1vqxaga2ip7l3cj88p7rwkzjxgw";
        };
      };
    };
    "psy/psysh" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psy-psysh-7f7da640d68b9c9fec819caae7c744a213df6514";
        src = fetchurl {
          url = "https://api.github.com/repos/bobthecow/psysh/zipball/7f7da640d68b9c9fec819caae7c744a213df6514";
          sha256 = "18pswm73lnsx3hjpnc6ld694jkf1n9g00a114a27k5ns0wwkag52";
        };
      };
    };
    "ralouphie/getallheaders" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "ralouphie-getallheaders-120b605dfeb996808c31b6477290a714d356e822";
        src = fetchurl {
          url = "https://api.github.com/repos/ralouphie/getallheaders/zipball/120b605dfeb996808c31b6477290a714d356e822";
          sha256 = "1bv7ndkkankrqlr2b4kw7qp3fl0dxi6bp26bnim6dnlhavd6a0gg";
        };
      };
    };
    "ramsey/collection" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "ramsey-collection-cccc74ee5e328031b15640b51056ee8d3bb66c0a";
        src = fetchurl {
          url = "https://api.github.com/repos/ramsey/collection/zipball/cccc74ee5e328031b15640b51056ee8d3bb66c0a";
          sha256 = "1i2ga25aj80cci3di58qm17l588lzgank8wqhdbq0dcb3cg6cgr6";
        };
      };
    };
    "ramsey/uuid" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "ramsey-uuid-fc9bb7fb5388691fd7373cd44dcb4d63bbcf24df";
        src = fetchurl {
          url = "https://api.github.com/repos/ramsey/uuid/zipball/fc9bb7fb5388691fd7373cd44dcb4d63bbcf24df";
          sha256 = "1fhjsyidsj95x5dd42z3hi5qhzii0hhhxa7xvc5jj7spqjdbqln4";
        };
      };
    };
    "swiftmailer/swiftmailer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "swiftmailer-swiftmailer-8a5d5072dca8f48460fce2f4131fcc495eec654c";
        src = fetchurl {
          url = "https://api.github.com/repos/swiftmailer/swiftmailer/zipball/8a5d5072dca8f48460fce2f4131fcc495eec654c";
          sha256 = "1p9m4fw9y9md9a7msbmnc0hpdrky8dwrllnyg1qf1cdyp9d70x1d";
        };
      };
    };
    "symfony/console" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-console-d8111acc99876953f52fe16d4c50eb60940d49ad";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/console/zipball/d8111acc99876953f52fe16d4c50eb60940d49ad";
          sha256 = "0im10aqw3ld1h99jnrya2dwsm41awr7cy9v257ira8aggqm4gngb";
        };
      };
    };
    "symfony/css-selector" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-css-selector-1955d595c12c111629cc814d3f2a2ff13580508a";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/css-selector/zipball/1955d595c12c111629cc814d3f2a2ff13580508a";
          sha256 = "0l0z3v8c77aambj2rxa9pbcipcqqvlmmmm8cpnbhi3hg80z00wvg";
        };
      };
    };
    "symfony/deprecation-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-deprecation-contracts-c726b64c1ccfe2896cb7df2e1331c357ad1c8ced";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/deprecation-contracts/zipball/c726b64c1ccfe2896cb7df2e1331c357ad1c8ced";
          sha256 = "12gdsgr8wgjyz3zdhg16vkm10kfgqw9wgkr966q5z7i8agvw5asg";
        };
      };
    };
    "symfony/error-handler" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-error-handler-c4ffc2cd919950d13c8c9ce32a70c70214c3ffc5";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/error-handler/zipball/c4ffc2cd919950d13c8c9ce32a70c70214c3ffc5";
          sha256 = "0gmjz2gk6kbqlka9qrsc4zg02pdcxih01x1zlj9h8z6pzl2ii70r";
        };
      };
    };
    "symfony/event-dispatcher" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-event-dispatcher-6472ea2dd415e925b90ca82be64b8bc6157f3934";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/event-dispatcher/zipball/6472ea2dd415e925b90ca82be64b8bc6157f3934";
          sha256 = "1s7dkz4hw3lcqbfh88ws8l8471dc1f4zk159iv6gkdwgyxdbqcyv";
        };
      };
    };
    "symfony/event-dispatcher-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-event-dispatcher-contracts-aa5422287b75594b90ee9cd807caf8f0df491385";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/event-dispatcher-contracts/zipball/aa5422287b75594b90ee9cd807caf8f0df491385";
          sha256 = "1gz9sl8d8kwf827a45s6arwvm6yridr73wvi2a4br7ixbgmnc114";
        };
      };
    };
    "symfony/finder" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-finder-231313534dded84c7ecaa79d14bc5da4ccb69b7d";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/finder/zipball/231313534dded84c7ecaa79d14bc5da4ccb69b7d";
          sha256 = "1i2gr1ghnsk9gzcivixflg51vp83a99h4a0sh692acj0iq77iga6";
        };
      };
    };
    "symfony/http-foundation" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-http-foundation-34e89bc147633c0f9dd6caaaf56da3b806a21465";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/http-foundation/zipball/34e89bc147633c0f9dd6caaaf56da3b806a21465";
          sha256 = "0qpgahjdizq7a1w5hl97dpybp9cmgbgm3s4qz2xjmcinxhs87bmx";
        };
      };
    };
    "symfony/http-kernel" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-http-kernel-d41f29ae9af1b5f40c7ebcddf09082953229411d";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/http-kernel/zipball/d41f29ae9af1b5f40c7ebcddf09082953229411d";
          sha256 = "19x0d5anqp83z16a3wjggkr2ds9k9ac1db1p8qvi3h9wglcvd9x4";
        };
      };
    };
    "symfony/mime" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-mime-e1503cfb5c9a225350f549d3bb99296f4abfb80f";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/mime/zipball/e1503cfb5c9a225350f549d3bb99296f4abfb80f";
          sha256 = "1psnx3p6wj29c7gf67wwxhx6i63qksy9ljwhqblccy19cgnd6rcy";
        };
      };
    };
    "symfony/polyfill-ctype" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-ctype-30885182c981ab175d4d034db0f6f469898070ab";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-ctype/zipball/30885182c981ab175d4d034db0f6f469898070ab";
          sha256 = "0dfh24f8g048vbj88vx0lvw48nq5dsamy5kva72ab1h7vw9hvpwb";
        };
      };
    };
    "symfony/polyfill-iconv" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-iconv-f1aed619e28cb077fc83fac8c4c0383578356e40";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-iconv/zipball/f1aed619e28cb077fc83fac8c4c0383578356e40";
          sha256 = "0fjx1a0kvkj0677nc6h49phqlk0hsgkzbs401lmhj6b6cdc7hvzp";
        };
      };
    };
    "symfony/polyfill-intl-grapheme" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-intl-grapheme-81b86b50cf841a64252b439e738e97f4a34e2783";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-intl-grapheme/zipball/81b86b50cf841a64252b439e738e97f4a34e2783";
          sha256 = "1dxymfi577yridk6dn8v2z1hyrpaxr8sp4g6dxxy913ilf6igx7r";
        };
      };
    };
    "symfony/polyfill-intl-idn" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-intl-idn-749045c69efb97c70d25d7463abba812e91f3a44";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-intl-idn/zipball/749045c69efb97c70d25d7463abba812e91f3a44";
          sha256 = "0ni1zlnp5xpxyzbax7v3mn20x35i69nsmch2sx322cs6dwb0ggbn";
        };
      };
    };
    "symfony/polyfill-intl-normalizer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-intl-normalizer-8590a5f561694770bdcd3f9b5c69dde6945028e8";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-intl-normalizer/zipball/8590a5f561694770bdcd3f9b5c69dde6945028e8";
          sha256 = "1c60xin00q0d2gbyaiglxppn5hqwki616v5chzwyhlhf6aplwsh3";
        };
      };
    };
    "symfony/polyfill-php56" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php56-54b8cd7e6c1643d78d011f3be89f3ef1f9f4c675";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php56/zipball/54b8cd7e6c1643d78d011f3be89f3ef1f9f4c675";
          sha256 = "0gbw33finml181s3gbvamrsav368rysa8fx69fbq0ff9cvn2lmc6";
        };
      };
    };
    "symfony/polyfill-php72" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php72-9a142215a36a3888e30d0a9eeea9766764e96976";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php72/zipball/9a142215a36a3888e30d0a9eeea9766764e96976";
          sha256 = "06ipbcvrxjzgvraf2z9fwgy0bzvzjvs5z1j67grg1gb15x3d428b";
        };
      };
    };
    "symfony/polyfill-php73" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php73-cc5db0e22b3cb4111010e48785a97f670b350ca5";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php73/zipball/cc5db0e22b3cb4111010e48785a97f670b350ca5";
          sha256 = "04z6fah8rn5b01w78j0vqa0jys4mvji66z4ql6wk1r1bf6j0048y";
        };
      };
    };
    "symfony/polyfill-php80" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php80-4407588e0d3f1f52efb65fbe92babe41f37fe50c";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php80/zipball/4407588e0d3f1f52efb65fbe92babe41f37fe50c";
          sha256 = "187whknxl9rs0ddkjph6zmla5kh3k7w6hnvgfc44zig17jxsjdff";
        };
      };
    };
    "symfony/polyfill-php81" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php81-5de4ba2d41b15f9bd0e19b2ab9674135813ec98f";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php81/zipball/5de4ba2d41b15f9bd0e19b2ab9674135813ec98f";
          sha256 = "0igxnmib8vkjp9x81j66hl4pf8i0nj86k4hdh8gzcymq01si0mxm";
        };
      };
    };
    "symfony/process" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-process-95440409896f90a5f85db07a32b517ecec17fa4c";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/process/zipball/95440409896f90a5f85db07a32b517ecec17fa4c";
          sha256 = "0f88n55a29l5sb1h7sar0257bsvc2fs10w4sm00aa6vq2cxnkazk";
        };
      };
    };
    "symfony/routing" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-routing-44b29c7a94e867ccde1da604792f11a469958981";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/routing/zipball/44b29c7a94e867ccde1da604792f11a469958981";
          sha256 = "07gscjp3zm2jlahsgaf5yamg2wh8asbfwq0rf2mr85scidwr58wp";
        };
      };
    };
    "symfony/service-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-service-contracts-d664541b99d6fb0247ec5ff32e87238582236204";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/service-contracts/zipball/d664541b99d6fb0247ec5ff32e87238582236204";
          sha256 = "0bc489p46l9z8d5bwxfqj4d4q24dhz9mayp6zwhl8cgn8lfrqkgv";
        };
      };
    };
    "symfony/string" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-string-522144f0c4c004c80d56fa47e40e17028e2eefc2";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/string/zipball/522144f0c4c004c80d56fa47e40e17028e2eefc2";
          sha256 = "0gjxd07qvdmkc934abbaflqijgp6mwrz037gmdn5ff4c37x0jw31";
        };
      };
    };
    "symfony/translation" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-translation-f6639cb9b5e0c57fe31e3263b900a77eedb0c908";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/translation/zipball/f6639cb9b5e0c57fe31e3263b900a77eedb0c908";
          sha256 = "1f178p8hqq0ch2x42by3mj3q2abpyqpvg4l92va688h8l0l57niv";
        };
      };
    };
    "symfony/translation-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-translation-contracts-1b6ea5a7442af5a12dba3dbd6d71034b5b234e77";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/translation-contracts/zipball/1b6ea5a7442af5a12dba3dbd6d71034b5b234e77";
          sha256 = "0qig10rqcimhxf25s5csjppfrcg6ycdvha6pl2g9l5wn8d6cs6w9";
        };
      };
    };
    "symfony/var-dumper" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-var-dumper-294e9da6e2e0dd404e983daa5aa74253d92c05d0";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/var-dumper/zipball/294e9da6e2e0dd404e983daa5aa74253d92c05d0";
          sha256 = "05i1xb75yfv0426s0il80ivda3xq0ls7v87iapcj8hwqd2mzmjk6";
        };
      };
    };
    "tijsverkoyen/css-to-inline-styles" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "tijsverkoyen-css-to-inline-styles-da444caae6aca7a19c0c140f68c6182e337d5b1c";
        src = fetchurl {
          url = "https://api.github.com/repos/tijsverkoyen/CssToInlineStyles/zipball/da444caae6aca7a19c0c140f68c6182e337d5b1c";
          sha256 = "13lzhf1kswg626b8zd23z4pa7sg679si368wcg6pklqvijnn0any";
        };
      };
    };
    "twig/twig" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "twig-twig-66baa66f29ee30e487e05f1679903e36eb01d727";
        src = fetchurl {
          url = "https://api.github.com/repos/twigphp/Twig/zipball/66baa66f29ee30e487e05f1679903e36eb01d727";
          sha256 = "1n3gw0b2zj7c6ly5y3hmr7maz346c74w6rn3kkl8vib263r0gf22";
        };
      };
    };
    "vlucas/phpdotenv" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "vlucas-phpdotenv-264dce589e7ce37a7ba99cb901eed8249fbec92f";
        src = fetchurl {
          url = "https://api.github.com/repos/vlucas/phpdotenv/zipball/264dce589e7ce37a7ba99cb901eed8249fbec92f";
          sha256 = "0z2q376k3rww8qb9jdywm3fj386pqmcx7rg6msd3zdrjxfbqcqnl";
        };
      };
    };
    "voku/anti-xss" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "voku-anti-xss-4d7ec2816cd6eeebb7d5abbde8b0349f66709496";
        src = fetchurl {
          url = "https://api.github.com/repos/voku/anti-xss/zipball/4d7ec2816cd6eeebb7d5abbde8b0349f66709496";
          sha256 = "1xjvg3ygjn5x9m1habh0r8kq91r7ihpwk4ciab3iljkb2rw5xj8a";
        };
      };
    };
    "voku/portable-ascii" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "voku-portable-ascii-87337c91b9dfacee02452244ee14ab3c43bc485a";
        src = fetchurl {
          url = "https://api.github.com/repos/voku/portable-ascii/zipball/87337c91b9dfacee02452244ee14ab3c43bc485a";
          sha256 = "1j2xpbv7xiwxwb6gfc3h6imc6xcbyb2jw3h8wgfnpvjl5yfbi4xb";
        };
      };
    };
    "voku/portable-utf8" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "voku-portable-utf8-e4365df3f7b63f9e57e1015f6c3ceec19c169f7a";
        src = fetchurl {
          url = "https://api.github.com/repos/voku/portable-utf8/zipball/e4365df3f7b63f9e57e1015f6c3ceec19c169f7a";
          sha256 = "11pxflm3x4lma24snbk2vkz60g96kz9npvqfyhwsbjsrfgx3bp3i";
        };
      };
    };
    "webmozart/assert" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "webmozart-assert-6964c76c7804814a842473e0c8fd15bab0f18e25";
        src = fetchurl {
          url = "https://api.github.com/repos/webmozarts/assert/zipball/6964c76c7804814a842473e0c8fd15bab0f18e25";
          sha256 = "17xqhb2wkwr7cgbl4xdjf7g1vkal17y79rpp6xjpf1xgl5vypc64";
        };
      };
    };
    "zendframework/zend-diactoros" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "zendframework-zend-diactoros-4d54fde709664562eb63356f0250d527824d05de";
        src = fetchurl {
          url = "https://api.github.com/repos/zendframework/zend-diactoros/zipball/4d54fde709664562eb63356f0250d527824d05de";
          sha256 = "0p2s3dvdzvjmadjn3jc12vbvnn63qqww41mmkazih1ixl1fm5x4g";
        };
      };
    };
  };
  devPackages = {
    "alt-three/testbench" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "alt-three-testbench-246d9744ec1cde265e5ea40c7cd4eebd5577b601";
        src = fetchurl {
          url = "https://api.github.com/repos/AltThree/TestBench/zipball/246d9744ec1cde265e5ea40c7cd4eebd5577b601";
          sha256 = "1dh1gbz22z4hi40g89znpnhdq11ylk3kmprv898gvw7j5fivfb83";
        };
      };
    };
    "barryvdh/laravel-debugbar" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "barryvdh-laravel-debugbar-b96f9820aaf1ff9afe945207883149e1c7afb298";
        src = fetchurl {
          url = "https://api.github.com/repos/barryvdh/laravel-debugbar/zipball/b96f9820aaf1ff9afe945207883149e1c7afb298";
          sha256 = "0ns718nw578b0ii9jra8b2x5nvivgc9jpzmkxa8m766br1g8hsw5";
        };
      };
    };
    "doctrine/instantiator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-instantiator-10dcfce151b967d20fde1b34ae6640712c3891bc";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/instantiator/zipball/10dcfce151b967d20fde1b34ae6640712c3891bc";
          sha256 = "1m6pw3bb8v04wqsysj8ma4db8vpm9jnd7ddh8ihdqyfpz8pawjp7";
        };
      };
    };
    "filp/whoops" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "filp-whoops-a63e5e8f26ebbebf8ed3c5c691637325512eb0dc";
        src = fetchurl {
          url = "https://api.github.com/repos/filp/whoops/zipball/a63e5e8f26ebbebf8ed3c5c691637325512eb0dc";
          sha256 = "0hc9zfh3i7br30831grccm4wny9dllpswhaw8hdn988mvg5xrdy0";
        };
      };
    };
    "fzaninotto/faker" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "fzaninotto-faker-5ffe7db6c80f441f150fc88008d64e64af66634b";
        src = fetchurl {
          url = "https://api.github.com/repos/fzaninotto/Faker/zipball/5ffe7db6c80f441f150fc88008d64e64af66634b";
          sha256 = "0lxjh28llwhjm9vf819vxm1b4m6ysijij3bq6w70n8xjmd5pvn1r";
        };
      };
    };
    "graham-campbell/analyzer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "graham-campbell-analyzer-cfeae1d6d451be116d7d6f2f46b609bbb01063b7";
        src = fetchurl {
          url = "https://api.github.com/repos/GrahamCampbell/Analyzer/zipball/cfeae1d6d451be116d7d6f2f46b609bbb01063b7";
          sha256 = "0akn6lm7a344n8jhcfip4c4fkiarps9yn4rzhhqirb3amhr31x35";
        };
      };
    };
    "graham-campbell/testbench-core" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "graham-campbell-testbench-core-a55cfcb8fbbfa1c3828f3f450e1570b8125c2fd0";
        src = fetchurl {
          url = "https://api.github.com/repos/GrahamCampbell/Laravel-TestBench-Core/zipball/a55cfcb8fbbfa1c3828f3f450e1570b8125c2fd0";
          sha256 = "0cvas3zfvgdkl7sya3ycnj807jjk2kiasaa84m20m9xl5c51cp3a";
        };
      };
    };
    "hamcrest/hamcrest-php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "hamcrest-hamcrest-php-8c3d0a3f6af734494ad8f6fbbee0ba92422859f3";
        src = fetchurl {
          url = "https://api.github.com/repos/hamcrest/hamcrest-php/zipball/8c3d0a3f6af734494ad8f6fbbee0ba92422859f3";
          sha256 = "1ixmmpplaf1z36f34d9f1342qjbcizvi5ddkjdli6jgrbla6a6hr";
        };
      };
    };
    "maximebf/debugbar" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "maximebf-debugbar-0d44b75f3b5d6d41ae83b79c7a4bceae7fbc78b6";
        src = fetchurl {
          url = "https://api.github.com/repos/maximebf/php-debugbar/zipball/0d44b75f3b5d6d41ae83b79c7a4bceae7fbc78b6";
          sha256 = "02g3kz29pgf31q2q7zmm2w999n4bncm6336bh0ixv8v9vl1mssd4";
        };
      };
    };
    "mockery/mockery" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "mockery-mockery-c10a5f6e06fc2470ab1822fa13fa2a7380f8fbac";
        src = fetchurl {
          url = "https://api.github.com/repos/mockery/mockery/zipball/c10a5f6e06fc2470ab1822fa13fa2a7380f8fbac";
          sha256 = "1vv1r785wkvf0jaqdpfgka3yaj1sjn28l9kh3nahfq6lfzwqpz1h";
        };
      };
    };
    "myclabs/deep-copy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "myclabs-deep-copy-14daed4296fae74d9e3201d2c4925d1acb7aa614";
        src = fetchurl {
          url = "https://api.github.com/repos/myclabs/DeepCopy/zipball/14daed4296fae74d9e3201d2c4925d1acb7aa614";
          sha256 = "11593chczjw8k5jix2mj9v31lg5jgpxqrkhp27bxd96aajapqd9w";
        };
      };
    };
    "phar-io/manifest" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phar-io-manifest-97803eca37d319dfa7826cc2437fc020857acb53";
        src = fetchurl {
          url = "https://api.github.com/repos/phar-io/manifest/zipball/97803eca37d319dfa7826cc2437fc020857acb53";
          sha256 = "107dsj04ckswywc84dvw42kdrqd4y6yvb2qwacigyrn05p075c1w";
        };
      };
    };
    "phar-io/version" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phar-io-version-4f7fd7836c6f332bb2933569e566a0d6c4cbed74";
        src = fetchurl {
          url = "https://api.github.com/repos/phar-io/version/zipball/4f7fd7836c6f332bb2933569e566a0d6c4cbed74";
          sha256 = "0mdbzh1y0m2vvpf54vw7ckcbcf1yfhivwxgc9j9rbb7yifmlyvsg";
        };
      };
    };
    "phpdocumentor/reflection-common" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-reflection-common-1d01c49d4ed62f25aa84a747ad35d5a16924662b";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/ReflectionCommon/zipball/1d01c49d4ed62f25aa84a747ad35d5a16924662b";
          sha256 = "1wx720a17i24471jf8z499dnkijzb4b8xra11kvw9g9hhzfadz1r";
        };
      };
    };
    "phpdocumentor/reflection-docblock" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-reflection-docblock-622548b623e81ca6d78b721c5e029f4ce664f170";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/ReflectionDocBlock/zipball/622548b623e81ca6d78b721c5e029f4ce664f170";
          sha256 = "1vs0fhpqk8s9bc0sqyfhpbs63q14lfjg1f0c1dw4jz97145j6r1n";
        };
      };
    };
    "phpdocumentor/type-resolver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-type-resolver-93ebd0014cab80c4ea9f5e297ea48672f1b87706";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/TypeResolver/zipball/93ebd0014cab80c4ea9f5e297ea48672f1b87706";
          sha256 = "0b76kr2bp9pmkilr334zv7y5ml8z2vfhhfqcpr9y2kn97hirfn35";
        };
      };
    };
    "phpspec/prophecy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpspec-prophecy-bbcd7380b0ebf3961ee21409db7b38bc31d69a13";
        src = fetchurl {
          url = "https://api.github.com/repos/phpspec/prophecy/zipball/bbcd7380b0ebf3961ee21409db7b38bc31d69a13";
          sha256 = "1xw7x12lws8qdrryhbgjiih48gxwlq99ayhhsy0q2ls9i9p6mw0w";
        };
      };
    };
    "phpunit/php-code-coverage" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-code-coverage-2e9da11878c4202f97915c1cb4bb1ca318a63f5f";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-code-coverage/zipball/2e9da11878c4202f97915c1cb4bb1ca318a63f5f";
          sha256 = "1dnslzhpj6hzsb6dzxd722sg2kk51mm0l5lwyrkng857ph82dgsj";
        };
      };
    };
    "phpunit/php-file-iterator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-file-iterator-cf1c2e7c203ac650e352f4cc675a7021e7d1b3cf";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-file-iterator/zipball/cf1c2e7c203ac650e352f4cc675a7021e7d1b3cf";
          sha256 = "1407d8f1h35w4sdikq2n6cz726css2xjvlyr1m4l9a53544zxcnr";
        };
      };
    };
    "phpunit/php-invoker" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-invoker-5a10147d0aaf65b58940a0b72f71c9ac0423cc67";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-invoker/zipball/5a10147d0aaf65b58940a0b72f71c9ac0423cc67";
          sha256 = "1vqnnjnw94mzm30n9n5p2bfgd3wd5jah92q6cj3gz1nf0qigr4fh";
        };
      };
    };
    "phpunit/php-text-template" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-text-template-5da5f67fc95621df9ff4c4e5a84d6a8a2acf7c28";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-text-template/zipball/5da5f67fc95621df9ff4c4e5a84d6a8a2acf7c28";
          sha256 = "0ff87yzywizi6j2ps3w0nalpx16mfyw3imzn6gj9jjsfwc2bb8lq";
        };
      };
    };
    "phpunit/php-timer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-timer-5a63ce20ed1b5bf577850e2c4e87f4aa902afbd2";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-timer/zipball/5a63ce20ed1b5bf577850e2c4e87f4aa902afbd2";
          sha256 = "0g1g7yy4zk1bidyh165fsbqx5y8f1c8pxikvcahzlfsr9p2qxk6a";
        };
      };
    };
    "phpunit/phpunit" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-phpunit-1b5856028273bfd855e60a887278857d872ec67a";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/phpunit/zipball/1b5856028273bfd855e60a887278857d872ec67a";
          sha256 = "0gwwxyvj6d3r01akpwl3hs2vaf5iq45pvjymnbnaz6sc7q54jrqb";
        };
      };
    };
    "sebastian/cli-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-cli-parser-442e7c7e687e42adc03470c7b668bc4b2402c0b2";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/cli-parser/zipball/442e7c7e687e42adc03470c7b668bc4b2402c0b2";
          sha256 = "074qzdq19k9x4svhq3nak5h348xska56v1sqnhk1aj0jnrx02h37";
        };
      };
    };
    "sebastian/code-unit" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-code-unit-1fc9f64c0927627ef78ba436c9b17d967e68e120";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/code-unit/zipball/1fc9f64c0927627ef78ba436c9b17d967e68e120";
          sha256 = "04vlx050rrd54mxal7d93pz4119pas17w3gg5h532anfxjw8j7pm";
        };
      };
    };
    "sebastian/code-unit-reverse-lookup" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-code-unit-reverse-lookup-ac91f01ccec49fb77bdc6fd1e548bc70f7faa3e5";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/code-unit-reverse-lookup/zipball/ac91f01ccec49fb77bdc6fd1e548bc70f7faa3e5";
          sha256 = "1h1jbzz3zak19qi4mab2yd0ddblpz7p000jfyxfwd2ds0gmrnsja";
        };
      };
    };
    "sebastian/comparator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-comparator-55f4261989e546dc112258c7a75935a81a7ce382";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/comparator/zipball/55f4261989e546dc112258c7a75935a81a7ce382";
          sha256 = "1d4bgf4m2x0kn3nw9hbb45asbx22lsp9vxl74rp1yl3sj2vk9sch";
        };
      };
    };
    "sebastian/complexity" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-complexity-739b35e53379900cc9ac327b2147867b8b6efd88";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/complexity/zipball/739b35e53379900cc9ac327b2147867b8b6efd88";
          sha256 = "1y4yz8n8hszbhinf9ipx3pqyvgm7gz0krgyn19z0097yq3bbq8yf";
        };
      };
    };
    "sebastian/diff" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-diff-3461e3fccc7cfdfc2720be910d3bd73c69be590d";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/diff/zipball/3461e3fccc7cfdfc2720be910d3bd73c69be590d";
          sha256 = "0967nl6cdnr0v0z83w4xy59agn60kfv8gb41aw3fpy1n2wpp62dj";
        };
      };
    };
    "sebastian/environment" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-environment-388b6ced16caa751030f6a69e588299fa09200ac";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/environment/zipball/388b6ced16caa751030f6a69e588299fa09200ac";
          sha256 = "022vn8zss3sm7hg83kg3y0lmjw2ak6cy64b584nbsgxfhlmf6msd";
        };
      };
    };
    "sebastian/exporter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-exporter-65e8b7db476c5dd267e65eea9cab77584d3cfff9";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/exporter/zipball/65e8b7db476c5dd267e65eea9cab77584d3cfff9";
          sha256 = "071813jw7nlsa3fs1hlrkl5fsjz4sidyq0i26p22m43isvvyad0q";
        };
      };
    };
    "sebastian/global-state" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-global-state-0ca8db5a5fc9c8646244e629625ac486fa286bf2";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/global-state/zipball/0ca8db5a5fc9c8646244e629625ac486fa286bf2";
          sha256 = "1csrfa5b7ivza712lfmbywp9jhwf4ls5lc0vn812xljkj7w24kg1";
        };
      };
    };
    "sebastian/lines-of-code" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-lines-of-code-c1c2e997aa3146983ed888ad08b15470a2e22ecc";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/lines-of-code/zipball/c1c2e997aa3146983ed888ad08b15470a2e22ecc";
          sha256 = "0fay9s5cm16gbwr7qjihwrzxn7sikiwba0gvda16xng903argbk0";
        };
      };
    };
    "sebastian/object-enumerator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-object-enumerator-5c9eeac41b290a3712d88851518825ad78f45c71";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/object-enumerator/zipball/5c9eeac41b290a3712d88851518825ad78f45c71";
          sha256 = "11853z07w8h1a67wsjy3a6ir5x7khgx6iw5bmrkhjkiyvandqcn1";
        };
      };
    };
    "sebastian/object-reflector" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-object-reflector-b4f479ebdbf63ac605d183ece17d8d7fe49c15c7";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/object-reflector/zipball/b4f479ebdbf63ac605d183ece17d8d7fe49c15c7";
          sha256 = "0g5m1fswy6wlf300x1vcipjdljmd3vh05hjqhqfc91byrjbk4rsg";
        };
      };
    };
    "sebastian/recursion-context" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-recursion-context-cd9d8cf3c5804de4341c283ed787f099f5506172";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/recursion-context/zipball/cd9d8cf3c5804de4341c283ed787f099f5506172";
          sha256 = "1k0ki1krwq6329vsbw3515wsyg8a7n2l83lk19pdc12i2lg9nhpy";
        };
      };
    };
    "sebastian/resource-operations" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-resource-operations-0f4443cb3a1d92ce809899753bc0d5d5a8dd19a8";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/resource-operations/zipball/0f4443cb3a1d92ce809899753bc0d5d5a8dd19a8";
          sha256 = "0p5s8rp7mrhw20yz5wx1i4k8ywf0h0ximcqan39n9qnma1dlnbyr";
        };
      };
    };
    "sebastian/type" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-type-b8cd8a1c753c90bc1a0f5372170e3e489136f914";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/type/zipball/b8cd8a1c753c90bc1a0f5372170e3e489136f914";
          sha256 = "05d36w28nr2i14nghzd279gvwwpcavcznb2h5bp2iy3rhaa14yjy";
        };
      };
    };
    "sebastian/version" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-version-c6c1022351a901512170118436c764e473f6de8c";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/version/zipball/c6c1022351a901512170118436c764e473f6de8c";
          sha256 = "1bs7bwa9m0fin1zdk7vqy5lxzlfa9la90lkl27sn0wr00m745ig1";
        };
      };
    };
    "symfony/debug" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-debug-5de6c6e7f52b364840e53851c126be4d71e60470";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/debug/zipball/5de6c6e7f52b364840e53851c126be4d71e60470";
          sha256 = "1kmf8kk5ra6nr17z007vacw3dvpcglng584l0y98wrn5kmmfgh4x";
        };
      };
    };
    "theseer/tokenizer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "theseer-tokenizer-34a41e998c2183e22995f158c581e7b5e755ab9e";
        src = fetchurl {
          url = "https://api.github.com/repos/theseer/tokenizer/zipball/34a41e998c2183e22995f158c581e7b5e755ab9e";
          sha256 = "1za4a017kjb4rw2ydglip4bp5q2y7mfiycj3fvnp145i84jc7n0q";
        };
      };
    };
  };
in
composerEnv.buildPackage {
  inherit packages devPackages noDev;
  name = "cachethq-cachet";
  src = fetchFromGitHub {
    owner = "mayflower";
    repo = "cachet";
    rev = "685540a4bfbe221d26d3dc2aa840ac720ce2567b";
    sha256 = "sha256-M8biEpRT/JgkZoIe8dK7AnLJ83c3iYGowHMhxxGBHsw=";
  };
  executable = false;
  symlinkDependencies = false;
  meta = {
    license = "BSD-3-Clause";
  };
}
