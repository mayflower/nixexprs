{ composerEnv, fetchurl, fetchFromGitHub, fetchgit ? null, fetchhg ? null, fetchsvn ? null, noDev ? false
, envFile ? null }:

let
  packages = {
    "alt-three/badger" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "alt-three-badger-885d70fca53d6c77a875cfe26cb45d3a89fa09d2";
        src = fetchurl {
          url = https://api.github.com/repos/AltThree/Badger/zipball/885d70fca53d6c77a875cfe26cb45d3a89fa09d2;
          sha256 = "0d1640nm5sdxg64lrrdfd7vlmm40b5lrc9ka0cbcbcac1f3sszsf";
        };
      };
    };
    "alt-three/bus" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "alt-three-bus-90b43e1e48348dbd7687ca65152816bdb8ed033d";
        src = fetchurl {
          url = https://api.github.com/repos/AltThree/Bus/zipball/90b43e1e48348dbd7687ca65152816bdb8ed033d;
          sha256 = "199qcxzgzdr7gc4cm718jf33x375j8w98nslsfam7l6n9rrmr2h8";
        };
      };
    };
    "alt-three/emoji" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "alt-three-emoji-e0eab12ca83e0ec56908fc066227e7da7f97d7f0";
        src = fetchurl {
          url = https://api.github.com/repos/AltThree/Emoji/zipball/e0eab12ca83e0ec56908fc066227e7da7f97d7f0;
          sha256 = "0hffi4qysha0qjn9da7jllnyp8n5rvnmaa1kbfa2wi94vsqc0azd";
        };
      };
    };
    "alt-three/twitter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "alt-three-twitter-6f1f33b208118dfadf089c51c3410f62400147f3";
        src = fetchurl {
          url = https://api.github.com/repos/AltThree/Twitter/zipball/6f1f33b208118dfadf089c51c3410f62400147f3;
          sha256 = "0xn57cdv3dgvmxafsjk11kyfjx1z2khv0k29dmr5znf0bgks0agg";
        };
      };
    };
    "alt-three/validator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "alt-three-validator-1ea2a482c69f1c568e77c62d19633c3c5b84cc91";
        src = fetchurl {
          url = https://api.github.com/repos/AltThree/Validator/zipball/1ea2a482c69f1c568e77c62d19633c3c5b84cc91;
          sha256 = "197smwnfjlxm3f2grz6cj3pv8935lk40y7lralykwfd667anqgi4";
        };
      };
    };
    "asm89/stack-cors" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "asm89-stack-cors-c163e2b614550aedcf71165db2473d936abbced6";
        src = fetchurl {
          url = https://api.github.com/repos/asm89/stack-cors/zipball/c163e2b614550aedcf71165db2473d936abbced6;
          sha256 = "0x0k4fm9whl1ipczdkan16y4h3rh7wy6nxhvqq9m0ql4rv2iv99a";
        };
      };
    };
    "aws/aws-sdk-php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "aws-aws-sdk-php-858a3566f6bce79bb6449a9faff45ab3d8f75a3a";
        src = fetchurl {
          url = https://api.github.com/repos/aws/aws-sdk-php/zipball/858a3566f6bce79bb6449a9faff45ab3d8f75a3a;
          sha256 = "0sma0q7bal406pbwb857v84cra8lvv71gcqngliacw2z33a4229v";
        };
      };
    };
    "bacon/bacon-qr-code" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "bacon-bacon-qr-code-5a91b62b9d37cee635bbf8d553f4546057250bee";
        src = fetchurl {
          url = https://api.github.com/repos/Bacon/BaconQrCode/zipball/5a91b62b9d37cee635bbf8d553f4546057250bee;
          sha256 = "0rb88fg083790bbciffniff7xqkgzm091szm131afhkl8rr7pnkq";
        };
      };
    };
    "barryvdh/laravel-cors" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "barryvdh-laravel-cors-c95ac944f2f20a17949aae6645692dfd3b402bca";
        src = fetchurl {
          url = https://api.github.com/repos/barryvdh/laravel-cors/zipball/c95ac944f2f20a17949aae6645692dfd3b402bca;
          sha256 = "08w0kr33x3rx0ks4fpwajyxacggzxqwk77yj9v41k73pbh4c97yd";
        };
      };
    };
    "christian-riesen/base32" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "christian-riesen-base32-80ff0e3b2124e61b4b39e2535709452f70bff367";
        src = fetchurl {
          url = https://api.github.com/repos/ChristianRiesen/base32/zipball/80ff0e3b2124e61b4b39e2535709452f70bff367;
          sha256 = "06bhmpz2kwjjkddiw90394lv3cvz0vqq93nhpfn2yrx0sc5wn4j7";
        };
      };
    };
    "dnoegel/php-xdg-base-dir" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "dnoegel-php-xdg-base-dir-265b8593498b997dc2d31e75b89f053b5cc9621a";
        src = fetchurl {
          url = https://api.github.com/repos/dnoegel/php-xdg-base-dir/zipball/265b8593498b997dc2d31e75b89f053b5cc9621a;
          sha256 = "1xkzxi7j589ayvx1669qaybamravfawz6hc6im32v8vkkbng5kva";
        };
      };
    };
    "doctrine/cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-cache-d768d58baee9a4862ca783840eca1b9add7a7f57";
        src = fetchurl {
          url = https://api.github.com/repos/doctrine/cache/zipball/d768d58baee9a4862ca783840eca1b9add7a7f57;
          sha256 = "1kljhw4gqp12iz88h6ymsrlfir2fis7icn6dffyizfc1csyb4s2i";
        };
      };
    };
    "doctrine/dbal" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-dbal-22800bd651c1d8d2a9719e2a3dc46d5108ebfcc9";
        src = fetchurl {
          url = https://api.github.com/repos/doctrine/dbal/zipball/22800bd651c1d8d2a9719e2a3dc46d5108ebfcc9;
          sha256 = "0kbahs699jd8pxf512dgg7arv49dc7qzi3mx8snxqm4h15n5brnj";
        };
      };
    };
    "doctrine/event-manager" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-event-manager-a520bc093a0170feeb6b14e9d83f3a14452e64b3";
        src = fetchurl {
          url = https://api.github.com/repos/doctrine/event-manager/zipball/a520bc093a0170feeb6b14e9d83f3a14452e64b3;
          sha256 = "165cxvw4idqj01l63nya2whpdb3fz6ld54rx198b71bzwfrydl88";
        };
      };
    };
    "doctrine/inflector" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-inflector-5527a48b7313d15261292c149e55e26eae771b0a";
        src = fetchurl {
          url = https://api.github.com/repos/doctrine/inflector/zipball/5527a48b7313d15261292c149e55e26eae771b0a;
          sha256 = "0ng6vlwjr8h6hqwa32ynykz1mhlfsff5hirjidlk086ab6njppa5";
        };
      };
    };
    "doctrine/lexer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-lexer-1febd6c3ef84253d7c815bed85fc622ad207a9f8";
        src = fetchurl {
          url = https://api.github.com/repos/doctrine/lexer/zipball/1febd6c3ef84253d7c815bed85fc622ad207a9f8;
          sha256 = "0ndvnx841cqr3myvvv4j7isyiaz6zmp2g8lpc42q5gqi1rv4n8vj";
        };
      };
    };
    "dragonmantank/cron-expression" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "dragonmantank-cron-expression-72b6fbf76adb3cf5bc0db68559b33d41219aba27";
        src = fetchurl {
          url = https://api.github.com/repos/dragonmantank/cron-expression/zipball/72b6fbf76adb3cf5bc0db68559b33d41219aba27;
          sha256 = "10p40634ybb8l86fmk2v5vf3wig2mpgn6872napmcms1kdfjw3b3";
        };
      };
    };
    "egulias/email-validator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "egulias-email-validator-128cc721d771ec2c46ce59698f4ca42b73f71b25";
        src = fetchurl {
          url = https://api.github.com/repos/egulias/EmailValidator/zipball/128cc721d771ec2c46ce59698f4ca42b73f71b25;
          sha256 = "0shvjhrv5mg8s839026wnciyv9w5p57nzfim7q840zr1q1rnlzkb";
        };
      };
    };
    "erusev/parsedown" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "erusev-parsedown-6d893938171a817f4e9bc9e86f2da1e370b7bcd7";
        src = fetchurl {
          url = https://api.github.com/repos/erusev/parsedown/zipball/6d893938171a817f4e9bc9e86f2da1e370b7bcd7;
          sha256 = "1jswm82xydyi4622hhks4zwa4a0w0adm14zjvjip1kqvm6lbhnpa";
        };
      };
    };
    "fideloper/proxy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "fideloper-proxy-177c79a2d1f9970f89ee2fb4c12b429af38b6dfb";
        src = fetchurl {
          url = https://api.github.com/repos/fideloper/TrustedProxy/zipball/177c79a2d1f9970f89ee2fb4c12b429af38b6dfb;
          sha256 = "0yk1a9mwask4b9zcimdv8i6j6ignva2yp410k2zx7yqx1vd0y3ch";
        };
      };
    };
    "graham-campbell/binput" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "graham-campbell-binput-986973e1a9697a903d9850d63ed60eb8658753a2";
        src = fetchurl {
          url = https://api.github.com/repos/GrahamCampbell/Laravel-Binput/zipball/986973e1a9697a903d9850d63ed60eb8658753a2;
          sha256 = "08yhix8zd13qxdghp08yflp94g102dahl09a7lpywl0vy3d5ng5i";
        };
      };
    };
    "graham-campbell/exceptions" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "graham-campbell-exceptions-c33548417cf9903a049c7311ab57352a7e720b33";
        src = fetchurl {
          url = https://api.github.com/repos/GrahamCampbell/Laravel-Exceptions/zipball/c33548417cf9903a049c7311ab57352a7e720b33;
          sha256 = "0agmzycys6mwradpaary5vmbwhravjlv9jr0sxz8jbhisx71ddbp";
        };
      };
    };
    "graham-campbell/guzzle-factory" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "graham-campbell-guzzle-factory-ce3b6e4c6761537e977833e949aa3e4333075a0d";
        src = fetchurl {
          url = https://api.github.com/repos/GrahamCampbell/Guzzle-Factory/zipball/ce3b6e4c6761537e977833e949aa3e4333075a0d;
          sha256 = "0nd8h7hg2vlig85x9kvrciklqnhz9wv9wclivir8azhwn06739ga";
        };
      };
    };
    "graham-campbell/markdown" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "graham-campbell-markdown-e076ed4bc8e98f0444b996acdd6042f6f45fe7c2";
        src = fetchurl {
          url = https://api.github.com/repos/GrahamCampbell/Laravel-Markdown/zipball/e076ed4bc8e98f0444b996acdd6042f6f45fe7c2;
          sha256 = "03g35g7ra821w2kqwhr0a33k2dw7yllrxp8gbry4688yl6nzjg3v";
        };
      };
    };
    "graham-campbell/security" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "graham-campbell-security-c594fc141bf117c613cf718803e4a55fe4b7d55b";
        src = fetchurl {
          url = https://api.github.com/repos/GrahamCampbell/Laravel-Security/zipball/c594fc141bf117c613cf718803e4a55fe4b7d55b;
          sha256 = "1a4wnq6gl6c5fgzrw0ffm16p3hh5k7k5mc6lprp2yqv5wkdbpnv7";
        };
      };
    };
    "graham-campbell/security-core" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "graham-campbell-security-core-6873cee667e415d0b429adc807b8e1ee450e0f5f";
        src = fetchurl {
          url = https://api.github.com/repos/GrahamCampbell/Security-Core/zipball/6873cee667e415d0b429adc807b8e1ee450e0f5f;
          sha256 = "0cvgvjz5996ajm8f11pjwafwcf5aandccy4yn36p67n8advk9d2m";
        };
      };
    };
    "guzzlehttp/guzzle" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "guzzlehttp-guzzle-407b0cb880ace85c9b63c5f9551db498cb2d50ba";
        src = fetchurl {
          url = https://api.github.com/repos/guzzle/guzzle/zipball/407b0cb880ace85c9b63c5f9551db498cb2d50ba;
          sha256 = "19m6lgb0blhap3qiqm00slgfc1sc6lzqpbdk47fqg4xgcbn0ymmb";
        };
      };
    };
    "guzzlehttp/promises" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "guzzlehttp-promises-a59da6cf61d80060647ff4d3eb2c03a2bc694646";
        src = fetchurl {
          url = https://api.github.com/repos/guzzle/promises/zipball/a59da6cf61d80060647ff4d3eb2c03a2bc694646;
          sha256 = "1kpl91fzalcgkcs16lpakvzcnbkry3id4ynx6xhq477p4fipdciz";
        };
      };
    };
    "guzzlehttp/psr7" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "guzzlehttp-psr7-9f83dded91781a01c63574e387eaa769be769115";
        src = fetchurl {
          url = https://api.github.com/repos/guzzle/psr7/zipball/9f83dded91781a01c63574e387eaa769be769115;
          sha256 = "1xv2zlwfazhb6jykm27cscl5m37hq0ifgdnblk0hhnyr1dm8yrvk";
        };
      };
    };
    "jakub-onderka/php-console-color" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "jakub-onderka-php-console-color-d5deaecff52a0d61ccb613bb3804088da0307191";
        src = fetchurl {
          url = https://api.github.com/repos/JakubOnderka/PHP-Console-Color/zipball/d5deaecff52a0d61ccb613bb3804088da0307191;
          sha256 = "0ih1sa301sda03vqsbg28mz44azii1l0adsjp94p6lhgaawyj4rn";
        };
      };
    };
    "jakub-onderka/php-console-highlighter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "jakub-onderka-php-console-highlighter-9f7a229a69d52506914b4bc61bfdb199d90c5547";
        src = fetchurl {
          url = https://api.github.com/repos/JakubOnderka/PHP-Console-Highlighter/zipball/9f7a229a69d52506914b4bc61bfdb199d90c5547;
          sha256 = "1wgk540dkk514vb6azn84mygxy92myi1y27l9la6q24h0hb96514";
        };
      };
    };
    "jenssegers/date" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "jenssegers-date-58393b0544fc2525b3fcd02aa4c989857107e05a";
        src = fetchurl {
          url = https://api.github.com/repos/jenssegers/date/zipball/58393b0544fc2525b3fcd02aa4c989857107e05a;
          sha256 = "1ccw77v3jj2ai9ysyh5fczmh2jdr1mksqvi67brgaqh32rswymzl";
        };
      };
    };
    "kylekatarnls/update-helper" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "kylekatarnls-update-helper-b34a46d7f5ec1795b4a15ac9d46b884377262df9";
        src = fetchurl {
          url = https://api.github.com/repos/kylekatarnls/update-helper/zipball/b34a46d7f5ec1795b4a15ac9d46b884377262df9;
          sha256 = "1nni2ci51p8sdsapqfbdlgaf9kl3qgj4lfia2p3cij3kyqa3sszd";
        };
      };
    };
    "laravel/framework" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-framework-8e69728f1c80a024588adbd24c65c4fcf9aa9192";
        src = fetchurl {
          url = https://api.github.com/repos/laravel/framework/zipball/8e69728f1c80a024588adbd24c65c4fcf9aa9192;
          sha256 = "02wk9rwwhv5yy3jncly03kg9kkcpkwgl0as93vjf3q0zbi4a5z2j";
        };
      };
    };
    "laravel/nexmo-notification-channel" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-nexmo-notification-channel-03edd42a55b306ff980c9950899d5a2b03260d48";
        src = fetchurl {
          url = https://api.github.com/repos/laravel/nexmo-notification-channel/zipball/03edd42a55b306ff980c9950899d5a2b03260d48;
          sha256 = "1qwy8g42wd1s6a7hq4azx3gahd97c8mmgxbdlvapf1m41njs2wzx";
        };
      };
    };
    "laravel/slack-notification-channel" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-slack-notification-channel-6e164293b754a95f246faf50ab2bbea3e4923cc9";
        src = fetchurl {
          url = https://api.github.com/repos/laravel/slack-notification-channel/zipball/6e164293b754a95f246faf50ab2bbea3e4923cc9;
          sha256 = "0v1l7kjpnjs3zv5mjpa1w8rhxciipdlcvqs2cbd80h2inwg55dq0";
        };
      };
    };
    "laravel/tinker" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-tinker-cafbf598a90acde68985660e79b2b03c5609a405";
        src = fetchurl {
          url = https://api.github.com/repos/laravel/tinker/zipball/cafbf598a90acde68985660e79b2b03c5609a405;
          sha256 = "06aay28znsvinzjrxxqxhypgvdnhaj6dzf4l4si3zsiwpdwlhfhg";
        };
      };
    };
    "lcobucci/jwt" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "lcobucci-jwt-a11ec5f4b4d75d1fcd04e133dede4c317aac9e18";
        src = fetchurl {
          url = https://api.github.com/repos/lcobucci/jwt/zipball/a11ec5f4b4d75d1fcd04e133dede4c317aac9e18;
          sha256 = "10jyphb9c246d2h86m1jx162dlcp0k34cyp6d5pi10wg5fdfxnzg";
        };
      };
    };
    "league/commonmark" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-commonmark-f94e18d68260f43a7d846279cad88405854b1306";
        src = fetchurl {
          url = https://api.github.com/repos/thephpleague/commonmark/zipball/f94e18d68260f43a7d846279cad88405854b1306;
          sha256 = "1nbff9aqyc1ajmdwkljk4v1srbxzdgwmvzkhkprjbpch8zrda6hf";
        };
      };
    };
    "league/flysystem" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-flysystem-08e12b7628f035600634a5e76d95b5eb66cea674";
        src = fetchurl {
          url = https://api.github.com/repos/thephpleague/flysystem/zipball/08e12b7628f035600634a5e76d95b5eb66cea674;
          sha256 = "1g6jid28n8bvnpxh3wmp49k5yyyradsx17pq18a4b679dgxhg0zh";
        };
      };
    };
    "mccool/laravel-auto-presenter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "mccool-laravel-auto-presenter-45270a0054b4d3ae0550cf826bbeeb5c540afac1";
        src = fetchurl {
          url = https://api.github.com/repos/laravel-auto-presenter/laravel-auto-presenter/zipball/45270a0054b4d3ae0550cf826bbeeb5c540afac1;
          sha256 = "0y9rjpic6wiv5xvh2h3s8dmrlrsf1n6r4mkpwgk7j4xj9q7589gj";
        };
      };
    };
    "monolog/monolog" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "monolog-monolog-bfc9ebb28f97e7a24c45bdc3f0ff482e47bb0266";
        src = fetchurl {
          url = https://api.github.com/repos/Seldaek/monolog/zipball/bfc9ebb28f97e7a24c45bdc3f0ff482e47bb0266;
          sha256 = "0h3nnxjf2bdh7nmpqnpij99lqv6bw13r2bx83d8vn5zvblwg5png";
        };
      };
    };
    "mtdowling/jmespath.php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "mtdowling-jmespath.php-adcc9531682cf87dfda21e1fd5d0e7a41d292fac";
        src = fetchurl {
          url = https://api.github.com/repos/jmespath/jmespath.php/zipball/adcc9531682cf87dfda21e1fd5d0e7a41d292fac;
          sha256 = "11y5awyh0vyhv5k0qdirqhl5dbl2hyp5nh3v2q4bmbfxigcxi198";
        };
      };
    };
    "nesbot/carbon" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nesbot-carbon-8dd4172bfe1784952c4d58c4db725d183b1c23ad";
        src = fetchurl {
          url = https://api.github.com/repos/briannesbitt/Carbon/zipball/8dd4172bfe1784952c4d58c4db725d183b1c23ad;
          sha256 = "1dgkj4190qq756gwvz0837zlvfrz6kqlmglfgzaki6w6img27gd7";
        };
      };
    };
    "nexmo/client" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nexmo-client-182d41a02ebd3e4be147baea45458ccfe2f528c4";
        src = fetchurl {
          url = https://api.github.com/repos/Nexmo/nexmo-php/zipball/182d41a02ebd3e4be147baea45458ccfe2f528c4;
          sha256 = "1q3s9qvq73f953k4nhzm8sd8g66yas22z2krd4mx5fcfjdmqr8sj";
        };
      };
    };
    "nikic/php-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nikic-php-parser-1bd73cc04c3843ad8d6b0bfc0956026a151fc420";
        src = fetchurl {
          url = https://api.github.com/repos/nikic/PHP-Parser/zipball/1bd73cc04c3843ad8d6b0bfc0956026a151fc420;
          sha256 = "1vy9v2ri2yyvk8afixl55z2h9mvg2n6nqjki4cgcsm8ira0iawci";
        };
      };
    };
    "opis/closure" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "opis-closure-f846725591203098246276b2e7b9e8b7814c4965";
        src = fetchurl {
          url = https://api.github.com/repos/opis/closure/zipball/f846725591203098246276b2e7b9e8b7814c4965;
          sha256 = "1mag2ccqp53shxf21rqbhvqjz8ap6lbicxsqdplzpf1p8dsdbp5h";
        };
      };
    };
    "php-http/guzzle6-adapter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "php-http-guzzle6-adapter-a56941f9dc6110409cfcddc91546ee97039277ab";
        src = fetchurl {
          url = https://api.github.com/repos/php-http/guzzle6-adapter/zipball/a56941f9dc6110409cfcddc91546ee97039277ab;
          sha256 = "1v8rnn6fb8k8cb9v2vncqrim2587hrl4c7jjsmw17mlhzs2sjarl";
        };
      };
    };
    "php-http/httplug" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "php-http-httplug-1c6381726c18579c4ca2ef1ec1498fdae8bdf018";
        src = fetchurl {
          url = https://api.github.com/repos/php-http/httplug/zipball/1c6381726c18579c4ca2ef1ec1498fdae8bdf018;
          sha256 = "1rricl1bxallfp2fc2rvk9wmsk8ivnqm2ixdk141p2z51r01kk4j";
        };
      };
    };
    "php-http/promise" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "php-http-promise-dc494cdc9d7160b9a09bd5573272195242ce7980";
        src = fetchurl {
          url = https://api.github.com/repos/php-http/promise/zipball/dc494cdc9d7160b9a09bd5573272195242ce7980;
          sha256 = "1vcf3s8mlyrhchyl43piizph3g2zyw5n9qi99mm0in0j2g3xql5l";
        };
      };
    };
    "pragmarx/google2fa" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "pragmarx-google2fa-908678ba9b26cf8ecd7ddca6bfd86afc5b4874df";
        src = fetchurl {
          url = https://api.github.com/repos/antonioribeiro/google2fa/zipball/908678ba9b26cf8ecd7ddca6bfd86afc5b4874df;
          sha256 = "1wv1zfrp11fx0ghlkacs9ki0vaskl1k8xkm4z0sbwl0dg3j2rf4w";
        };
      };
    };
    "predis/predis" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "predis-predis-f0210e38881631afeafb56ab43405a92cafd9fd1";
        src = fetchurl {
          url = https://api.github.com/repos/nrk/predis/zipball/f0210e38881631afeafb56ab43405a92cafd9fd1;
          sha256 = "0361alhpbzmi81d0maqd2wd61izf6jfqqdwqr05i02k047lfc6yp";
        };
      };
    };
    "psr/container" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-container-b7ce3b176482dbbc1245ebf52b181af44c2cf55f";
        src = fetchurl {
          url = https://api.github.com/repos/php-fig/container/zipball/b7ce3b176482dbbc1245ebf52b181af44c2cf55f;
          sha256 = "0rkz64vgwb0gfi09klvgay4qnw993l1dc03vyip7d7m2zxi6cy4j";
        };
      };
    };
    "psr/http-factory" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-http-factory-12ac7fcd07e5b077433f5f2bee95b3a771bf61be";
        src = fetchurl {
          url = https://api.github.com/repos/php-fig/http-factory/zipball/12ac7fcd07e5b077433f5f2bee95b3a771bf61be;
          sha256 = "0inbnqpc5bfhbbda9dwazsrw9xscfnc8rdx82q1qm3r446mc1vds";
        };
      };
    };
    "psr/http-message" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-http-message-f6561bf28d520154e4b0ec72be95418abe6d9363";
        src = fetchurl {
          url = https://api.github.com/repos/php-fig/http-message/zipball/f6561bf28d520154e4b0ec72be95418abe6d9363;
          sha256 = "195dd67hva9bmr52iadr4kyp2gw2f5l51lplfiay2pv6l9y4cf45";
        };
      };
    };
    "psr/log" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-log-6c001f1daafa3a3ac1d8ff69ee4db8e799a654dd";
        src = fetchurl {
          url = https://api.github.com/repos/php-fig/log/zipball/6c001f1daafa3a3ac1d8ff69ee4db8e799a654dd;
          sha256 = "1i351p3gd1pgjcjxv7mwwkiw79f1xiqr38irq22156h05zlcx80d";
        };
      };
    };
    "psr/simple-cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-simple-cache-408d5eafb83c57f6365a3ca330ff23aa4a5fa39b";
        src = fetchurl {
          url = https://api.github.com/repos/php-fig/simple-cache/zipball/408d5eafb83c57f6365a3ca330ff23aa4a5fa39b;
          sha256 = "1djgzclkamjxi9jy4m9ggfzgq1vqxaga2ip7l3cj88p7rwkzjxgw";
        };
      };
    };
    "psy/psysh" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psy-psysh-9aaf29575bb8293206bb0420c1e1c87ff2ffa94e";
        src = fetchurl {
          url = https://api.github.com/repos/bobthecow/psysh/zipball/9aaf29575bb8293206bb0420c1e1c87ff2ffa94e;
          sha256 = "1frmq783vhj8mk8rchid5rs8iz4i91hsmhzwyc58cvij2yd8a6ny";
        };
      };
    };
    "ralouphie/getallheaders" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "ralouphie-getallheaders-5601c8a83fbba7ef674a7369456d12f1e0d0eafa";
        src = fetchurl {
          url = https://api.github.com/repos/ralouphie/getallheaders/zipball/5601c8a83fbba7ef674a7369456d12f1e0d0eafa;
          sha256 = "1axanjwrxcmnh6am7a813j1xqa1cx2jp0gal93dr33wpqq0ys09l";
        };
      };
    };
    "ramsey/uuid" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "ramsey-uuid-d09ea80159c1929d75b3f9c60504d613aeb4a1e3";
        src = fetchurl {
          url = https://api.github.com/repos/ramsey/uuid/zipball/d09ea80159c1929d75b3f9c60504d613aeb4a1e3;
          sha256 = "1hgnf32xy2cxfwihncmsndnxgkf2hhs6zjqnhyxdhwjyhv4apb67";
        };
      };
    };
    "simplesoftwareio/simple-qrcode" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "simplesoftwareio-simple-qrcode-17c5e45c79c40f717d4bc08cf5e568f29ebf9333";
        src = fetchurl {
          url = https://api.github.com/repos/SimpleSoftwareIO/simple-qrcode/zipball/17c5e45c79c40f717d4bc08cf5e568f29ebf9333;
          sha256 = "08cx3chdsfxah3r2ipcgbvsxq44i9jhm0zwvv9dy1g80122nkw6n";
        };
      };
    };
    "swiftmailer/swiftmailer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "swiftmailer-swiftmailer-5397cd05b0a0f7937c47b0adcb4c60e5ab936b6a";
        src = fetchurl {
          url = https://api.github.com/repos/swiftmailer/swiftmailer/zipball/5397cd05b0a0f7937c47b0adcb4c60e5ab936b6a;
          sha256 = "1gv1jp8jdn1g2g1048lj4pn9icqgql40dz5gvp4879s8xc11z7fq";
        };
      };
    };
    "symfony/console" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-console-d50bbeeb0e17e6dd4124ea391eff235e932cbf64";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/console/zipball/d50bbeeb0e17e6dd4124ea391eff235e932cbf64;
          sha256 = "1kqnyxffv3hblfy1lwhla5ng876vhf1j2g30b3qxirfys1z1nync";
        };
      };
    };
    "symfony/css-selector" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-css-selector-105c98bb0c5d8635bea056135304bd8edcc42b4d";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/css-selector/zipball/105c98bb0c5d8635bea056135304bd8edcc42b4d;
          sha256 = "1c5mbjv5fcfca8jn41wn2kg9bqagpcqsvw40smkpgvj4d1g1ia6x";
        };
      };
    };
    "symfony/debug" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-debug-4e025104f1f9adb1f7a2d14fb102c9986d6e97c6";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/debug/zipball/4e025104f1f9adb1f7a2d14fb102c9986d6e97c6;
          sha256 = "14gy5xhpn3kdys5d6ra9f16ns5srh4cb4nl86yi4x6p3b0qnvpfw";
        };
      };
    };
    "symfony/event-dispatcher" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-event-dispatcher-4e6c670af81c4fb0b6c08b035530a9915d0b691f";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/event-dispatcher/zipball/4e6c670af81c4fb0b6c08b035530a9915d0b691f;
          sha256 = "0jd6lx98labmj3dgnqzy3ki8lzd2jdiq4wglzj059ccmkv1x2jkc";
        };
      };
    };
    "symfony/event-dispatcher-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-event-dispatcher-contracts-c61766f4440ca687de1084a5c00b08e167a2575c";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/event-dispatcher-contracts/zipball/c61766f4440ca687de1084a5c00b08e167a2575c;
          sha256 = "0dyz8cyr4z99a786a81vlfk2yns55240sdgxa5z3x48znmadkkq6";
        };
      };
    };
    "symfony/finder" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-finder-b3d4f4c0e4eadfdd8b296af9ca637cfbf51d8176";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/finder/zipball/b3d4f4c0e4eadfdd8b296af9ca637cfbf51d8176;
          sha256 = "0aliiqrj2gmkh2cnjnmlfxrjmckq6z60kdc61q5439045cpblzd0";
        };
      };
    };
    "symfony/http-foundation" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-http-foundation-b7e4945dd9b277cd24e93566e4da0a87956392a9";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/http-foundation/zipball/b7e4945dd9b277cd24e93566e4da0a87956392a9;
          sha256 = "17bghxgin3vbmwkl9s67jvi9ippziqhvj6jr3mikhq97659bw0jc";
        };
      };
    };
    "symfony/http-kernel" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-http-kernel-738ad561cd6a8d1c44ee1da941b2e628e264c429";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/http-kernel/zipball/738ad561cd6a8d1c44ee1da941b2e628e264c429;
          sha256 = "0173963xqgdhzrnsn3cf6b56lr8026a1yaw87aabm4j7cfyhr1qk";
        };
      };
    };
    "symfony/mime" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-mime-ec2c5565de60e03f33d4296a655e3273f0ad1f8b";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/mime/zipball/ec2c5565de60e03f33d4296a655e3273f0ad1f8b;
          sha256 = "1da15b6akzwhzm2qasqbqzk57vl809cwdh7zmldv5mv1scbx2miv";
        };
      };
    };
    "symfony/polyfill-ctype" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-ctype-82ebae02209c21113908c229e9883c419720738a";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-ctype/zipball/82ebae02209c21113908c229e9883c419720738a;
          sha256 = "1p3grd56c4agrv3v5lfnsi0ryghha7f0jx5hqs2lj7hvcx1fzam5";
        };
      };
    };
    "symfony/polyfill-iconv" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-iconv-f037ea22acfaee983e271dd9c3b8bb4150bd8ad7";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-iconv/zipball/f037ea22acfaee983e271dd9c3b8bb4150bd8ad7;
          sha256 = "1ylpj46ydh6mgwh3a4n3lq2lincbaj99anhzdsgvhdwcmvvavy84";
        };
      };
    };
    "symfony/polyfill-intl-idn" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-intl-idn-c766e95bec706cdd89903b1eda8afab7d7a6b7af";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-intl-idn/zipball/c766e95bec706cdd89903b1eda8afab7d7a6b7af;
          sha256 = "1vizds8kypzcs56dvd439lzf53fmgqbxnx422k13rswd3ndgv7f7";
        };
      };
    };
    "symfony/polyfill-php72" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php72-ab50dcf166d5f577978419edd37aa2bb8eabce0c";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-php72/zipball/ab50dcf166d5f577978419edd37aa2bb8eabce0c;
          sha256 = "0a2qn3n12kzd79g08aazcjv6zd834zrrlxcskhcp5vag8z46psgg";
        };
      };
    };
    "symfony/polyfill-php73" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php73-d1fb4abcc0c47be136208ad9d68bf59f1ee17abd";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-php73/zipball/d1fb4abcc0c47be136208ad9d68bf59f1ee17abd;
          sha256 = "0p3asdn7gml1fxrzqchjaw40qp55n2qnbms7ljhjn8azyl9cp78v";
        };
      };
    };
    "symfony/process" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-process-856d35814cf287480465bb7a6c413bb7f5f5e69c";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/process/zipball/856d35814cf287480465bb7a6c413bb7f5f5e69c;
          sha256 = "0siz6mgyq550hh0mgknmm55giz8b8qj0a08yfxa2wki3igxnn07f";
        };
      };
    };
    "symfony/routing" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-routing-9b31cd24f6ad2cebde6845f6daa9c6d69efe2465";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/routing/zipball/9b31cd24f6ad2cebde6845f6daa9c6d69efe2465;
          sha256 = "16haw6qwak2ll2hlim2cay4xlyrdzhadrsxnbp70yhqbmqwn1jpd";
        };
      };
    };
    "symfony/service-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-service-contracts-f391a00de78ec7ec8cf5cdcdae59ec7b883edb8d";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/service-contracts/zipball/f391a00de78ec7ec8cf5cdcdae59ec7b883edb8d;
          sha256 = "1zhckk2kmd2vs212sbsq1yiikwmsg9p2h7q9c41j1vz2ndccj8fp";
        };
      };
    };
    "symfony/translation" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-translation-5dda505e5f65d759741dfaf4e54b36010a4b57aa";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/translation/zipball/5dda505e5f65d759741dfaf4e54b36010a4b57aa;
          sha256 = "1492x9whc1cd89nkkrfxwwvlk53js94p968flcx3bx7k2xz457lv";
        };
      };
    };
    "symfony/translation-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-translation-contracts-cb4b18ad7b92a26e83b65dde940fab78339e6f3c";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/translation-contracts/zipball/cb4b18ad7b92a26e83b65dde940fab78339e6f3c;
          sha256 = "0dh7zw572xyd71kby3pxzglb59y6yscndxikad9ijm6ik3xr83jq";
        };
      };
    };
    "symfony/var-dumper" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-var-dumper-f974f448154928d2b5fb7c412bd23b81d063f34b";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/var-dumper/zipball/f974f448154928d2b5fb7c412bd23b81d063f34b;
          sha256 = "0yk3w15k4dhf6afyx6kbhjvfjx2fdyzmbmkkdd6b29ih12alh8n7";
        };
      };
    };
    "tijsverkoyen/css-to-inline-styles" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "tijsverkoyen-css-to-inline-styles-0ed4a2ea4e0902dac0489e6436ebcd5bbcae9757";
        src = fetchurl {
          url = https://api.github.com/repos/tijsverkoyen/CssToInlineStyles/zipball/0ed4a2ea4e0902dac0489e6436ebcd5bbcae9757;
          sha256 = "183pchgj3sccybj12dvd0a13vw92gjrs0gwwxcv4xl5r8nb7w1si";
        };
      };
    };
    "twig/twig" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "twig-twig-699ed2342557c88789a15402de5eb834dedd6792";
        src = fetchurl {
          url = https://api.github.com/repos/twigphp/Twig/zipball/699ed2342557c88789a15402de5eb834dedd6792;
          sha256 = "10chvsgzijmy4s8zp63mvcq9yhnby747aljk9qz9p4nxyf25fbs5";
        };
      };
    };
    "vlucas/phpdotenv" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "vlucas-phpdotenv-2a7dcf7e3e02dc5e701004e51a6f304b713107d5";
        src = fetchurl {
          url = https://api.github.com/repos/vlucas/phpdotenv/zipball/2a7dcf7e3e02dc5e701004e51a6f304b713107d5;
          sha256 = "0qmwa2i44m6mz2csg4rmwwdak4fcdbsrs4iwpibdkznrh1ycfklg";
        };
      };
    };
    "zendframework/zend-diactoros" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "zendframework-zend-diactoros-37bf68b428850ee26ed7c3be6c26236dd95a95f1";
        src = fetchurl {
          url = https://api.github.com/repos/zendframework/zend-diactoros/zipball/37bf68b428850ee26ed7c3be6c26236dd95a95f1;
          sha256 = "06rh8a1n5djy36h76ifcy1d0v1ah0wwj85yl4jzj98dwwg9w0y7n";
        };
      };
    };
  };
  devPackages = {
    "alt-three/testbench" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "alt-three-testbench-d59f8207f0c444cb2c1c7e889aa8e2f5b334e704";
        src = fetchurl {
          url = https://api.github.com/repos/AltThree/TestBench/zipball/d59f8207f0c444cb2c1c7e889aa8e2f5b334e704;
          sha256 = "0c76a0cl489zbc6cjg24bb0rkrmia6mw6wsbzj0gddc6xlfkysxx";
        };
      };
    };
    "barryvdh/laravel-debugbar" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "barryvdh-laravel-debugbar-2d195779ea4f809f69764a795e2ec371dbb76a96";
        src = fetchurl {
          url = https://api.github.com/repos/barryvdh/laravel-debugbar/zipball/2d195779ea4f809f69764a795e2ec371dbb76a96;
          sha256 = "117fna46w84j7gh49i0i25r4gclc22hd7ram7g0s8w431vma129s";
        };
      };
    };
    "bugsnag/bugsnag" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "bugsnag-bugsnag-2073d449559b0d533f2cfdfb7ceabbeef8187ac0";
        src = fetchurl {
          url = https://api.github.com/repos/bugsnag/bugsnag-php/zipball/2073d449559b0d533f2cfdfb7ceabbeef8187ac0;
          sha256 = "0l0dh7w3wn8vnrq01kqm048is0lkpgrpaj63zff337bymp8a87vr";
        };
      };
    };
    "bugsnag/bugsnag-laravel" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "bugsnag-bugsnag-laravel-a9922063076eabb0ad8be73fc2999f4105b71d7a";
        src = fetchurl {
          url = https://api.github.com/repos/bugsnag/bugsnag-laravel/zipball/a9922063076eabb0ad8be73fc2999f4105b71d7a;
          sha256 = "1qrmy2h8k1gjzjhll2biznvf818zg7bfmfrbdcjr705l92j0396g";
        };
      };
    };
    "bugsnag/bugsnag-psr-logger" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "bugsnag-bugsnag-psr-logger-a9bed75b830cd1a702c888fdbb1e8b2b46af1ac0";
        src = fetchurl {
          url = https://api.github.com/repos/bugsnag/bugsnag-psr-logger/zipball/a9bed75b830cd1a702c888fdbb1e8b2b46af1ac0;
          sha256 = "0xbypf4wg18xj91jrhz3mlpkl4lnmz23f0vnanm17fx8pmwk8mr3";
        };
      };
    };
    "composer/ca-bundle" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-ca-bundle-558f321c52faeb4828c03e7dc0cfe39a09e09a2d";
        src = fetchurl {
          url = https://api.github.com/repos/composer/ca-bundle/zipball/558f321c52faeb4828c03e7dc0cfe39a09e09a2d;
          sha256 = "037jbdlnsmyc118fr1z233pqjsfp1bwz55pd7bdshzy2a9fna0i2";
        };
      };
    };
    "doctrine/instantiator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-instantiator-a2c590166b2133a4633738648b6b064edae0814a";
        src = fetchurl {
          url = https://api.github.com/repos/doctrine/instantiator/zipball/a2c590166b2133a4633738648b6b064edae0814a;
          sha256 = "1d75i3rhml0amm7wvgb3ixzlkn97x4hmdb9xcr6m8dbqhnzjqy24";
        };
      };
    };
    "filp/whoops" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "filp-whoops-1a1a1044ad00e285bd2825fac4c3a0443d90ad33";
        src = fetchurl {
          url = https://api.github.com/repos/filp/whoops/zipball/1a1a1044ad00e285bd2825fac4c3a0443d90ad33;
          sha256 = "1snsmmfkqwv6acr3qgv8pb1gz5a422nxcmhd99rclf9s40dfm8q5";
        };
      };
    };
    "fzaninotto/faker" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "fzaninotto-faker-f72816b43e74063c8b10357394b6bba8cb1c10de";
        src = fetchurl {
          url = https://api.github.com/repos/fzaninotto/Faker/zipball/f72816b43e74063c8b10357394b6bba8cb1c10de;
          sha256 = "18dlb13c7ablzad7ixjsydig1z2zmgd8jvjk3az8y2k7496yqxb6";
        };
      };
    };
    "graham-campbell/analyzer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "graham-campbell-analyzer-0ed700f993fc4b37f67a7aca9dcc2b6d0abe600c";
        src = fetchurl {
          url = https://api.github.com/repos/GrahamCampbell/Analyzer/zipball/0ed700f993fc4b37f67a7aca9dcc2b6d0abe600c;
          sha256 = "1bf8skh4pap513wbn8600fqs9l0b86l1q5yr1iz13jls0g0fdnwk";
        };
      };
    };
    "graham-campbell/testbench-core" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "graham-campbell-testbench-core-138218735a65f4532d6c4242a44ffa6c591bca09";
        src = fetchurl {
          url = https://api.github.com/repos/GrahamCampbell/Laravel-TestBench-Core/zipball/138218735a65f4532d6c4242a44ffa6c591bca09;
          sha256 = "1sla67i5b7y1pd896g3qc8dd4mcb43m36zvs5cxhc0wh67zqpmyy";
        };
      };
    };
    "hamcrest/hamcrest-php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "hamcrest-hamcrest-php-776503d3a8e85d4f9a1148614f95b7a608b046ad";
        src = fetchurl {
          url = https://api.github.com/repos/hamcrest/hamcrest-php/zipball/776503d3a8e85d4f9a1148614f95b7a608b046ad;
          sha256 = "12f2xsamhcksxcma4yzmm4clmhms1lz2aw4391zmb7y6agpwvjma";
        };
      };
    };
    "maximebf/debugbar" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "maximebf-debugbar-30e7d60937ee5f1320975ca9bc7bcdd44d500f07";
        src = fetchurl {
          url = https://api.github.com/repos/maximebf/php-debugbar/zipball/30e7d60937ee5f1320975ca9bc7bcdd44d500f07;
          sha256 = "1k6ikxp05h8lvq9xs3jgl14qb7ff0sbs0zj8af1r2rnp9wkg802m";
        };
      };
    };
    "mockery/mockery" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "mockery-mockery-0eb0b48c3f07b3b89f5169ce005b7d05b18cf1d2";
        src = fetchurl {
          url = https://api.github.com/repos/mockery/mockery/zipball/0eb0b48c3f07b3b89f5169ce005b7d05b18cf1d2;
          sha256 = "14iq33y1hxnz5q0v4kwg4gz17sd3xx7bs87zhym5jhb7f93s0xbc";
        };
      };
    };
    "myclabs/deep-copy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "myclabs-deep-copy-e6828efaba2c9b79f4499dae1d66ef8bfa7b2b72";
        src = fetchurl {
          url = https://api.github.com/repos/myclabs/DeepCopy/zipball/e6828efaba2c9b79f4499dae1d66ef8bfa7b2b72;
          sha256 = "1238bczgy09njqhq0p0vl8c6sifkl5a5hjxvs6if1d1840vda3z6";
        };
      };
    };
    "phar-io/manifest" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phar-io-manifest-7761fcacf03b4d4f16e7ccb606d4879ca431fcf4";
        src = fetchurl {
          url = https://api.github.com/repos/phar-io/manifest/zipball/7761fcacf03b4d4f16e7ccb606d4879ca431fcf4;
          sha256 = "1n59a0gnk43ryl54bc37hlsi1spvi8280bq64zddxrpagyjyp15a";
        };
      };
    };
    "phar-io/version" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phar-io-version-45a2ec53a73c70ce41d55cedef9063630abaf1b6";
        src = fetchurl {
          url = https://api.github.com/repos/phar-io/version/zipball/45a2ec53a73c70ce41d55cedef9063630abaf1b6;
          sha256 = "0syr7v2b3lsdavfa22z55sdkg5awc3jlzpgn0qk0d3vf6x96hvzp";
        };
      };
    };
    "phpdocumentor/reflection-common" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-reflection-common-21bdeb5f65d7ebf9f43b1b25d404f87deab5bfb6";
        src = fetchurl {
          url = https://api.github.com/repos/phpDocumentor/ReflectionCommon/zipball/21bdeb5f65d7ebf9f43b1b25d404f87deab5bfb6;
          sha256 = "1yaf1zg9lnkfnq2ndpviv0hg5bza9vjvv5l4wgcn25lx1p8a94w2";
        };
      };
    };
    "phpdocumentor/reflection-docblock" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-reflection-docblock-bdd9f737ebc2a01c06ea7ff4308ec6697db9b53c";
        src = fetchurl {
          url = https://api.github.com/repos/phpDocumentor/ReflectionDocBlock/zipball/bdd9f737ebc2a01c06ea7ff4308ec6697db9b53c;
          sha256 = "12drhwbrzyl7n8kpcnzjdfwzf7fyda2da1sd65s3rqr6q9l0wz1s";
        };
      };
    };
    "phpdocumentor/type-resolver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-type-resolver-9c977708995954784726e25d0cd1dddf4e65b0f7";
        src = fetchurl {
          url = https://api.github.com/repos/phpDocumentor/TypeResolver/zipball/9c977708995954784726e25d0cd1dddf4e65b0f7;
          sha256 = "0h888r2iy2290yp9i3fij8wd5b7960yi7yn1rwh26x1xxd83n2mb";
        };
      };
    };
    "phpspec/prophecy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpspec-prophecy-1927e75f4ed19131ec9bcc3b002e07fb1173ee76";
        src = fetchurl {
          url = https://api.github.com/repos/phpspec/prophecy/zipball/1927e75f4ed19131ec9bcc3b002e07fb1173ee76;
          sha256 = "0i4djqq4jyypw8755wi1kmr690ni5m63hgr0dcwj359nz302nzw4";
        };
      };
    };
    "phpunit/php-code-coverage" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-code-coverage-807e6013b00af69b6c5d9ceb4282d0393dbb9d8d";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/php-code-coverage/zipball/807e6013b00af69b6c5d9ceb4282d0393dbb9d8d;
          sha256 = "04l5piavahvxp5j3f6s1cx85b3lnjidnlw3nixk24nwqx4bdfk10";
        };
      };
    };
    "phpunit/php-file-iterator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-file-iterator-050bedf145a257b1ff02746c31894800e5122946";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/php-file-iterator/zipball/050bedf145a257b1ff02746c31894800e5122946;
          sha256 = "0b5y1dmksnzqps694h1bhw6r6w1cqrf3vhw2k00adjdawjzaa00j";
        };
      };
    };
    "phpunit/php-text-template" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-text-template-31f8b717e51d9a2afca6c9f046f5d69fc27c8686";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/php-text-template/zipball/31f8b717e51d9a2afca6c9f046f5d69fc27c8686;
          sha256 = "1y03m38qqvsbvyakd72v4dram81dw3swyn5jpss153i5nmqr4p76";
        };
      };
    };
    "phpunit/php-timer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-timer-1038454804406b0b5f5f520358e78c1c2f71501e";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/php-timer/zipball/1038454804406b0b5f5f520358e78c1c2f71501e;
          sha256 = "0vmaca44sz6n9avd8awzk28wq5w4qnvjfl24q89611pdnkl4j8d8";
        };
      };
    };
    "phpunit/php-token-stream" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-php-token-stream-c99e3be9d3e85f60646f152f9002d46ed7770d18";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/php-token-stream/zipball/c99e3be9d3e85f60646f152f9002d46ed7770d18;
          sha256 = "0q6gbyfjn7rlhw263maxw2smqlr9aivcgaa1npbp6zybck2s9zdd";
        };
      };
    };
    "phpunit/phpunit" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-phpunit-b9278591caa8630127f96c63b598712b699e671c";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/phpunit/zipball/b9278591caa8630127f96c63b598712b699e671c;
          sha256 = "0x2ys12scr2n8qdml6pk5cz9570ndzkwwbhvn99qf7g5hki55zvi";
        };
      };
    };
    "sebastian/code-unit-reverse-lookup" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-code-unit-reverse-lookup-4419fcdb5eabb9caa61a27c7a1db532a6b55dd18";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/code-unit-reverse-lookup/zipball/4419fcdb5eabb9caa61a27c7a1db532a6b55dd18;
          sha256 = "0n0bygv2vx1l7af8szbcbn5bpr4axrgvkzd0m348m8ckmk8akvs8";
        };
      };
    };
    "sebastian/comparator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-comparator-5de4fc177adf9bce8df98d8d141a7559d7ccf6da";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/comparator/zipball/5de4fc177adf9bce8df98d8d141a7559d7ccf6da;
          sha256 = "1kf0w51kj4whak8cdmplhj3vsvpj71bl0k3dyz197vvh83ghvl2i";
        };
      };
    };
    "sebastian/diff" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-diff-720fcc7e9b5cf384ea68d9d930d480907a0c1a29";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/diff/zipball/720fcc7e9b5cf384ea68d9d930d480907a0c1a29;
          sha256 = "0i81kz91grz5vzifw114kg6dcfh150019zid7j99j2y5w7s1fqq2";
        };
      };
    };
    "sebastian/environment" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-environment-f2a2c8e1c97c11ace607a7a667d73d47c19fe404";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/environment/zipball/f2a2c8e1c97c11ace607a7a667d73d47c19fe404;
          sha256 = "0i00m4sizjbhi63cn5869g4hf4rzkdd2zy1bx5gh8498m1r32zcc";
        };
      };
    };
    "sebastian/exporter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-exporter-234199f4528de6d12aaa58b612e98f7d36adb937";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/exporter/zipball/234199f4528de6d12aaa58b612e98f7d36adb937;
          sha256 = "061rkix1dws8wbjggf6c8s3kjjv3ws1yacg70zp7cc5wk3z1ar8y";
        };
      };
    };
    "sebastian/global-state" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-global-state-e8ba02eed7bbbb9e59e43dedd3dddeff4a56b0c4";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/global-state/zipball/e8ba02eed7bbbb9e59e43dedd3dddeff4a56b0c4;
          sha256 = "1489kfvz0gg6jprakr43mjkminlhpsimcdrrxkmsm6mmhahbgjnf";
        };
      };
    };
    "sebastian/object-enumerator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-object-enumerator-7cfd9e65d11ffb5af41198476395774d4c8a84c5";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/object-enumerator/zipball/7cfd9e65d11ffb5af41198476395774d4c8a84c5;
          sha256 = "00z5wzh19z1drnh52d27gflqm7dyisp96c29zyxrgsdccv1wss3m";
        };
      };
    };
    "sebastian/object-reflector" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-object-reflector-773f97c67f28de00d397be301821b06708fca0be";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/object-reflector/zipball/773f97c67f28de00d397be301821b06708fca0be;
          sha256 = "1rq5wwf7smdbbz3mj46hmjc643bbsm2b6cnnggmawyls479qmxlk";
        };
      };
    };
    "sebastian/recursion-context" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-recursion-context-5b0cd723502bac3b006cbf3dbf7a1e3fcefe4fa8";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/recursion-context/zipball/5b0cd723502bac3b006cbf3dbf7a1e3fcefe4fa8;
          sha256 = "0p4j54bxriciw67g7l8zy1wa472di0b8f8mxs4fdvm37asz2s6vd";
        };
      };
    };
    "sebastian/resource-operations" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-resource-operations-4d7a795d35b889bf80a0cc04e08d77cedfa917a9";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/resource-operations/zipball/4d7a795d35b889bf80a0cc04e08d77cedfa917a9;
          sha256 = "0prnq9hvg1bi3nkms21wl0fr0f28p0mhp5w802sqb05v9k0qnb41";
        };
      };
    };
    "sebastian/version" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-version-99732be0ddb3361e16ad77b68ba41efc8e979019";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/version/zipball/99732be0ddb3361e16ad77b68ba41efc8e979019;
          sha256 = "0wrw5hskz2hg5aph9r1fhnngfrcvhws1pgs0lfrwindy066z6fj7";
        };
      };
    };
    "theseer/tokenizer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "theseer-tokenizer-11336f6f84e16a720dae9d8e6ed5019efa85a0f9";
        src = fetchurl {
          url = https://api.github.com/repos/theseer/tokenizer/zipball/11336f6f84e16a720dae9d8e6ed5019efa85a0f9;
          sha256 = "1nnym5d45fanxfp18yb0ylpwcvg3973ppzc67ana02g9w72gfspl";
        };
      };
    };
    "tightenco/mailthief" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "tightenco-mailthief-9a8c2443be2b3d77753596f70ae6cd879b5b26a6";
        src = fetchurl {
          url = https://api.github.com/repos/tightenco/mailthief/zipball/9a8c2443be2b3d77753596f70ae6cd879b5b26a6;
          sha256 = "06wmi4h4qv5rl2wf7rfd4vj13a44lxhnxvyigxrmaqhhaf67zgsc";
        };
      };
    };
    "webmozart/assert" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "webmozart-assert-83e253c8e0be5b0257b881e1827274667c5c17a9";
        src = fetchurl {
          url = https://api.github.com/repos/webmozart/assert/zipball/83e253c8e0be5b0257b881e1827274667c5c17a9;
          sha256 = "0d84b0ms9mjpqx368gs7c3qs06mpbx5565j3vs43b1ygnyhhhaqk";
        };
      };
    };
  };
in
composerEnv.buildPackage {
  inherit packages devPackages noDev;
  name = "cachethq-cachet";
  src = fetchFromGitHub {
    owner = "CachetHQ";
    repo = "Cachet";
    rev = "342be3d756d24783d4464eaaa00a875367a54a94";
    sha256 = "1srfn5ywvfwypssqj6b06fg6m07d0v2k6pfg39hwl7gwha1nnxkz";
  };

  patches = [ ./0001-Fix-slack-notifications.patch ];

  executable = false;
  symlinkDependencies = false;
  meta = {
    license = "BSD-3-Clause";
  };
}
