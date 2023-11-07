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
        name = "aws-aws-crt-php-5545a4fa310aec39f54279fdacebcce33b3ff382";
        src = fetchurl {
          url = "https://api.github.com/repos/awslabs/aws-crt-php/zipball/5545a4fa310aec39f54279fdacebcce33b3ff382";
          sha256 = "0mdrxsprp83i48p80ld84qa120f41ki1xsdjqsmyiqaqffdpsz94";
        };
      };
    };
    "aws/aws-sdk-php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "aws-aws-sdk-php-0263a41920f77a521660fb128701d9c9c6312756";
        src = fetchurl {
          url = "https://api.github.com/repos/aws/aws-sdk-php/zipball/0263a41920f77a521660fb128701d9c9c6312756";
          sha256 = "0ax6bmbvf2wyx8iv5r4nn960bs91jfanl46i115mqs5dwzfsr8fs";
        };
      };
    };
    "brick/math" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "brick-math-0ad82ce168c82ba30d1c01ec86116ab52f589478";
        src = fetchurl {
          url = "https://api.github.com/repos/brick/math/zipball/0ad82ce168c82ba30d1c01ec86116ab52f589478";
          sha256 = "04kqy1hqvp4634njjjmhrc2g828d69sk6q3c55bpqnnmsqf154yb";
        };
      };
    };
    "bugsnag/bugsnag" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "bugsnag-bugsnag-7fff8512b237a57323f600975ada6376e2b912c1";
        src = fetchurl {
          url = "https://api.github.com/repos/bugsnag/bugsnag-php/zipball/7fff8512b237a57323f600975ada6376e2b912c1";
          sha256 = "1h6nqr29dg6qjpwv7qnz0031z4n73pvd4ma266v99l2wfjmx9nss";
        };
      };
    };
    "bugsnag/bugsnag-laravel" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "bugsnag-bugsnag-laravel-333a912e38ead3e02724381093778b271168c8a3";
        src = fetchurl {
          url = "https://api.github.com/repos/bugsnag/bugsnag-laravel/zipball/333a912e38ead3e02724381093778b271168c8a3";
          sha256 = "1xl32sb5lcgx4c9wx7amsbf516awqz3sqrwdidab97sq7vx1wprf";
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
        name = "composer-ca-bundle-76e46335014860eec1aa5a724799a00a2e47cc85";
        src = fetchurl {
          url = "https://api.github.com/repos/composer/ca-bundle/zipball/76e46335014860eec1aa5a724799a00a2e47cc85";
          sha256 = "0a5991mmn0gxxw5v29x262izicxb33drsqfswbf8b99ai6ggmpr7";
        };
      };
    };
    "doctrine/cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-cache-1ca8f21980e770095a31456042471a57bc4c68fb";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/cache/zipball/1ca8f21980e770095a31456042471a57bc4c68fb";
          sha256 = "1p8ia9g3mqz71bv4x8q1ng1fgcidmyksbsli1fjbialpgjk9k1ss";
        };
      };
    };
    "doctrine/dbal" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-dbal-c480849ca3ad6706a39c970cdfe6888fa8a058b8";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/dbal/zipball/c480849ca3ad6706a39c970cdfe6888fa8a058b8";
          sha256 = "15j98h80li6m1aj53p8ddy0lkbkanc5kdy6xrikpdd6zhmsfgq9k";
        };
      };
    };
    "doctrine/deprecations" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-deprecations-4f2d4f2836e7ec4e7a8625e75c6aa916004db931";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/deprecations/zipball/4f2d4f2836e7ec4e7a8625e75c6aa916004db931";
          sha256 = "1kxy6s4v9prkfvsnggm10kk0yyqsyd2vk238zhvv3c9il300h8sk";
        };
      };
    };
    "doctrine/event-manager" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-event-manager-95aa4cb529f1e96576f3fda9f5705ada4056a520";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/event-manager/zipball/95aa4cb529f1e96576f3fda9f5705ada4056a520";
          sha256 = "0xi2s28jmmvrndg1yd0r5s10d9a0q6j2dxdbazvcbws9waf0yrvj";
        };
      };
    };
    "doctrine/inflector" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-inflector-f9301a5b2fb1216b2b08f02ba04dc45423db6bff";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/inflector/zipball/f9301a5b2fb1216b2b08f02ba04dc45423db6bff";
          sha256 = "1kdq3sbwrzwprxr36cdw9m1zlwn15c0nz6i7mw0sq9mhnd2sgbrb";
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
        name = "dragonmantank-cron-expression-adfb1f505deb6384dc8b39804c5065dd3c8c8c0a";
        src = fetchurl {
          url = "https://api.github.com/repos/dragonmantank/cron-expression/zipball/adfb1f505deb6384dc8b39804c5065dd3c8c8c0a";
          sha256 = "1gw2bnsh8ca5plfpyyyz1idnx7zxssg6fbwl7niszck773zrm5ca";
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
        name = "fideloper-proxy-a751f2bc86dd8e6cfef12dc0cbdada82f5a18750";
        src = fetchurl {
          url = "https://api.github.com/repos/fideloper/TrustedProxy/zipball/a751f2bc86dd8e6cfef12dc0cbdada82f5a18750";
          sha256 = "11whawpjkiphdfpfwm5c2v3finc3apl9gp8b4lwq76370i41plcf";
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
        name = "graham-campbell-result-type-672eff8cf1d6fe1ef09ca0f89c4b287d6a3eb831";
        src = fetchurl {
          url = "https://api.github.com/repos/GrahamCampbell/Result-Type/zipball/672eff8cf1d6fe1ef09ca0f89c4b287d6a3eb831";
          sha256 = "156zbfs19r9g543phlpjwhqin3k2x4dsvr5p0wk7rk4j0wwp8l2v";
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
        name = "guzzlehttp-guzzle-a52f0440530b54fa079ce76e8c5d196a42cad981";
        src = fetchurl {
          url = "https://api.github.com/repos/guzzle/guzzle/zipball/a52f0440530b54fa079ce76e8c5d196a42cad981";
          sha256 = "19y2c0kz5yanagrhxa464r6jq4lc53lypbmznvid0q1vmfgf0wz0";
        };
      };
    };
    "guzzlehttp/promises" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "guzzlehttp-promises-67ab6e18aaa14d753cc148911d273f6e6cb6721e";
        src = fetchurl {
          url = "https://api.github.com/repos/guzzle/promises/zipball/67ab6e18aaa14d753cc148911d273f6e6cb6721e";
          sha256 = "0y3md6lkpk60kvmi607mgj29cfjg2bljc5nhfh3qf9hzk6c1b2j6";
        };
      };
    };
    "guzzlehttp/psr7" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "guzzlehttp-psr7-e4490cabc77465aaee90b20cfc9a770f8c04be6b";
        src = fetchurl {
          url = "https://api.github.com/repos/guzzle/psr7/zipball/e4490cabc77465aaee90b20cfc9a770f8c04be6b";
          sha256 = "1y0wgj2dfl2d89i9sdlizy1di18dnlnasvcan76gc300bsniarha";
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
        name = "laravel-framework-e1afe088b4ca613fb96dc57e6d8dbcb8cc2c6b49";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel/framework/zipball/e1afe088b4ca613fb96dc57e6d8dbcb8cc2c6b49";
          sha256 = "1k7afj4himxmhv02lmq8dc992m2vdkw8hcjyfcnff99cv555z9ph";
        };
      };
    };
    "laravel/legacy-factories" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-legacy-factories-cc6720da81094c82ea9f4737d615dd3d71f7f43d";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel/legacy-factories/zipball/cc6720da81094c82ea9f4737d615dd3d71f7f43d";
          sha256 = "07qijd1pgwx63wisvi8z6w3hdmvnb9gn43dn84v709a0zjdr8nwf";
        };
      };
    };
    "laravel/serializable-closure" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-serializable-closure-076fe2cf128bd54b4341cdc6d49b95b34e101e4c";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel/serializable-closure/zipball/076fe2cf128bd54b4341cdc6d49b95b34e101e4c";
          sha256 = "0z3f8y2v5gd147iyvfzxw3lfw9yly8fdilbjih2n02fwxpk5bvv3";
        };
      };
    };
    "laravel/slack-notification-channel" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-slack-notification-channel-e0d4be5e01d443a69fa89f0a4cac6bd2eda2be8f";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel/slack-notification-channel/zipball/e0d4be5e01d443a69fa89f0a4cac6bd2eda2be8f";
          sha256 = "0vqvg0hycif7n1hyiyrn19s1y3rcrvnxb0lqq2bmybag55kx06k4";
        };
      };
    };
    "laravel/tinker" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-tinker-b936d415b252b499e8c3b1f795cd4fc20f57e1f3";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel/tinker/zipball/b936d415b252b499e8c3b1f795cd4fc20f57e1f3";
          sha256 = "1vggdik2nby6a9avwgylgihhwyglm0mdwm703bwv7ilwx0dsx1i7";
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
        name = "league-flysystem-3239285c825c152bcc315fe0e87d6b55f5972ed1";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/flysystem/zipball/3239285c825c152bcc315fe0e87d6b55f5972ed1";
          sha256 = "0p1cirl7j9b3gvbp264d08abfnrki89jr7rx0cbw0bjw1apf4spz";
        };
      };
    };
    "league/mime-type-detection" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-mime-type-detection-b6a5854368533df0295c5761a0253656a2e52d9e";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/mime-type-detection/zipball/b6a5854368533df0295c5761a0253656a2e52d9e";
          sha256 = "0bsqha9c0pyb5l78iiv1klrpqmhki6nh9x73pgnmh7sphh6ilygj";
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
        name = "monolog-monolog-437cb3628f4cf6042cc10ae97fc2b8472e48ca1f";
        src = fetchurl {
          url = "https://api.github.com/repos/Seldaek/monolog/zipball/437cb3628f4cf6042cc10ae97fc2b8472e48ca1f";
          sha256 = "02xaa057fj2bjf6g6zx80rb6ikcgn601ns50ml51b8yp48pjdla3";
        };
      };
    };
    "mtdowling/jmespath.php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "mtdowling-jmespath.php-bbb69a935c2cbb0c03d7f481a238027430f6440b";
        src = fetchurl {
          url = "https://api.github.com/repos/jmespath/jmespath.php/zipball/bbb69a935c2cbb0c03d7f481a238027430f6440b";
          sha256 = "1ksjdc2icgafkx16j05ir3vk1ryhgdr2l41wpfd6nhzzk42smiwb";
        };
      };
    };
    "nesbot/carbon" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nesbot-carbon-98276233188583f2ff845a0f992a235472d9466a";
        src = fetchurl {
          url = "https://api.github.com/repos/briannesbitt/Carbon/zipball/98276233188583f2ff845a0f992a235472d9466a";
          sha256 = "0vxm2fafg5h3m25hrivm6blc7ibna6icliyx98rv550d75m57zd6";
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
        name = "nikic-php-parser-a6303e50c90c355c7eeee2c4a8b27fe8dc8fef1d";
        src = fetchurl {
          url = "https://api.github.com/repos/nikic/PHP-Parser/zipball/a6303e50c90c355c7eeee2c4a8b27fe8dc8fef1d";
          sha256 = "0a5a6fzgvcgxn5kc1mxa5grxmm8c1ax91pjr3gxpkji7nyc1zh1y";
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
        name = "paragonie-constant_time_encoding-58c3f47f650c94ec05a151692652a868995d2938";
        src = fetchurl {
          url = "https://api.github.com/repos/paragonie/constant_time_encoding/zipball/58c3f47f650c94ec05a151692652a868995d2938";
          sha256 = "0i9km0lzvc7df9758fm1p3y0679pzvr5m9x3mrz0d2hxlppsm764";
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
        name = "php-http-promise-ef4905bfb492ff389eb7f12e26925a0f20073050";
        src = fetchurl {
          url = "https://api.github.com/repos/php-http/promise/zipball/ef4905bfb492ff389eb7f12e26925a0f20073050";
          sha256 = "18814681xf5bq43ds9ghiwclzgnria684fd4w8jqbnvbzgzi9515";
        };
      };
    };
    "phpoption/phpoption" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpoption-phpoption-dd3a383e599f49777d8b628dadbb90cae435b87e";
        src = fetchurl {
          url = "https://api.github.com/repos/schmittjoh/php-option/zipball/dd3a383e599f49777d8b628dadbb90cae435b87e";
          sha256 = "029gpfa66hwg395jvf7swcvrj085wsw5fw6041nrl5kbc36fvwlb";
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
    "psr/clock" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-clock-e41a24703d4560fd0acb709162f73b8adfc3aa0d";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/clock/zipball/e41a24703d4560fd0acb709162f73b8adfc3aa0d";
          sha256 = "0wz5b8hgkxn3jg88cb3901hj71axsj0fil6pwl413igghch6i8kj";
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
        name = "psr-http-message-cb6ce4845ce34a8ad9e68117c10ee90a29919eba";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/http-message/zipball/cb6ce4845ce34a8ad9e68117c10ee90a29919eba";
          sha256 = "1s87sajxsxl30ciqyhx0vir2pai63va4ssbnq7ki6s050i4vm80h";
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
        name = "psy-psysh-128fa1b608be651999ed9789c95e6e2a31b5802b";
        src = fetchurl {
          url = "https://api.github.com/repos/bobthecow/psysh/zipball/128fa1b608be651999ed9789c95e6e2a31b5802b";
          sha256 = "0lrmqw53kzgdldxiy2aj0dawdzz5cbsxqz9p47ca3c0ggnszlk1p";
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
        name = "ramsey-collection-ad7475d1c9e70b190ecffc58f2d989416af339b4";
        src = fetchurl {
          url = "https://api.github.com/repos/ramsey/collection/zipball/ad7475d1c9e70b190ecffc58f2d989416af339b4";
          sha256 = "1a1wqdwdrbzkf2hias2kw9crr31265pn027vm69pr7alyq2qrzfw";
        };
      };
    };
    "ramsey/uuid" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "ramsey-uuid-60a4c63ab724854332900504274f6150ff26d286";
        src = fetchurl {
          url = "https://api.github.com/repos/ramsey/uuid/zipball/60a4c63ab724854332900504274f6150ff26d286";
          sha256 = "1w1i50pbd18awmvzqjkbszw79dl09912ibn95qm8lxr4nsjvbb27";
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
        name = "symfony-console-f4f71842f24c2023b91237c72a365306f3c58827";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/console/zipball/f4f71842f24c2023b91237c72a365306f3c58827";
          sha256 = "03gbq3gx9vxi3k5accyrgmcc7pjp31c7d76zp8ij059bq5a4apa6";
        };
      };
    };
    "symfony/css-selector" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-css-selector-f1d00bddb83a4cb2138564b2150001cb6ce272b1";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/css-selector/zipball/f1d00bddb83a4cb2138564b2150001cb6ce272b1";
          sha256 = "0nl94wjr5sm4yrx9y0vwk4dzh1hm17f1n3d71hmj7biyzds0474i";
        };
      };
    };
    "symfony/deprecation-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-deprecation-contracts-26954b3d62a6c5fd0ea8a2a00c0353a14978d05c";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/deprecation-contracts/zipball/26954b3d62a6c5fd0ea8a2a00c0353a14978d05c";
          sha256 = "1wlaj9ngbyjmgr92gjyf7lsmjfswyh8vpbzq5rdzaxjb6bcsj3dp";
        };
      };
    };
    "symfony/error-handler" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-error-handler-328c6fcfd2f90b64c16efaf0ea67a311d672f078";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/error-handler/zipball/328c6fcfd2f90b64c16efaf0ea67a311d672f078";
          sha256 = "1j8hsb7n30zzs21ah08pfc758gp8lxv116xz4ansz62ccdbzzwha";
        };
      };
    };
    "symfony/event-dispatcher" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-event-dispatcher-2eaf8e63bc5b8cefabd4a800157f0d0c094f677a";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/event-dispatcher/zipball/2eaf8e63bc5b8cefabd4a800157f0d0c094f677a";
          sha256 = "0wwphxh21n502wgldh3kqqhvl1zxh2yncbadwwh05d8sp5mz0ysn";
        };
      };
    };
    "symfony/event-dispatcher-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-event-dispatcher-contracts-7bc61cc2db649b4637d331240c5346dcc7708051";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/event-dispatcher-contracts/zipball/7bc61cc2db649b4637d331240c5346dcc7708051";
          sha256 = "1crx2j4g5jn904fwk7919ar9zpyfd5bvgm80lmyg15kinsjm3w4i";
        };
      };
    };
    "symfony/finder" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-finder-ff4bce3c33451e7ec778070e45bd23f74214cd5d";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/finder/zipball/ff4bce3c33451e7ec778070e45bd23f74214cd5d";
          sha256 = "1dmxxvf4hlw8kn2cr7kc59g33lpd448h20znb3gapip8win636i5";
        };
      };
    };
    "symfony/http-foundation" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-http-foundation-671769f79de0532da1478c60968b42506e185d2e";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/http-foundation/zipball/671769f79de0532da1478c60968b42506e185d2e";
          sha256 = "13irga0hl0giygxmypngzxhw9dfflqw929ylh166045yvj57qi0d";
        };
      };
    };
    "symfony/http-kernel" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-http-kernel-16b9b36f81631155546d9f05271dd027c83c3dd4";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/http-kernel/zipball/16b9b36f81631155546d9f05271dd027c83c3dd4";
          sha256 = "1lbzi7rikj6d9lapr6wh6z6swa0v6nmppq4vh3qdbwkjaihfq6ig";
        };
      };
    };
    "symfony/mime" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-mime-2ea06dfeee20000a319d8407cea1d47533d5a9d2";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/mime/zipball/2ea06dfeee20000a319d8407cea1d47533d5a9d2";
          sha256 = "0r60fghbcwiawig0z0wvfa3w4kilh95hffghjf4pickz4brsp6qn";
        };
      };
    };
    "symfony/polyfill-ctype" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-ctype-ea208ce43cbb04af6867b4fdddb1bdbf84cc28cb";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-ctype/zipball/ea208ce43cbb04af6867b4fdddb1bdbf84cc28cb";
          sha256 = "0ynkrpl3hb448dhab1injwwzfx68l75yn9zgc7lgqwbx60dvhqm3";
        };
      };
    };
    "symfony/polyfill-iconv" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-iconv-6de50471469b8c9afc38164452ab2b6170ee71c1";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-iconv/zipball/6de50471469b8c9afc38164452ab2b6170ee71c1";
          sha256 = "0pp37jw61c8js9qr5rdp9x2cjq93bl737xc4cg97p0fhzl9fs951";
        };
      };
    };
    "symfony/polyfill-intl-grapheme" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-intl-grapheme-875e90aeea2777b6f135677f618529449334a612";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-intl-grapheme/zipball/875e90aeea2777b6f135677f618529449334a612";
          sha256 = "19j8qcbp525q7i61c2lhj6z2diysz45q06d990fvjby15cn0id0i";
        };
      };
    };
    "symfony/polyfill-intl-idn" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-intl-idn-ecaafce9f77234a6a449d29e49267ba10499116d";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-intl-idn/zipball/ecaafce9f77234a6a449d29e49267ba10499116d";
          sha256 = "0f42w4975rakhysnmhsyw6n3rjg6rjg7b7x8gs1n0qfdb6wc8m3q";
        };
      };
    };
    "symfony/polyfill-intl-normalizer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-intl-normalizer-8c4ad05dd0120b6a53c1ca374dca2ad0a1c4ed92";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-intl-normalizer/zipball/8c4ad05dd0120b6a53c1ca374dca2ad0a1c4ed92";
          sha256 = "0msah2ii2174xh47v5x9vq1b1xn38yyx03sr3pa2rq3a849wi7nh";
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
        name = "symfony-polyfill-php72-70f4aebd92afca2f865444d30a4d2151c13c3179";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php72/zipball/70f4aebd92afca2f865444d30a4d2151c13c3179";
          sha256 = "10j5ipx16p6rybkpawqscpr2wcnby4270rbdj1qchr598wkvi0kb";
        };
      };
    };
    "symfony/polyfill-php73" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php73-fe2f306d1d9d346a7fee353d0d5012e401e984b5";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php73/zipball/fe2f306d1d9d346a7fee353d0d5012e401e984b5";
          sha256 = "0lpzv3dhv084mmnilhai611y0lpi2jmfwc1aw4yj3fxs17vkilwa";
        };
      };
    };
    "symfony/polyfill-php80" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php80-6caa57379c4aec19c0a12a38b59b26487dcfe4b5";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php80/zipball/6caa57379c4aec19c0a12a38b59b26487dcfe4b5";
          sha256 = "05yfindyip9lbfr5apxkz6m0mlljrc9z6qylpxr6k5nkivlrcn9x";
        };
      };
    };
    "symfony/polyfill-php81" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php81-7581cd600fa9fd681b797d00b02f068e2f13263b";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php81/zipball/7581cd600fa9fd681b797d00b02f068e2f13263b";
          sha256 = "0ngi5nhnbj4yycnf6yw628vmr7h6dhxxh7jawyp6gq7bzs94g2dy";
        };
      };
    };
    "symfony/process" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-process-45261e1fccad1b5447a8d7a8e67aa7b4a9798b7b";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/process/zipball/45261e1fccad1b5447a8d7a8e67aa7b4a9798b7b";
          sha256 = "0q351cqy8fd36r53r4rkaingslphqpij5s07wa311navl3a8wbhl";
        };
      };
    };
    "symfony/routing" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-routing-853fc7df96befc468692de0a48831b38f04d2cb2";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/routing/zipball/853fc7df96befc468692de0a48831b38f04d2cb2";
          sha256 = "0mf4912glz8y38bp03fy93rvmiy3y42rwy028npfz3sxk9fz1a5x";
        };
      };
    };
    "symfony/service-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-service-contracts-4b426aac47d6427cc1a1d0f7e2ac724627f5966c";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/service-contracts/zipball/4b426aac47d6427cc1a1d0f7e2ac724627f5966c";
          sha256 = "0lh0vxy0h4wsjmnlf42s950bicsvkzz6brqikfnfb5kmvi0xhcm6";
        };
      };
    };
    "symfony/string" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-string-d9e72497367c23e08bf94176d2be45b00a9d232a";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/string/zipball/d9e72497367c23e08bf94176d2be45b00a9d232a";
          sha256 = "0k4vvcjfdp2dni8gzq4rn8d6n0ivd38sfna70lgsh8vlc8rrlhpf";
        };
      };
    };
    "symfony/translation" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-translation-9c24b3fdbbe9fb2ef3a6afd8bbaadfd72dad681f";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/translation/zipball/9c24b3fdbbe9fb2ef3a6afd8bbaadfd72dad681f";
          sha256 = "12c13k5ljch06g8xp28kkpv0ml67hy086rk25mzd94hjpawrs4x2";
        };
      };
    };
    "symfony/translation-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-translation-contracts-acbfbb274e730e5a0236f619b6168d9dedb3e282";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/translation-contracts/zipball/acbfbb274e730e5a0236f619b6168d9dedb3e282";
          sha256 = "1r496j63a6q3ch0ax76qa1apmc4iqf41zc8rf6yn8vkir3nzkqr0";
        };
      };
    };
    "symfony/var-dumper" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-var-dumper-6172e4ae3534d25ee9e07eb487c20be7760fcc65";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/var-dumper/zipball/6172e4ae3534d25ee9e07eb487c20be7760fcc65";
          sha256 = "16km1y8la70kxjpbvmib95whd0n6s1fndjqwypcl2vdfvxb6x9pm";
        };
      };
    };
    "tijsverkoyen/css-to-inline-styles" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "tijsverkoyen-css-to-inline-styles-c42125b83a4fa63b187fdf29f9c93cb7733da30c";
        src = fetchurl {
          url = "https://api.github.com/repos/tijsverkoyen/CssToInlineStyles/zipball/c42125b83a4fa63b187fdf29f9c93cb7733da30c";
          sha256 = "0ckk04hwwz0fdkfr20i7xrhdjcnnw1b0liknbb81qyr1y4b7x3dd";
        };
      };
    };
    "twig/twig" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "twig-twig-fc02a6af3eeb97c4bf5650debc76c2eda85ac22e";
        src = fetchurl {
          url = "https://api.github.com/repos/twigphp/Twig/zipball/fc02a6af3eeb97c4bf5650debc76c2eda85ac22e";
          sha256 = "1flal0mkvzdgvjwlagjlld2lq5dyvf0g6ypl2xxydfa85anqwss3";
        };
      };
    };
    "vlucas/phpdotenv" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "vlucas-phpdotenv-1a7ea2afc49c3ee6d87061f5a233e3a035d0eae7";
        src = fetchurl {
          url = "https://api.github.com/repos/vlucas/phpdotenv/zipball/1a7ea2afc49c3ee6d87061f5a233e3a035d0eae7";
          sha256 = "13h4xyxhdjn1n7xcxbcdhj20rv5fsaigbsbz61x2i224hj76620a";
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
        name = "webmozart-assert-11cb2199493b2f8a3b53e7f19068fc6aac760991";
        src = fetchurl {
          url = "https://api.github.com/repos/webmozarts/assert/zipball/11cb2199493b2f8a3b53e7f19068fc6aac760991";
          sha256 = "18qiza1ynwxpi6731jx1w5qsgw98prld1lgvfk54z92b1nc7psix";
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
        name = "barryvdh-laravel-debugbar-3372ed65e6d2039d663ed19aa699956f9d346271";
        src = fetchurl {
          url = "https://api.github.com/repos/barryvdh/laravel-debugbar/zipball/3372ed65e6d2039d663ed19aa699956f9d346271";
          sha256 = "08ll8z25mbq21q8gxdlgdb0pymx7z3xxc1la68m879l5r2ddhi05";
        };
      };
    };
    "doctrine/instantiator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-instantiator-0a0fa9780f5d4e507415a065172d26a98d02047b";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/instantiator/zipball/0a0fa9780f5d4e507415a065172d26a98d02047b";
          sha256 = "00qv07k8hpl2nj5pmamzihflgc0yx04h0rcln2fy3bz65jd6kb5j";
        };
      };
    };
    "filp/whoops" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "filp-whoops-a139776fa3f5985a50b509f2a02ff0f709d2a546";
        src = fetchurl {
          url = "https://api.github.com/repos/filp/whoops/zipball/a139776fa3f5985a50b509f2a02ff0f709d2a546";
          sha256 = "18sfx7s3936q7i4hhn08lr5728c6bqyfqji6kzczjzhlyqkbys10";
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
        name = "graham-campbell-analyzer-0a1d452c1b41f342c7132188f0c25ca26e0be6d8";
        src = fetchurl {
          url = "https://api.github.com/repos/GrahamCampbell/Analyzer/zipball/0a1d452c1b41f342c7132188f0c25ca26e0be6d8";
          sha256 = "0j1hlszn80akmdh7d786gy9khjcpga97appckcvck5mbil3rmvac";
        };
      };
    };
    "graham-campbell/testbench-core" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "graham-campbell-testbench-core-f62a3d0200cbea9f8156ac2cd7d16684ad324c8d";
        src = fetchurl {
          url = "https://api.github.com/repos/GrahamCampbell/Laravel-TestBench-Core/zipball/f62a3d0200cbea9f8156ac2cd7d16684ad324c8d";
          sha256 = "1ziwwr9h4iwjdxms0w2lybvbyldpfiir85v7h1lkzk6fpi4xvszc";
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
        name = "maximebf-debugbar-03dd40a1826f4d585ef93ef83afa2a9874a00523";
        src = fetchurl {
          url = "https://api.github.com/repos/maximebf/php-debugbar/zipball/03dd40a1826f4d585ef93ef83afa2a9874a00523";
          sha256 = "0z9yvxizsgajc00jc53q6nva94pa2p9gf2j16z3vlv3011kblyrh";
        };
      };
    };
    "mockery/mockery" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "mockery-mockery-b8e0bb7d8c604046539c1115994632c74dcb361e";
        src = fetchurl {
          url = "https://api.github.com/repos/mockery/mockery/zipball/b8e0bb7d8c604046539c1115994632c74dcb361e";
          sha256 = "1fbz87008ffn35k7wgwsx3g5pdrjsc9pygza71as9bmbkxkryjlr";
        };
      };
    };
    "myclabs/deep-copy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "myclabs-deep-copy-7284c22080590fb39f2ffa3e9057f10a4ddd0e0c";
        src = fetchurl {
          url = "https://api.github.com/repos/myclabs/DeepCopy/zipball/7284c22080590fb39f2ffa3e9057f10a4ddd0e0c";
          sha256 = "16k44y94bcr439bsxm5158xvmlyraph2c6n17qa5y29b04jqdw5j";
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
        name = "phpdocumentor-type-resolver-3219c6ee25c9ea71e3d9bbaf39c67c9ebd499419";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/TypeResolver/zipball/3219c6ee25c9ea71e3d9bbaf39c67c9ebd499419";
          sha256 = "1wnd2hfbkzi5qmgh94m7jgl7xr5q5y8aix9c0ka6v4jc3sq8icby";
        };
      };
    };
    "phpstan/phpdoc-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpstan-phpdoc-parser-bcad8d995980440892759db0c32acae7c8e79442";
        src = fetchurl {
          url = "https://api.github.com/repos/phpstan/phpdoc-parser/zipball/bcad8d995980440892759db0c32acae7c8e79442";
          sha256 = "16c95x9qv8n0vdmnxas18ah8fwjnlacvh4g5694whxdsfgjsk7gz";
        };
      };
    };
    "phpunit/php-code-coverage" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-code-coverage-6a3a87ac2bbe33b25042753df8195ba4aa534c76";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/php-code-coverage/zipball/6a3a87ac2bbe33b25042753df8195ba4aa534c76";
          sha256 = "1bh1bxnnvxdjfm0chza9znkn1b5jncvr794xj3npvdm9szbbkyg8";
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
        name = "phpunit-phpunit-f3d767f7f9e191eab4189abe41ab37797e30b1be";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/phpunit/zipball/f3d767f7f9e191eab4189abe41ab37797e30b1be";
          sha256 = "16z4njm2wq76ck9fvqrby5axqkpj71yk2yvqpfj481irkrzcsi31";
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
        name = "sebastian-comparator-fa0f136dd2334583309d32b62544682ee972b51a";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/comparator/zipball/fa0f136dd2334583309d32b62544682ee972b51a";
          sha256 = "0m8ibkwaxw2q5v84rlvy7ylpkddscsa8hng0cjczy4bqpqavr83w";
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
        name = "sebastian-diff-74be17022044ebaaecfdf0c5cd504fc9cd5a7131";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/diff/zipball/74be17022044ebaaecfdf0c5cd504fc9cd5a7131";
          sha256 = "0f90471bi8lkmffms3bc2dnggqv8a81y1f4gi7p3r5120328mjm0";
        };
      };
    };
    "sebastian/environment" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-environment-830c43a844f1f8d5b7a1f6d6076b784454d8b7ed";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/environment/zipball/830c43a844f1f8d5b7a1f6d6076b784454d8b7ed";
          sha256 = "02045n3in01zk571v1phyhj0b2mvnvx8qnlqvw4j33r7qdd4clzn";
        };
      };
    };
    "sebastian/exporter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-exporter-ac230ed27f0f98f597c8a2b6eb7ac563af5e5b9d";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/exporter/zipball/ac230ed27f0f98f597c8a2b6eb7ac563af5e5b9d";
          sha256 = "1a6yj8v8rwj3igip8xysdifvbd7gkzmwrj9whdx951pdq7add46j";
        };
      };
    };
    "sebastian/global-state" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-global-state-bde739e7565280bda77be70044ac1047bc007e34";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/global-state/zipball/bde739e7565280bda77be70044ac1047bc007e34";
          sha256 = "0lk9hbvrma0jm4z2nm8dr94w0pinlnp6wzcczcm1cjkm4zx0yabw";
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
        name = "sebastian-recursion-context-e75bd0f07204fec2a0af9b0f3cfe97d05f92efc1";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/recursion-context/zipball/e75bd0f07204fec2a0af9b0f3cfe97d05f92efc1";
          sha256 = "1ag6ysxffhxyg7g4rj9xjjlwq853r4x92mmin4f09hn5mqn9f0l1";
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
        name = "sebastian-type-75e2c2a32f5e0b3aef905b9ed0b179b953b3d7c7";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/type/zipball/75e2c2a32f5e0b3aef905b9ed0b179b953b3d7c7";
          sha256 = "0bvfvb62qbpy2hzxs4bjzb0xhks6h3cp6qx96z4qlyz6wl2fa1w5";
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
    rev = "a7d0b1eff26488d073e0ef97afb014affea66c06";
    sha256 = "sha256-on2qzKcWIv6E1azTcDh/ZBlVQF5Trx2CLFY9J/7X/E0=";
  };
  executable = false;
  symlinkDependencies = false;
  meta = {
    license = "BSD-3-Clause";
  };
}
