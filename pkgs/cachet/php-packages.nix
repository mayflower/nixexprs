{composerEnv, fetchurl, fetchgit ? null, fetchhg ? null, fetchsvn ? null, noDev ? false, fetchFromGitHub}:

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
        name = "alt-three-bus-21d1623520c0ad48acb72420fd7f986cd23f349a";
        src = fetchurl {
          url = https://api.github.com/repos/AltThree/Bus/zipball/21d1623520c0ad48acb72420fd7f986cd23f349a;
          sha256 = "1gw9r7awcnam7lmxgq8wq66fi3bs5a3jcmknzm5m9wsvc995zpkk";
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
        name = "alt-three-validator-65ffc90cda5589052f0dac124d588946dfffd803";
        src = fetchurl {
          url = https://api.github.com/repos/AltThree/Validator/zipball/65ffc90cda5589052f0dac124d588946dfffd803;
          sha256 = "0bgyfdd5hyr2jl9a2mgh70hi8j1bkpraaawzfq5ika7b39pflz0y";
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
        name = "aws-aws-sdk-php-b259aad35203d262c02be9b6353597fd62484374";
        src = fetchurl {
          url = https://api.github.com/repos/aws/aws-sdk-php/zipball/b259aad35203d262c02be9b6353597fd62484374;
          sha256 = "1vxnvfw5x3kf8l2yw46gnb35dkavy7zczd2f42c2i60ryqrw019p";
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
    "bugsnag/bugsnag" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "bugsnag-bugsnag-531fe1c16beb68af698e35bd5b3a19a422399e28";
        src = fetchurl {
          url = https://api.github.com/repos/bugsnag/bugsnag-php/zipball/531fe1c16beb68af698e35bd5b3a19a422399e28;
          sha256 = "0k9cwia60gb1f0s8g7j4g1m2m6fsy1wwi2mid9w96wpnfkjdd6av";
        };
      };
    };
    "bugsnag/bugsnag-laravel" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "bugsnag-bugsnag-laravel-bebac599024d76210b9a5172372263e7ec6db9c2";
        src = fetchurl {
          url = https://api.github.com/repos/bugsnag/bugsnag-laravel/zipball/bebac599024d76210b9a5172372263e7ec6db9c2;
          sha256 = "03jh7hp47lfr4d90mym35bgf90kbalrcj0s8s6d9lxfapjwpjn5k";
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
    "chillerlan/php-qrcode" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "chillerlan-php-qrcode-bf0382aaf2f79fa41c2dcb0f216675f74d633fe7";
        src = fetchurl {
          url = https://api.github.com/repos/chillerlan/php-qrcode/zipball/bf0382aaf2f79fa41c2dcb0f216675f74d633fe7;
          sha256 = "1f7isqswcj2gprmr24nvhspcpp85zarnzaic6d4id83zbmkqkb3h";
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
    "composer/ca-bundle" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "composer-ca-bundle-95c63ab2117a72f48f5a55da9740a3273d45b7fd";
        src = fetchurl {
          url = https://api.github.com/repos/composer/ca-bundle/zipball/95c63ab2117a72f48f5a55da9740a3273d45b7fd;
          sha256 = "08c2wlbqnnv2bfdsm5gi3wg5mkmyhqx42cilc9ch56x66x03kr92";
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
        name = "doctrine-cache-13e3381b25847283a91948d04640543941309727";
        src = fetchurl {
          url = https://api.github.com/repos/doctrine/cache/zipball/13e3381b25847283a91948d04640543941309727;
          sha256 = "088fxbpjssp8x95qr3ip2iynxrimimrby03xlsvp2254vcyx94c5";
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
        name = "egulias-email-validator-cfa3d44471c7f5bfb684ac2b0da7114283d78441";
        src = fetchurl {
          url = https://api.github.com/repos/egulias/EmailValidator/zipball/cfa3d44471c7f5bfb684ac2b0da7114283d78441;
          sha256 = "0v151ayw9lyjh8nws1wjihs5pj2md6hiyrs4152ypfgwd2bqq9zf";
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
        name = "fideloper-proxy-9beebf48a1c344ed67c1d36bb1b8709db7c3c1a8";
        src = fetchurl {
          url = https://api.github.com/repos/fideloper/TrustedProxy/zipball/9beebf48a1c344ed67c1d36bb1b8709db7c3c1a8;
          sha256 = "0hblx9qgny5cqms36s70nkgday191r3vagfgrbr26km1rrnpkkcj";
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
        name = "graham-campbell-guzzle-factory-618cf7220b177c6d9939a36331df937739ffc596";
        src = fetchurl {
          url = https://api.github.com/repos/GrahamCampbell/Guzzle-Factory/zipball/618cf7220b177c6d9939a36331df937739ffc596;
          sha256 = "078kgakcnn90blc4bijxmk516wwarg1bsnsm1q0kw3gf3aa7dwk5";
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
        name = "graham-campbell-security-core-3b14e58dba84b0238a3409818d6f67acc5c00bf9";
        src = fetchurl {
          url = https://api.github.com/repos/GrahamCampbell/Security-Core/zipball/3b14e58dba84b0238a3409818d6f67acc5c00bf9;
          sha256 = "1plqbi85v8cpl7sifnpv13i1zr368aiwflypb4hf5v72i3l2hff3";
        };
      };
    };
    "guzzlehttp/guzzle" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "guzzlehttp-guzzle-9d4290de1cfd701f38099ef7e183b64b4b7b0c5e";
        src = fetchurl {
          url = https://api.github.com/repos/guzzle/guzzle/zipball/9d4290de1cfd701f38099ef7e183b64b4b7b0c5e;
          sha256 = "1dlrdpil0173cmx73ghy8iis2j0lk00dzv3n166d0riky21n8djb";
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
        name = "kylekatarnls-update-helper-429be50660ed8a196e0798e5939760f168ec8ce9";
        src = fetchurl {
          url = https://api.github.com/repos/kylekatarnls/update-helper/zipball/429be50660ed8a196e0798e5939760f168ec8ce9;
          sha256 = "02lzagbgykk5bqqa203vkyh6xxblvsg6d8sfgsrzp0g228my4qpz";
        };
      };
    };
    "laravel/framework" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-framework-2555bf6ef6e6739e5f49f4a5d40f6264c57abd56";
        src = fetchurl {
          url = https://api.github.com/repos/laravel/framework/zipball/2555bf6ef6e6739e5f49f4a5d40f6264c57abd56;
          sha256 = "018kw9xwy358dd6icsw8ffk8wa7g8vdhpljwncm52bsbgf1zjw8g";
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
        name = "lcobucci-jwt-56f10808089e38623345e28af2f2d5e4eb579455";
        src = fetchurl {
          url = https://api.github.com/repos/lcobucci/jwt/zipball/56f10808089e38623345e28af2f2d5e4eb579455;
          sha256 = "08vsb3zddn3ghv7k46fyai5ji1g6x9wi113davs9nikmamc9yay3";
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
        name = "league-flysystem-585824702f534f8d3cf7fab7225e8466cc4b7493";
        src = fetchurl {
          url = https://api.github.com/repos/thephpleague/flysystem/zipball/585824702f534f8d3cf7fab7225e8466cc4b7493;
          sha256 = "0ki59cyllf0zpdr5wnlv7pl9mg683kwy38ahjlvifgvvhy45k1zn";
        };
      };
    };
    "mccool/laravel-auto-presenter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "mccool-laravel-auto-presenter-47f1d82c3d76dbb3ec6f5c609cb53260e7d2fcbb";
        src = fetchurl {
          url = https://api.github.com/repos/laravel-auto-presenter/laravel-auto-presenter/zipball/47f1d82c3d76dbb3ec6f5c609cb53260e7d2fcbb;
          sha256 = "0zhq5m46xy5lj45i4yb8kqcv9liahn6cr4sm4y6qfmfygfwk36bs";
        };
      };
    };
    "monolog/monolog" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "monolog-monolog-1817faadd1846cd08be9a49e905dc68823bc38c0";
        src = fetchurl {
          url = https://api.github.com/repos/Seldaek/monolog/zipball/1817faadd1846cd08be9a49e905dc68823bc38c0;
          sha256 = "1l277wfllaaf54v61h4by6637h43i6h0va15r7m82fp6rffydgb9";
        };
      };
    };
    "mtdowling/jmespath.php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "mtdowling-jmespath.php-42dae2cbd13154083ca6d70099692fef8ca84bfb";
        src = fetchurl {
          url = https://api.github.com/repos/jmespath/jmespath.php/zipball/42dae2cbd13154083ca6d70099692fef8ca84bfb;
          sha256 = "157pdx45dmkxwxyq8vdjfci24fw7kl3yc2gj1cifp9kaia7mwlkk";
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
        name = "nikic-php-parser-21dce06dfbf0365c6a7cc8fdbdc995926c6a9300";
        src = fetchurl {
          url = https://api.github.com/repos/nikic/PHP-Parser/zipball/21dce06dfbf0365c6a7cc8fdbdc995926c6a9300;
          sha256 = "095y4hbkybkij8713lqib2v0z9p66k27y5dq14jwk0h1fi2vz8f6";
        };
      };
    };
    "opis/closure" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "opis-closure-dec9fc5ecfca93f45cd6121f8e6f14457dff372c";
        src = fetchurl {
          url = https://api.github.com/repos/opis/closure/zipball/dec9fc5ecfca93f45cd6121f8e6f14457dff372c;
          sha256 = "00znzmasqcaq5wqi6n18b8n22pxshwd0c524xvvq93c3piw4rah3";
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
        name = "php-http-promise-4c4c1f9b7289a2ec57cde7f1e9762a5789506f88";
        src = fetchurl {
          url = https://api.github.com/repos/php-http/promise/zipball/4c4c1f9b7289a2ec57cde7f1e9762a5789506f88;
          sha256 = "0xjprpx6xlsjr599vrbmf3cb9726adfm1p9q59xcklrh4p8grwbz";
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
          sha256 = "0c4rj657b1ly1lj355v0cn3r2vqyfzawxxy0rmzq3q8x8yca8l7g";
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
        name = "symfony-console-55d07021da933dd0d633ffdab6f45d5b230c7e02";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/console/zipball/55d07021da933dd0d633ffdab6f45d5b230c7e02;
          sha256 = "15n095z603majh0brhwm307lzy43p0alp059q1qfgg4g0rb3dnzv";
        };
      };
    };
    "symfony/css-selector" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-css-selector-bf17dc9f6ce144e41f786c32435feea4d8e11dcc";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/css-selector/zipball/bf17dc9f6ce144e41f786c32435feea4d8e11dcc;
          sha256 = "1kj2c654nq0hx0b25v4210r77wypqp3xjlngk5zzs371im528pgd";
        };
      };
    };
    "symfony/debug" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-debug-47aa9064d75db36389692dd4d39895a0820f00f2";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/debug/zipball/47aa9064d75db36389692dd4d39895a0820f00f2;
          sha256 = "017r9ngn1g65gg2i2rv8dfk6n7y5s7fd6kic3bwwhn6pf2kyjfbg";
        };
      };
    };
    "symfony/error-handler" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-error-handler-66f151360550ec2b3273b3746febb12e6ba0348b";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/error-handler/zipball/66f151360550ec2b3273b3746febb12e6ba0348b;
          sha256 = "0w5d0dhzq575am1rd4i7mgpd1ys3zqmh9d9wdxgqh5dkj63kw4xi";
        };
      };
    };
    "symfony/event-dispatcher" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-event-dispatcher-6140fc7047dafc5abbe84ba16a34a86c0b0229b8";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/event-dispatcher/zipball/6140fc7047dafc5abbe84ba16a34a86c0b0229b8;
          sha256 = "1cfhyi73bjjdmyvazxxyd6kl93145m528l739sn3akpm0qixr55q";
        };
      };
    };
    "symfony/event-dispatcher-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-event-dispatcher-contracts-84e23fdcd2517bf37aecbd16967e83f0caee25a7";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/event-dispatcher-contracts/zipball/84e23fdcd2517bf37aecbd16967e83f0caee25a7;
          sha256 = "1pcfrlc0rg8vdnp23y3y1p5qzng5nxf5i2c36g9x9f480xrnc1fw";
        };
      };
    };
    "symfony/finder" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-finder-2727aa35fddfada1dd37599948528e9b152eb742";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/finder/zipball/2727aa35fddfada1dd37599948528e9b152eb742;
          sha256 = "1fq500kmxghw15lfpzhia9mqdxzq3c8pcrbw9ndbf5g0mi69hdg1";
        };
      };
    };
    "symfony/http-foundation" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-http-foundation-3675676b6a47f3e71d3ab10bcf53fb9239eb77e6";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/http-foundation/zipball/3675676b6a47f3e71d3ab10bcf53fb9239eb77e6;
          sha256 = "1k9l60dp4cdlg1figihsx7hj0asa45ghjq3d1js0dzn3b1w4g6l0";
        };
      };
    };
    "symfony/http-kernel" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-http-kernel-a675d2bf04a9328f164910cae6e3918b295151f3";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/http-kernel/zipball/a675d2bf04a9328f164910cae6e3918b295151f3;
          sha256 = "0pij8hzjx1mcv6m6y62ari1s3i3n1rl14k2yhchv1ga6qrjlwkk4";
        };
      };
    };
    "symfony/mime" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-mime-cb00d7210bc096f997e63189a62b5e35d72babac";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/mime/zipball/cb00d7210bc096f997e63189a62b5e35d72babac;
          sha256 = "18wnb18382za1qswmxfhf360pamqwgc9qibvn9xgsybsph1pbhji";
        };
      };
    };
    "symfony/polyfill-ctype" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-ctype-1c302646f6efc070cd46856e600e5e0684d6b454";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-ctype/zipball/1c302646f6efc070cd46856e600e5e0684d6b454;
          sha256 = "17piwz6vhdch0kc7wd3h04sgrvpmw7dqfkrcj2dppid5j8v29lnv";
        };
      };
    };
    "symfony/polyfill-iconv" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-iconv-6c2f78eb8f5ab8eaea98f6d414a5915f2e0fce36";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-iconv/zipball/6c2f78eb8f5ab8eaea98f6d414a5915f2e0fce36;
          sha256 = "0lhdmym9mlfgjhsrgmxfvpjrpsq1n2wh5jyrgqkwjv0jib4qhccr";
        };
      };
    };
    "symfony/polyfill-intl-idn" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-intl-idn-bc6549d068d0160e0f10f7a5a23c7d1406b95ebe";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-intl-idn/zipball/bc6549d068d0160e0f10f7a5a23c7d1406b95ebe;
          sha256 = "0dn2nqc5xmix8klcm1ygwlbqml09yvcyly6ck7z8c6drcwxljmyx";
        };
      };
    };
    "symfony/polyfill-intl-normalizer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-intl-normalizer-37078a8dd4a2a1e9ab0231af7c6cb671b2ed5a7e";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-intl-normalizer/zipball/37078a8dd4a2a1e9ab0231af7c6cb671b2ed5a7e;
          sha256 = "0dy6snii84dyific6xn6a3mz9shhp7wj4fyqjizg89jwvc3f7qdj";
        };
      };
    };
    "symfony/polyfill-php56" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php56-13df84e91cd168f247c2f2ec82cc0fa24901c011";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-php56/zipball/13df84e91cd168f247c2f2ec82cc0fa24901c011;
          sha256 = "0x5r3a44rcgvjwzm34h2q2z40svgnw8gi04narfn3wf3xvrbbz4a";
        };
      };
    };
    "symfony/polyfill-php70" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php70-0dd93f2c578bdc9c72697eaa5f1dd25644e618d3";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-php70/zipball/0dd93f2c578bdc9c72697eaa5f1dd25644e618d3;
          sha256 = "1mrsfx3pxs1wqz5bz24i1rxlsbv7bx8q5fndk7z53kb59jsg1837";
        };
      };
    };
    "symfony/polyfill-php72" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php72-639447d008615574653fb3bc60d1986d7172eaae";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-php72/zipball/639447d008615574653fb3bc60d1986d7172eaae;
          sha256 = "1kqxamfcf5k8i3fh3950syg91rsk4bhjm83w5qjbia6xfm03awxz";
        };
      };
    };
    "symfony/polyfill-php73" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php73-fffa1a52a023e782cdcc221d781fe1ec8f87fcca";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-php73/zipball/fffa1a52a023e782cdcc221d781fe1ec8f87fcca;
          sha256 = "07sv5hjmadp879rq2q50d9rbwi2ki6rkap98yn0h7hq82q2yh1f0";
        };
      };
    };
    "symfony/polyfill-php80" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php80-d87d5766cbf48d72388a9f6b85f280c8ad51f981";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-php80/zipball/d87d5766cbf48d72388a9f6b85f280c8ad51f981;
          sha256 = "1cxwqycsj776iqlib7np33l94ch3hal6a7dghq1b3xmm1j1450z7";
        };
      };
    };
    "symfony/polyfill-util" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-util-46b910c71e9828f8ec2aa7a0314de1130d9b295a";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-util/zipball/46b910c71e9828f8ec2aa7a0314de1130d9b295a;
          sha256 = "0qx2m6djjdjs07sirlaz20zafxvs4ds9s7za7vygk5n7cycaq4w3";
        };
      };
    };
    "symfony/process" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-process-65e70bab62f3da7089a8d4591fb23fbacacb3479";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/process/zipball/65e70bab62f3da7089a8d4591fb23fbacacb3479;
          sha256 = "1w8p5xmj5z2gzgy4vf1hnsn1yp5x7sdxph72y66vs7mpqwcx3100";
        };
      };
    };
    "symfony/routing" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-routing-e103381a4c2f0731c14589041852bf979e97c7af";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/routing/zipball/e103381a4c2f0731c14589041852bf979e97c7af;
          sha256 = "0narmszgwawg8gmnkyiaqdrwnld8pia65094s8736n9h4wcdiqq2";
        };
      };
    };
    "symfony/service-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-service-contracts-b776d18b303a39f56c63747bcb977ad4b27aca26";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/service-contracts/zipball/b776d18b303a39f56c63747bcb977ad4b27aca26;
          sha256 = "1pwwjw1q0sg87za5sa1bk6d9yh8z49wv6nsqm3374vfn1hm9f5wf";
        };
      };
    };
    "symfony/translation" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-translation-a8ea9d97353294eb6783f2894ef8cee99a045822";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/translation/zipball/a8ea9d97353294eb6783f2894ef8cee99a045822;
          sha256 = "13wvlvc33wfz92vzi03zhcl0pnr2gp4c7msgbkwi5y0cssxw98qp";
        };
      };
    };
    "symfony/translation-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-translation-contracts-a5db6f7707fd35d137b1398734f2d745c8616ea2";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/translation-contracts/zipball/a5db6f7707fd35d137b1398734f2d745c8616ea2;
          sha256 = "0sjxmg77x3hgd7rnqicxab7iw37a23b2kvrkraak79g69jyv6ybm";
        };
      };
    };
    "symfony/var-dumper" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-var-dumper-2125805a1a4e57f2340bc566c3013ca94d2722dc";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/var-dumper/zipball/2125805a1a4e57f2340bc566c3013ca94d2722dc;
          sha256 = "1xfv0nkf9mq7z1nyw311g23fl42ihx18n7659bijwpswrv8x3fiv";
        };
      };
    };
    "tijsverkoyen/css-to-inline-styles" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "tijsverkoyen-css-to-inline-styles-b43b05cf43c1b6d849478965062b6ef73e223bb5";
        src = fetchurl {
          url = https://api.github.com/repos/tijsverkoyen/CssToInlineStyles/zipball/b43b05cf43c1b6d849478965062b6ef73e223bb5;
          sha256 = "0lc6jviz8faqxxs453dbqvfdmm6l2iczxla22v2r6xhakl58pf3w";
        };
      };
    };
    "twig/twig" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "twig-twig-46a612ba1bbf6ee1c58acabacd868212ff8a2911";
        src = fetchurl {
          url = https://api.github.com/repos/twigphp/Twig/zipball/46a612ba1bbf6ee1c58acabacd868212ff8a2911;
          sha256 = "1aw77m845cm621s2b94xi9s8745gibc3fkpnj4x4v38c22rqy137";
        };
      };
    };
    "vlucas/phpdotenv" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "vlucas-phpdotenv-e1d57f62db3db00d9139078cbedf262280701479";
        src = fetchurl {
          url = https://api.github.com/repos/vlucas/phpdotenv/zipball/e1d57f62db3db00d9139078cbedf262280701479;
          sha256 = "0s099x3srhymzgjsym66rbxncmp4iwj4p0dqjaf5fp1dif3pvd13";
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
        name = "alt-three-testbench-33624bed591f76fe0237c59c235243cebd3c4305";
        src = fetchurl {
          url = https://api.github.com/repos/AltThree/TestBench/zipball/33624bed591f76fe0237c59c235243cebd3c4305;
          sha256 = "0gr5ahvl903piqch65ffnvab41k2wivvimvz2lh1ccshci6a89mv";
        };
      };
    };
    "barryvdh/laravel-debugbar" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "barryvdh-laravel-debugbar-57f2219f6d9efe41ed1bc880d86701c52f261bf5";
        src = fetchurl {
          url = https://api.github.com/repos/barryvdh/laravel-debugbar/zipball/57f2219f6d9efe41ed1bc880d86701c52f261bf5;
          sha256 = "1k3abk31n9v81zx7d3nin3xb9an8r8syyli836q1dw1r2cvswn65";
        };
      };
    };
    "doctrine/instantiator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-instantiator-f350df0268e904597e3bd9c4685c53e0e333feea";
        src = fetchurl {
          url = https://api.github.com/repos/doctrine/instantiator/zipball/f350df0268e904597e3bd9c4685c53e0e333feea;
          sha256 = "01a3px69q7ddlskaq9dc1w3cy6kyx07jxmagnnlhqkxjy2jl247q";
        };
      };
    };
    "filp/whoops" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "filp-whoops-5d5fe9bb3d656b514d455645b3addc5f7ba7714d";
        src = fetchurl {
          url = https://api.github.com/repos/filp/whoops/zipball/5d5fe9bb3d656b514d455645b3addc5f7ba7714d;
          sha256 = "09v5pzdjw92fi1xd4fa3h08mc55pg93za4nzd02n62x7vqp06mm8";
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
        name = "graham-campbell-analyzer-baecd15b7e1185075a8db63ca1806c555cd60bc8";
        src = fetchurl {
          url = https://api.github.com/repos/GrahamCampbell/Analyzer/zipball/baecd15b7e1185075a8db63ca1806c555cd60bc8;
          sha256 = "0mbn4lhfprfglf249p9lanpy6z9638mr9mb3k07ksq050gyrjvyv";
        };
      };
    };
    "graham-campbell/testbench-core" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "graham-campbell-testbench-core-6323e0305fea8488c75de223251941f1f966f4ec";
        src = fetchurl {
          url = https://api.github.com/repos/GrahamCampbell/Laravel-TestBench-Core/zipball/6323e0305fea8488c75de223251941f1f966f4ec;
          sha256 = "199g5s00j2ds0g957aqr6j4q68sxgpax4smzpy8wwwpg68isixsi";
        };
      };
    };
    "hamcrest/hamcrest-php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "hamcrest-hamcrest-php-8c3d0a3f6af734494ad8f6fbbee0ba92422859f3";
        src = fetchurl {
          url = https://api.github.com/repos/hamcrest/hamcrest-php/zipball/8c3d0a3f6af734494ad8f6fbbee0ba92422859f3;
          sha256 = "1ixmmpplaf1z36f34d9f1342qjbcizvi5ddkjdli6jgrbla6a6hr";
        };
      };
    };
    "maximebf/debugbar" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "maximebf-debugbar-1a1605b8e9bacb34cc0c6278206d699772e1d372";
        src = fetchurl {
          url = https://api.github.com/repos/maximebf/php-debugbar/zipball/1a1605b8e9bacb34cc0c6278206d699772e1d372;
          sha256 = "1qxswiifn0zzjs57hbvgn567bq0lk2d343xryxjsry4nnyn1djx4";
        };
      };
    };
    "mockery/mockery" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "mockery-mockery-9b6f117dd7d36dc3858d8d8ddf9b3d584fcae283";
        src = fetchurl {
          url = https://api.github.com/repos/mockery/mockery/zipball/9b6f117dd7d36dc3858d8d8ddf9b3d584fcae283;
          sha256 = "041i3h0z706c35b34j3ybcckq0i82a986cafybrarz0925mlyqw2";
        };
      };
    };
    "myclabs/deep-copy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "myclabs-deep-copy-969b211f9a51aa1f6c01d1d2aef56d3bd91598e5";
        src = fetchurl {
          url = https://api.github.com/repos/myclabs/DeepCopy/zipball/969b211f9a51aa1f6c01d1d2aef56d3bd91598e5;
          sha256 = "0i5aswlbn7pxhgwswpqxf5wdr1v40kic4a2z06xv77wnfkhb6myh";
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
        name = "phpdocumentor-reflection-common-6568f4687e5b41b054365f9ae03fcb1ed5f2069b";
        src = fetchurl {
          url = https://api.github.com/repos/phpDocumentor/ReflectionCommon/zipball/6568f4687e5b41b054365f9ae03fcb1ed5f2069b;
          sha256 = "03ni3h86vg97wvnqj0nix79mza1krar0vghwa8fcd0h5lxx73smy";
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
          sha256 = "1kpg2bsacrgsad0lpqz1mf8wgdi5fnjgyxpi09w9bpszmhnnqgrj";
        };
      };
    };
    "webmozart/assert" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "webmozart-assert-bafc69caeb4d49c39fd0779086c03a3738cbb389";
        src = fetchurl {
          url = https://api.github.com/repos/webmozart/assert/zipball/bafc69caeb4d49c39fd0779086c03a3738cbb389;
          sha256 = "0wd0si4c9r1256xj76vgk2slxpamd0wzam3dyyz0g8xgyra7201c";
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
    rev = "cfd173cf122d925b70d5133a37528db6120bea67";
    sha256 = "02w6bx019qyyim5c56lr3yxddpxmx7vmqjyr9affs85gafaavxai";
  };

  patches = [ ./0001-Improve-slack-notifications.patch ];

  executable = false;
  symlinkDependencies = false;
  meta = {
    license = "BSD-3-Clause";
  };
}
