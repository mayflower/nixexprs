{composerEnv, fetchurl, fetchgit, fetchsvn, fetchhg, fetchFromGitHub, noDev ? false}:

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
        name = "alt-three-bus-dd1211da331e4034beeed3d7238dbb00dbcc1870";
        src = fetchurl {
          url = https://api.github.com/repos/AltThree/Bus/zipball/dd1211da331e4034beeed3d7238dbb00dbcc1870;
          sha256 = "067xpdxn6la6rdncaqz4d3dri09cwmr5xg8dpj16zmlarisa93bz";
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
        name = "alt-three-validator-5daf331d4efb0b8c535dbc4ae233a33c97d715e0";
        src = fetchurl {
          url = https://api.github.com/repos/AltThree/Validator/zipball/5daf331d4efb0b8c535dbc4ae233a33c97d715e0;
          sha256 = "0hjhhwlv30lczwh1zp9vxish1lk82plg4ip0i58mrc7ijslykr4p";
        };
      };
    };
    "asm89/stack-cors" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "asm89-stack-cors-b9c31def6a83f84b4d4a40d35996d375755f0e08";
        src = fetchurl {
          url = https://api.github.com/repos/asm89/stack-cors/zipball/b9c31def6a83f84b4d4a40d35996d375755f0e08;
          sha256 = "0629c22fhvkvbq6xgfkaain7cy67lfkrlny26l2665gsrdlyhm6a";
        };
      };
    };
    "aws/aws-sdk-php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "aws-aws-sdk-php-74dc1df2cb5ee7ebbcf3203fda9c24ce7134e952";
        src = fetchurl {
          url = https://api.github.com/repos/aws/aws-sdk-php/zipball/74dc1df2cb5ee7ebbcf3203fda9c24ce7134e952;
          sha256 = "1dk1q8ymqdyhi8713si9sx9743pjxklc67fib3mkn93h70ja3zfc";
        };
      };
    };
    "barryvdh/laravel-cors" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "barryvdh-laravel-cors-03492f1a3bc74a05de23f93b94ac7cc5c173eec9";
        src = fetchurl {
          url = https://api.github.com/repos/fruitcake/laravel-cors/zipball/03492f1a3bc74a05de23f93b94ac7cc5c173eec9;
          sha256 = "0lz65afgbr8hlylnl4mqryzgqqh7m9i2rs0yf9msw9wpykblli7c";
        };
      };
    };
    "chillerlan/php-qrcode" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "chillerlan-php-qrcode-5f6cbb5fd96f89da053fb37a31cd90138aa2c9ab";
        src = fetchurl {
          url = https://api.github.com/repos/chillerlan/php-qrcode/zipball/5f6cbb5fd96f89da053fb37a31cd90138aa2c9ab;
          sha256 = "07rprgncjyh40jlmv14xfmckiybcncaqi2zvdj9188s6d6qlj4bb";
        };
      };
    };
    "chillerlan/php-traits" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "chillerlan-php-traits-264759946b6aaeb427346b749fc9639b790b8e7f";
        src = fetchurl {
          url = https://api.github.com/repos/chillerlan/php-traits/zipball/264759946b6aaeb427346b749fc9639b790b8e7f;
          sha256 = "0ysp5hy6vpy2qjszwn8wlcsw599a8ar150fyf5l1ldrpy6n8bk0d";
        };
      };
    };
    "dnoegel/php-xdg-base-dir" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "dnoegel-php-xdg-base-dir-8f8a6e48c5ecb0f991c2fdcf5f154a47d85f9ffd";
        src = fetchurl {
          url = https://api.github.com/repos/dnoegel/php-xdg-base-dir/zipball/8f8a6e48c5ecb0f991c2fdcf5f154a47d85f9ffd;
          sha256 = "02n4b4wkwncbqiz8mw2rq35flkkhn7h6c0bfhjhs32iay1y710fq";
        };
      };
    };
    "doctrine/cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-cache-382e7f4db9a12dc6c19431743a2b096041bcdd62";
        src = fetchurl {
          url = https://api.github.com/repos/doctrine/cache/zipball/382e7f4db9a12dc6c19431743a2b096041bcdd62;
          sha256 = "05nzwzf03xx2ln8jy5w5g20armv3ahr1qca0s87zp6c0npj4m0ll";
        };
      };
    };
    "doctrine/dbal" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-dbal-7345cd59edfa2036eb0fa4264b77ae2576842035";
        src = fetchurl {
          url = https://api.github.com/repos/doctrine/dbal/zipball/7345cd59edfa2036eb0fa4264b77ae2576842035;
          sha256 = "1qcw35186lc8si0zzcph3mpv21qhqj4iynrld6bdiwfqzd1lyycs";
        };
      };
    };
    "doctrine/event-manager" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-event-manager-629572819973f13486371cb611386eb17851e85c";
        src = fetchurl {
          url = https://api.github.com/repos/doctrine/event-manager/zipball/629572819973f13486371cb611386eb17851e85c;
          sha256 = "02zglsk2zfnpabs83an7zg18h2k31h00vzk6qpawvmy35r1vmrfn";
        };
      };
    };
    "doctrine/inflector" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-inflector-ec3a55242203ffa6a4b27c58176da97ff0a7aec1";
        src = fetchurl {
          url = https://api.github.com/repos/doctrine/inflector/zipball/ec3a55242203ffa6a4b27c58176da97ff0a7aec1;
          sha256 = "18i6zyd5bh5zazgqr3c9bwi7s5vhm9wpnn2hd8vp8vgdp9x7f4hb";
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
        name = "egulias-email-validator-ade6887fd9bd74177769645ab5c474824f8a418a";
        src = fetchurl {
          url = https://api.github.com/repos/egulias/EmailValidator/zipball/ade6887fd9bd74177769645ab5c474824f8a418a;
          sha256 = "1lfrd8s4apnymx9vq7jh8y84r2brim7bs7v83lw5bliqd8jvmrkf";
        };
      };
    };
    "erusev/parsedown" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "erusev-parsedown-cb17b6477dfff935958ba01325f2e8a2bfa6dab3";
        src = fetchurl {
          url = https://api.github.com/repos/erusev/parsedown/zipball/cb17b6477dfff935958ba01325f2e8a2bfa6dab3;
          sha256 = "1iil9v8g03m5vpxxg3a5qb2sxd1cs5c4p5i0k00cqjnjsxfrazxd";
        };
      };
    };
    "fideloper/proxy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "fideloper-proxy-ec38ad69ee378a1eec04fb0e417a97cfaf7ed11a";
        src = fetchurl {
          url = https://api.github.com/repos/fideloper/TrustedProxy/zipball/ec38ad69ee378a1eec04fb0e417a97cfaf7ed11a;
          sha256 = "180g1rzj4hf5bi1m3sadf11p6qs524sihmxjfv00nxnblvgpkqg5";
        };
      };
    };
    "graham-campbell/binput" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "graham-campbell-binput-9c0df9c3d0481a495bdc0638ee67bc199d70e3b4";
        src = fetchurl {
          url = https://api.github.com/repos/GrahamCampbell/Laravel-Binput/zipball/9c0df9c3d0481a495bdc0638ee67bc199d70e3b4;
          sha256 = "03n56j36x39n8mwz0sjaj87m1nswha1fvz5s0rr9pffwwgax89xf";
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
        name = "graham-campbell-guzzle-factory-6ccf9d73c4c2a55b9576f3a6edcf42af44c99fbb";
        src = fetchurl {
          url = https://api.github.com/repos/GrahamCampbell/Guzzle-Factory/zipball/6ccf9d73c4c2a55b9576f3a6edcf42af44c99fbb;
          sha256 = "0rc4yq8dpp2mfy2arx0d166j5006yydn3syicpkllisxc57nl8wg";
        };
      };
    };
    "graham-campbell/markdown" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "graham-campbell-markdown-c9978137be1e6896d9a2ca39aa3d2c62d0700ca1";
        src = fetchurl {
          url = https://api.github.com/repos/GrahamCampbell/Laravel-Markdown/zipball/c9978137be1e6896d9a2ca39aa3d2c62d0700ca1;
          sha256 = "0hrz219ylg5plv3h1b2klq4xklbqbqy3d41gwfig624601c3i50x";
        };
      };
    };
    "graham-campbell/security" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "graham-campbell-security-93b3e09774987916f9a91071b2e53738180f2ba8";
        src = fetchurl {
          url = https://api.github.com/repos/GrahamCampbell/Laravel-Security/zipball/93b3e09774987916f9a91071b2e53738180f2ba8;
          sha256 = "02l2c44qij0ib79ylx9blbbx233bn2dsvkdb6170x1pxr5lq80aa";
        };
      };
    };
    "graham-campbell/security-core" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "graham-campbell-security-core-502fd4599119d430b1ed247b855beb5c1d23b3a1";
        src = fetchurl {
          url = https://api.github.com/repos/GrahamCampbell/Security-Core/zipball/502fd4599119d430b1ed247b855beb5c1d23b3a1;
          sha256 = "1jqjym4lq57awlj77pi3xmnmgai26dgmng5d8brwpy3b0psp1fdv";
        };
      };
    };
    "guzzlehttp/guzzle" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "guzzlehttp-guzzle-43ece0e75098b7ecd8d13918293029e555a50f82";
        src = fetchurl {
          url = https://api.github.com/repos/guzzle/guzzle/zipball/43ece0e75098b7ecd8d13918293029e555a50f82;
          sha256 = "1gn13c5qnpg92f7i156c9f9bjfb3il53c4x3b45mkjr5lqv4g76k";
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
        name = "guzzlehttp-psr7-239400de7a173fe9901b9ac7c06497751f00727a";
        src = fetchurl {
          url = https://api.github.com/repos/guzzle/psr7/zipball/239400de7a173fe9901b9ac7c06497751f00727a;
          sha256 = "0mfq93x7ayix6l3v5jkk40a9hnmrxaqr9vk1r26q39d1s6292ma7";
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
        name = "kylekatarnls-update-helper-5786fa188e0361b9adf9e8199d7280d1b2db165e";
        src = fetchurl {
          url = https://api.github.com/repos/kylekatarnls/update-helper/zipball/5786fa188e0361b9adf9e8199d7280d1b2db165e;
          sha256 = "1z2mxxmc9mr0rdizy20f9cggks3gz06hh5c9alfdihwwjg8yzfi3";
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
        name = "laravel-tinker-ad571aacbac1539c30d480908f9d0c9614eaf1a7";
        src = fetchurl {
          url = https://api.github.com/repos/laravel/tinker/zipball/ad571aacbac1539c30d480908f9d0c9614eaf1a7;
          sha256 = "16s11nlzwpiqqs94qn5szrk6nwcxqlhpcbcbd9phlv174lpap9ng";
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
        name = "league-flysystem-021569195e15f8209b1c4bebb78bd66aa4f08c21";
        src = fetchurl {
          url = https://api.github.com/repos/thephpleague/flysystem/zipball/021569195e15f8209b1c4bebb78bd66aa4f08c21;
          sha256 = "1s24s50fsmw4bazj6xs8668bkrvbmmilwnvijj29329kzz4gl2nn";
        };
      };
    };
    "mccool/laravel-auto-presenter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "mccool-laravel-auto-presenter-1dd41157edf05ca19d0af50a16ce7b09dc1b4704";
        src = fetchurl {
          url = https://api.github.com/repos/laravel-auto-presenter/laravel-auto-presenter/zipball/1dd41157edf05ca19d0af50a16ce7b09dc1b4704;
          sha256 = "08wsdpiw83r19knc8w9if5pdfjmpwrxj15k8dl4pwwlgj6ns6yg4";
        };
      };
    };
    "monolog/monolog" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "monolog-monolog-fa82921994db851a8becaf3787a9e73c5976b6f1";
        src = fetchurl {
          url = https://api.github.com/repos/Seldaek/monolog/zipball/fa82921994db851a8becaf3787a9e73c5976b6f1;
          sha256 = "0vcn1j16pjbya65cd3c8wm4383mi96l5ys195ni8nvchna7a6b6v";
        };
      };
    };
    "mtdowling/jmespath.php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "mtdowling-jmespath.php-52168cb9472de06979613d365c7f1ab8798be895";
        src = fetchurl {
          url = https://api.github.com/repos/jmespath/jmespath.php/zipball/52168cb9472de06979613d365c7f1ab8798be895;
          sha256 = "14sl8kprlzv4lcz8fhpvl15f8fsxd9wkg7vnlrcrnfb4d2542a02";
        };
      };
    };
    "nesbot/carbon" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nesbot-carbon-4be0c005164249208ce1b5ca633cd57bdd42ff33";
        src = fetchurl {
          url = https://api.github.com/repos/briannesbitt/Carbon/zipball/4be0c005164249208ce1b5ca633cd57bdd42ff33;
          sha256 = "15vddmcxpzfaglb0w7y49kahppnl7df0smhwpxgy5v05c5c0093a";
        };
      };
    };
    "nexmo/client" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nexmo-client-c6d11d953c8c5594590bb9ebaba9616e76948f93";
        src = fetchurl {
          url = https://api.github.com/repos/Nexmo/nexmo-php-complete/zipball/c6d11d953c8c5594590bb9ebaba9616e76948f93;
          sha256 = "1cly90didpwbhligkaj3dzg41186fkz7bssq6kabz3f8k0g5xm96";
        };
      };
    };
    "nexmo/client-core" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nexmo-client-core-182d41a02ebd3e4be147baea45458ccfe2f528c4";
        src = fetchurl {
          url = https://api.github.com/repos/Nexmo/nexmo-php/zipball/182d41a02ebd3e4be147baea45458ccfe2f528c4;
          sha256 = "1q3s9qvq73f953k4nhzm8sd8g66yas22z2krd4mx5fcfjdmqr8sj";
        };
      };
    };
    "nikic/php-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nikic-php-parser-9a9981c347c5c49d6dfe5cf826bb882b824080dc";
        src = fetchurl {
          url = https://api.github.com/repos/nikic/PHP-Parser/zipball/9a9981c347c5c49d6dfe5cf826bb882b824080dc;
          sha256 = "1qk8g51sxh8vm9b2w98383045ig20g71p67izw7vrsazqljmxxyb";
        };
      };
    };
    "opis/closure" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "opis-closure-93ebc5712cdad8d5f489b500c59d122df2e53969";
        src = fetchurl {
          url = https://api.github.com/repos/opis/closure/zipball/93ebc5712cdad8d5f489b500c59d122df2e53969;
          sha256 = "04j7d0rwjqc7rfcg27vnvdw05sd4bkskl64pk2484bmscc0nfqv7";
        };
      };
    };
    "paragonie/constant_time_encoding" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "paragonie-constant_time_encoding-47a1cedd2e4d52688eb8c96469c05ebc8fd28fa2";
        src = fetchurl {
          url = https://api.github.com/repos/paragonie/constant_time_encoding/zipball/47a1cedd2e4d52688eb8c96469c05ebc8fd28fa2;
          sha256 = "00yfq2wwrdf16jadfr3jn1q2sx2vai05x7xin2i2qjlhlpqj8vk8";
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
        name = "pragmarx-google2fa-17c969c82f427dd916afe4be50bafc6299aef1b4";
        src = fetchurl {
          url = https://api.github.com/repos/antonioribeiro/google2fa/zipball/17c969c82f427dd916afe4be50bafc6299aef1b4;
          sha256 = "1z6rjqqigw6v2rns2mgjy9y0addqhc05cl19j80z8nw03dschqib";
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
        name = "psr-log-0f73288fd15629204f9d42b7055f72dacbe811fc";
        src = fetchurl {
          url = https://api.github.com/repos/php-fig/log/zipball/0f73288fd15629204f9d42b7055f72dacbe811fc;
          sha256 = "1npi9ggl4qll4sdxz1xgp8779ia73gwlpjxbb1f1cpl1wn4s42r4";
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
        name = "psy-psysh-90da7f37568aee36b116a030c5f99c915267edd4";
        src = fetchurl {
          url = https://api.github.com/repos/bobthecow/psysh/zipball/90da7f37568aee36b116a030c5f99c915267edd4;
          sha256 = "1lffp1xi41sd181f2r5gxb2cbmigypr438k8fawrbllziwdshj74";
        };
      };
    };
    "ralouphie/getallheaders" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "ralouphie-getallheaders-120b605dfeb996808c31b6477290a714d356e822";
        src = fetchurl {
          url = https://api.github.com/repos/ralouphie/getallheaders/zipball/120b605dfeb996808c31b6477290a714d356e822;
          sha256 = "1bv7ndkkankrqlr2b4kw7qp3fl0dxi6bp26bnim6dnlhavd6a0gg";
        };
      };
    };
    "ramsey/uuid" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "ramsey-uuid-7e1633a6964b48589b142d60542f9ed31bd37a92";
        src = fetchurl {
          url = https://api.github.com/repos/ramsey/uuid/zipball/7e1633a6964b48589b142d60542f9ed31bd37a92;
          sha256 = "0s6z2c8jvwjmxzy2kqmxqpz0val9i5r757mdwf2yc7qrwm6bwd15";
        };
      };
    };
    "swiftmailer/swiftmailer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "swiftmailer-swiftmailer-149cfdf118b169f7840bbe3ef0d4bc795d1780c9";
        src = fetchurl {
          url = https://api.github.com/repos/swiftmailer/swiftmailer/zipball/149cfdf118b169f7840bbe3ef0d4bc795d1780c9;
          sha256 = "0kscflkky6h7p7ambsf19rywnlnqslc503958cyriq5lg91nj9ri";
        };
      };
    };
    "symfony/console" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-console-10bb3ee3c97308869d53b3e3d03f6ac23ff985f7";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/console/zipball/10bb3ee3c97308869d53b3e3d03f6ac23ff985f7;
          sha256 = "10arxid5jqcdqfdj0a86d9y8g65nqkirz8aw2v9ndh20dhj75bgc";
        };
      };
    };
    "symfony/css-selector" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-css-selector-afc26133a6fbdd4f8842e38893e0ee4685c7c94b";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/css-selector/zipball/afc26133a6fbdd4f8842e38893e0ee4685c7c94b;
          sha256 = "14jzzyawg1d5zb9j84asjxdnhiqlw9b0i872nxachz4mw4bfx2xz";
        };
      };
    };
    "symfony/debug" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-debug-346636d2cae417992ecfd761979b2ab98b339a45";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/debug/zipball/346636d2cae417992ecfd761979b2ab98b339a45;
          sha256 = "028fyc6br7rmf1j3d5j9zmc0d7vmzzspidd59vwzb6rms955zzbv";
        };
      };
    };
    "symfony/error-handler" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-error-handler-7e9828fc98aa1cf27b422fe478a84f5b0abb7358";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/error-handler/zipball/7e9828fc98aa1cf27b422fe478a84f5b0abb7358;
          sha256 = "0al2iswpwpg6f8z3aip38qr64a67hvy619pvh68pm6xzzw17f3az";
        };
      };
    };
    "symfony/event-dispatcher" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-event-dispatcher-abc8e3618bfdb55e44c8c6a00abd333f831bbfed";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/event-dispatcher/zipball/abc8e3618bfdb55e44c8c6a00abd333f831bbfed;
          sha256 = "194f387r1qq45pmn89wfqcbswdwvfbrkj5la8sv3mh89c1x45zz2";
        };
      };
    };
    "symfony/event-dispatcher-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-event-dispatcher-contracts-c43ab685673fb6c8d84220c77897b1d6cdbe1d18";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/event-dispatcher-contracts/zipball/c43ab685673fb6c8d84220c77897b1d6cdbe1d18;
          sha256 = "0bffyy12ni44ykyrjjdgirmgfh2qvmw2narfl623lqqn7adcam6g";
        };
      };
    };
    "symfony/finder" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-finder-5729f943f9854c5781984ed4907bbb817735776b";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/finder/zipball/5729f943f9854c5781984ed4907bbb817735776b;
          sha256 = "074q822q688zjbwf2zxb2x085yyix5k0aznjv0x057slnzldyyqj";
        };
      };
    };
    "symfony/http-foundation" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-http-foundation-62f92509c9abfd1f73e17b8cf1b72c0bdac6611b";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/http-foundation/zipball/62f92509c9abfd1f73e17b8cf1b72c0bdac6611b;
          sha256 = "1k2y4kid0iqimjsgdpfkiib7vq2pngn4z3x0mjd1w1llffnirsjg";
        };
      };
    };
    "symfony/http-kernel" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-http-kernel-f356a489e51856b99908005eb7f2c51a1dfc95dc";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/http-kernel/zipball/f356a489e51856b99908005eb7f2c51a1dfc95dc;
          sha256 = "0b4pg0sqv924cipnfh1klwp0lrpbczlblayygglcg2zm90wm60yg";
        };
      };
    };
    "symfony/mime" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-mime-6dde9dc70155e91b850b1d009d1f841c54bc4aba";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/mime/zipball/6dde9dc70155e91b850b1d009d1f841c54bc4aba;
          sha256 = "10n0ibmvkx6dwiid9iqc84yl5r0ikw1a3fna5vg8nx16wb3hwjil";
        };
      };
    };
    "symfony/polyfill-ctype" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-ctype-4719fa9c18b0464d399f1a63bf624b42b6fa8d14";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-ctype/zipball/4719fa9c18b0464d399f1a63bf624b42b6fa8d14;
          sha256 = "16argd4p6fi28l4dwgmrlp8cwczx8qay14dbicjj9zxnrqb41cqb";
        };
      };
    };
    "symfony/polyfill-iconv" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-iconv-ad6d62792bfbcfc385dd34b424d4fcf9712a32c8";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-iconv/zipball/ad6d62792bfbcfc385dd34b424d4fcf9712a32c8;
          sha256 = "1gmj4l8fvpv94miimbfybhw23n5k7sbsw43pnvsvlgzg97023x3s";
        };
      };
    };
    "symfony/polyfill-intl-idn" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-intl-idn-47bd6aa45beb1cd7c6a16b7d1810133b728bdfcf";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-intl-idn/zipball/47bd6aa45beb1cd7c6a16b7d1810133b728bdfcf;
          sha256 = "1kalb08iqpkm5rg6gcwbqrqsihn0bj3f6hplck9336i7knpwq2nn";
        };
      };
    };
    "symfony/polyfill-php56" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php56-d51ec491c8ddceae7dca8dd6c7e30428f543f37d";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-php56/zipball/d51ec491c8ddceae7dca8dd6c7e30428f543f37d;
          sha256 = "16mhcgsabr6p0rgvjfiznn6kd4530bkn120sqgl54ynmrnqw44kv";
        };
      };
    };
    "symfony/polyfill-php72" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php72-37b0976c78b94856543260ce09b460a7bc852747";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-php72/zipball/37b0976c78b94856543260ce09b460a7bc852747;
          sha256 = "1bszn0mwj1vx9ai90byv92w6xcgphdlk2nqpdjn33xclzvhz19n5";
        };
      };
    };
    "symfony/polyfill-php73" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php73-0f27e9f464ea3da33cbe7ca3bdf4eb66def9d0f7";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-php73/zipball/0f27e9f464ea3da33cbe7ca3bdf4eb66def9d0f7;
          sha256 = "12qqrcldqki8ck47vizwplh8dx0m2vrs8ghv3s0nanan39l1107w";
        };
      };
    };
    "symfony/polyfill-util" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-util-d8e76c104127675d0ea3df3be0f2ae24a8619027";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-util/zipball/d8e76c104127675d0ea3df3be0f2ae24a8619027;
          sha256 = "1vsrwh57z5xqv7ydb6b9sqw12sx8p7863v0rfss5fr134xai013h";
        };
      };
    };
    "symfony/process" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-process-3e40e87a20eaf83a1db825e1fa5097ae89042db3";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/process/zipball/3e40e87a20eaf83a1db825e1fa5097ae89042db3;
          sha256 = "0ayv2a5rv2sh94xwmhjvlzia24shga9knv1xizd15sz4scnq40c7";
        };
      };
    };
    "symfony/routing" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-routing-0f562fa613e288d7dbae6c63abbc9b33ed75a8f8";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/routing/zipball/0f562fa613e288d7dbae6c63abbc9b33ed75a8f8;
          sha256 = "06dx1nz0gy1bz705jh2lschflc3clvc7zvmps241yl4d9vr1341f";
        };
      };
    };
    "symfony/service-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-service-contracts-ffc7f5692092df31515df2a5ecf3b7302b3ddacf";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/service-contracts/zipball/ffc7f5692092df31515df2a5ecf3b7302b3ddacf;
          sha256 = "14sam230dbncn2dmdjh8zvlhy230qkhwvgqip48bz653fcrp368c";
        };
      };
    };
    "symfony/translation" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-translation-4e54d336f2eca5facad449d0b0118bb449375b76";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/translation/zipball/4e54d336f2eca5facad449d0b0118bb449375b76;
          sha256 = "1fbbhp6x2ll3qmnb2ziw4qj7jhpfmm88ijjz9swnm4n799x90bsm";
        };
      };
    };
    "symfony/translation-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-translation-contracts-364518c132c95642e530d9b2d217acbc2ccac3e6";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/translation-contracts/zipball/364518c132c95642e530d9b2d217acbc2ccac3e6;
          sha256 = "1xyhh4v79w3n9z4rc74v5nb1fn2gcsava4lnjlqvnbr23rf9s7w3";
        };
      };
    };
    "symfony/var-dumper" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-var-dumper-5a0c2d93006131a36cf6f767d10e2ca8333b0d4a";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/var-dumper/zipball/5a0c2d93006131a36cf6f767d10e2ca8333b0d4a;
          sha256 = "143jczkik6gspc7q5dv7bx4i137jzmzq4kygma3qgid5jpjrc8ly";
        };
      };
    };
    "tijsverkoyen/css-to-inline-styles" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "tijsverkoyen-css-to-inline-styles-dda2ee426acd6d801d5b7fd1001cde9b5f790e15";
        src = fetchurl {
          url = https://api.github.com/repos/tijsverkoyen/CssToInlineStyles/zipball/dda2ee426acd6d801d5b7fd1001cde9b5f790e15;
          sha256 = "08xh3pn9wsv9g3skjf9i6r1v61rgbn14z7yvdn7m3kkhilsas41a";
        };
      };
    };
    "twig/twig" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "twig-twig-18772e0190734944277ee97a02a9a6c6555fcd94";
        src = fetchurl {
          url = https://api.github.com/repos/twigphp/Twig/zipball/18772e0190734944277ee97a02a9a6c6555fcd94;
          sha256 = "05i3h7bklzyrfb9bfhilx4a1m1m85c6hnzq2f9wgnmwbk1i1fa81";
        };
      };
    };
    "vlucas/phpdotenv" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "vlucas-phpdotenv-c4a653ed3f1ff900baa15b4130c8770b57285b62";
        src = fetchurl {
          url = https://api.github.com/repos/vlucas/phpdotenv/zipball/c4a653ed3f1ff900baa15b4130c8770b57285b62;
          sha256 = "0kf4wrjns38xq3qydbgaq12wlvygrdv6i2dpzxi6vnlh0npkg5cz";
        };
      };
    };
    "zendframework/zend-diactoros" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "zendframework-zend-diactoros-de5847b068362a88684a55b0dbb40d85986cfa52";
        src = fetchurl {
          url = https://api.github.com/repos/zendframework/zend-diactoros/zipball/de5847b068362a88684a55b0dbb40d85986cfa52;
          sha256 = "1na43rs2ak42vjvimajq56zpfwkbnvf3n6wd711vh31r5jvjw1x5";
        };
      };
    };
  };
  devPackages = {
    "alt-three/testbench" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "alt-three-testbench-71e12b822858ebedb54ffd856f3de097cfea75bf";
        src = fetchurl {
          url = https://api.github.com/repos/AltThree/TestBench/zipball/71e12b822858ebedb54ffd856f3de097cfea75bf;
          sha256 = "19726jpvdad1z5mzia0ps7x0aa04r2dklknkdamzbfjl4m40h4vq";
        };
      };
    };
    "barryvdh/laravel-debugbar" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "barryvdh-laravel-debugbar-42d5da5379a7860093f8e4032167e4cb5ebec180";
        src = fetchurl {
          url = https://api.github.com/repos/barryvdh/laravel-debugbar/zipball/42d5da5379a7860093f8e4032167e4cb5ebec180;
          sha256 = "1a7lhr07iigsg0r528akmpnf2yfz44lh0arfwz0s6vvshar7nh7i";
        };
      };
    };
    "bugsnag/bugsnag" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "bugsnag-bugsnag-ac5888aabd75f16ae7b9cf57bfbb55d33914e036";
        src = fetchurl {
          url = https://api.github.com/repos/bugsnag/bugsnag-php/zipball/ac5888aabd75f16ae7b9cf57bfbb55d33914e036;
          sha256 = "19sabn5am5ysdxs1zg0jilpqi9m04hd2m1ijy553xjs93l187r0j";
        };
      };
    };
    "bugsnag/bugsnag-laravel" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "bugsnag-bugsnag-laravel-091124d3dd492619f2c4bc0ace4e3d1369180931";
        src = fetchurl {
          url = https://api.github.com/repos/bugsnag/bugsnag-laravel/zipball/091124d3dd492619f2c4bc0ace4e3d1369180931;
          sha256 = "11jv9fih5q9mr5wg0v3mkadvc1zsgr550v671ikpwcla4yb1dwq0";
        };
      };
    };
    "bugsnag/bugsnag-psr-logger" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "bugsnag-bugsnag-psr-logger-222a7338bc5c39833c7c3922a175c539e996797c";
        src = fetchurl {
          url = https://api.github.com/repos/bugsnag/bugsnag-psr-logger/zipball/222a7338bc5c39833c7c3922a175c539e996797c;
          sha256 = "1s2qv4d1q2scjx803m4fzpwcwgv98d6j31ffc9biw2bwwyl7f2c9";
        };
      };
    };
    "composer/ca-bundle" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-ca-bundle-47fe531de31fca4a1b997f87308e7d7804348f7e";
        src = fetchurl {
          url = https://api.github.com/repos/composer/ca-bundle/zipball/47fe531de31fca4a1b997f87308e7d7804348f7e;
          sha256 = "0cvmfh4d5v4ws5sc1c9g57wvq5zfxj9biljq586kcl4j43c6pyis";
        };
      };
    };
    "doctrine/instantiator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-instantiator-ae466f726242e637cebdd526a7d991b9433bacf1";
        src = fetchurl {
          url = https://api.github.com/repos/doctrine/instantiator/zipball/ae466f726242e637cebdd526a7d991b9433bacf1;
          sha256 = "1dzx7ql2qjkk902g02salvz0yarf1a17q514l3y6rqg53i3rmxp7";
        };
      };
    };
    "filp/whoops" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "filp-whoops-fff6f1e4f36be0e0d0b84d66b413d9dcb0c49130";
        src = fetchurl {
          url = https://api.github.com/repos/filp/whoops/zipball/fff6f1e4f36be0e0d0b84d66b413d9dcb0c49130;
          sha256 = "0zkd431l5105xg919k6ig139498c7lxlqqd66kjhcm547aryg1qb";
        };
      };
    };
    "fzaninotto/faker" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "fzaninotto-faker-fc10d778e4b84d5bd315dad194661e091d307c6f";
        src = fetchurl {
          url = https://api.github.com/repos/fzaninotto/Faker/zipball/fc10d778e4b84d5bd315dad194661e091d307c6f;
          sha256 = "152dwsxna09dpyys4265ryglzqdhsd2hsssr49a0p3sygv5rqki2";
        };
      };
    };
    "graham-campbell/analyzer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "graham-campbell-analyzer-430c79c049a843a3f07fced59671104231deca10";
        src = fetchurl {
          url = https://api.github.com/repos/GrahamCampbell/Analyzer/zipball/430c79c049a843a3f07fced59671104231deca10;
          sha256 = "19d5fqr3sji8z95664n8404xl0gpz1jvyjkh3jchjxyrb1vx6874";
        };
      };
    };
    "graham-campbell/testbench-core" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "graham-campbell-testbench-core-bb4112ac9fa9c894254aa976d7773cada449a05f";
        src = fetchurl {
          url = https://api.github.com/repos/GrahamCampbell/Laravel-TestBench-Core/zipball/bb4112ac9fa9c894254aa976d7773cada449a05f;
          sha256 = "19f1ydg7ca34shx7jp4w1cqvqc05ialzhh59zjgys2vl6786vg8z";
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
        name = "maximebf-debugbar-58998b818c6567fac01e35b8a4b70c1a64530556";
        src = fetchurl {
          url = https://api.github.com/repos/maximebf/php-debugbar/zipball/58998b818c6567fac01e35b8a4b70c1a64530556;
          sha256 = "10cd065g3cgd5s8w0xb97mll2gmsagj3wqapi4lw88zd4dsprvc5";
        };
      };
    };
    "mockery/mockery" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "mockery-mockery-f69bbde7d7a75d6b2862d9ca8fab1cd28014b4be";
        src = fetchurl {
          url = https://api.github.com/repos/mockery/mockery/zipball/f69bbde7d7a75d6b2862d9ca8fab1cd28014b4be;
          sha256 = "0jp4b6qd6fmcach9mbyilb5vsaa6b07wxdvya4949nsdg0zsdf65";
        };
      };
    };
    "myclabs/deep-copy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "myclabs-deep-copy-b2c28789e80a97badd14145fda39b545d83ca3ef";
        src = fetchurl {
          url = https://api.github.com/repos/myclabs/DeepCopy/zipball/b2c28789e80a97badd14145fda39b545d83ca3ef;
          sha256 = "1a7vr0kb54z8cpal0hqlar9dg5jaklhr4pckvwahgdk37kh38p0s";
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
        name = "phpdocumentor-reflection-common-63a995caa1ca9e5590304cd845c15ad6d482a62a";
        src = fetchurl {
          url = https://api.github.com/repos/phpDocumentor/ReflectionCommon/zipball/63a995caa1ca9e5590304cd845c15ad6d482a62a;
          sha256 = "1fcyb675bwf9a1gjmxg0v549jjy5n16rfm0c13c5h5clz8ivfjca";
        };
      };
    };
    "phpdocumentor/reflection-docblock" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-reflection-docblock-da3fd972d6bafd628114f7e7e036f45944b62e9c";
        src = fetchurl {
          url = https://api.github.com/repos/phpDocumentor/ReflectionDocBlock/zipball/da3fd972d6bafd628114f7e7e036f45944b62e9c;
          sha256 = "1kkhlsg34flnmibcz5rxrraj3xyyf4j2v0ayz4wf5iix2vhk1wk2";
        };
      };
    };
    "phpdocumentor/type-resolver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-type-resolver-2e32a6d48972b2c1976ed5d8967145b6cec4a4a9";
        src = fetchurl {
          url = https://api.github.com/repos/phpDocumentor/TypeResolver/zipball/2e32a6d48972b2c1976ed5d8967145b6cec4a4a9;
          sha256 = "17iywfpk7nf2lasb94fcbyi0fjs30fp49mqii2s8bjdwqc7gp8j4";
        };
      };
    };
    "phpspec/prophecy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpspec-prophecy-451c3cd1418cf640de218914901e51b064abb093";
        src = fetchurl {
          url = https://api.github.com/repos/phpspec/prophecy/zipball/451c3cd1418cf640de218914901e51b064abb093;
          sha256 = "0z6wh1lygafcfw36r9abrg7fgq9r3v1233v38g4wbqy3jf7xfrzb";
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
        name = "phpunit-php-token-stream-995192df77f63a59e47f025390d2d1fdf8f425ff";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/php-token-stream/zipball/995192df77f63a59e47f025390d2d1fdf8f425ff;
          sha256 = "1hl3n6kad0n4vls1sy0qgrqw3caxm2z50adi3nhzx0asdsx85nfn";
        };
      };
    };
    "phpunit/phpunit" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-phpunit-9467db479d1b0487c99733bb1e7944d32deded2c";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/phpunit/zipball/9467db479d1b0487c99733bb1e7944d32deded2c;
          sha256 = "192mri9ikbcc8ix4pwiwyyw8jc9xfg77il4wjbadycw4k4f43944";
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
        name = "sebastian-environment-464c90d7bdf5ad4e8a6aea15c091fec0603d4368";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/environment/zipball/464c90d7bdf5ad4e8a6aea15c091fec0603d4368;
          sha256 = "1dpd2x9yr02c4wf5icvgaw70i8bzxcmqab9plxjv00d712h73z08";
        };
      };
    };
    "sebastian/exporter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-exporter-68609e1261d215ea5b21b7987539cbfbe156ec3e";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/exporter/zipball/68609e1261d215ea5b21b7987539cbfbe156ec3e;
          sha256 = "0i8a502xqf2ripwbr5rgw9z49z9as7fjibh7sr171q0h4yrrr02j";
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
        name = "webmozart-assert-aed98a490f9a8f78468232db345ab9cf606cf598";
        src = fetchurl {
          url = https://api.github.com/repos/webmozart/assert/zipball/aed98a490f9a8f78468232db345ab9cf606cf598;
          sha256 = "00w4s4z7vlsyvx3ii7374vgq705a3yi4maw3haa05906srn3d1ik";
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
    rev = "c7ad51e87645e5a717fb817616424276a8e5345b";
    sha256 = "02f7g7q8p1sscqkz2vb40qni5c4x3d7x0azny57ckwvhmycnx7wc";
  };
 
  patches = [ ./0001-Improve-slack-notifications.patch ];

  executable = false;
  symlinkDependencies = false;
  meta = {
    license = "BSD-3-Clause";
  };
}
