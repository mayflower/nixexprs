{composerEnv, fetchurl, fetchFromGitHub, fetchgit ? null, fetchhg ? null, fetchsvn ? null, noDev ? false}:

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
        name = "alt-three-bus-16162cfa5e08bf7fc3f233fc6c54f9ab50c2861c";
        src = fetchurl {
          url = https://api.github.com/repos/AltThree/Bus/zipball/16162cfa5e08bf7fc3f233fc6c54f9ab50c2861c;
          sha256 = "1spyynhhjri7f6fmm1bnj85l7nc6kmc32fwgyd13a3a74czm51qy";
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
        name = "alt-three-validator-cf9cce7ce39dfa038aad28a4b864d50ec1f8149c";
        src = fetchurl {
          url = https://api.github.com/repos/AltThree/Validator/zipball/cf9cce7ce39dfa038aad28a4b864d50ec1f8149c;
          sha256 = "1vva9xkw3gi780r7xsyvv8xyn0cw6zv3vz391n0c3zz6n793bh7w";
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
        name = "aws-aws-sdk-php-5c6f05d68576f845a8391b83020b480840eca759";
        src = fetchurl {
          url = https://api.github.com/repos/aws/aws-sdk-php/zipball/5c6f05d68576f845a8391b83020b480840eca759;
          sha256 = "0v33rrmq4zdv1mca70xvvfy9lc4bhglx8l0g3i5mrjjh01jf79ik";
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
    "chillerlan/php-qrcode" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "chillerlan-php-qrcode-45577426ab8e2199aa60e00f9bd7c242c1484c97";
        src = fetchurl {
          url = https://api.github.com/repos/chillerlan/php-qrcode/zipball/45577426ab8e2199aa60e00f9bd7c242c1484c97;
          sha256 = "08y56whppmdji7d59a0lzyf6p5h4hp28dd6gqjrybx0xd62kxnm0";
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
        name = "fideloper-proxy-03085e58ec7bee24773fa5a8850751a6e61a7e8a";
        src = fetchurl {
          url = https://api.github.com/repos/fideloper/TrustedProxy/zipball/03085e58ec7bee24773fa5a8850751a6e61a7e8a;
          sha256 = "0z6mvbwwagjb9pc93s33cazm8wk7zjhih4s2awhr47j3fa52d10a";
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
        name = "graham-campbell-guzzle-factory-5953039c541533647110f8c8f48cbc428d51beb1";
        src = fetchurl {
          url = https://api.github.com/repos/GrahamCampbell/Guzzle-Factory/zipball/5953039c541533647110f8c8f48cbc428d51beb1;
          sha256 = "04mmi9jwvgnfbnnlkb8xm7brffapmx8fwdncgnzngss89yzb56c0";
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
        name = "mccool-laravel-auto-presenter-c364ab8f7f6a6e133745b3f667c737a4dbee9296";
        src = fetchurl {
          url = https://api.github.com/repos/laravel-auto-presenter/laravel-auto-presenter/zipball/c364ab8f7f6a6e133745b3f667c737a4dbee9296;
          sha256 = "1blmvjby5180wjqs3h6706ma0v5vhi57f1qr2y7ndjmckvf3szs8";
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
        name = "nesbot-carbon-dd62a58af4e0775a45ea5f99d0363d81b7d9a1e0";
        src = fetchurl {
          url = https://api.github.com/repos/briannesbitt/Carbon/zipball/dd62a58af4e0775a45ea5f99d0363d81b7d9a1e0;
          sha256 = "1whryi4dv4az42nfgcaaaxa4bwgz6zdl1nvnih2wybhxkjsh5n9q";
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
        name = "nikic-php-parser-e612609022e935f3d0337c1295176505b41188c8";
        src = fetchurl {
          url = https://api.github.com/repos/nikic/PHP-Parser/zipball/e612609022e935f3d0337c1295176505b41188c8;
          sha256 = "11x6yx3nq1j3b1di1h7yaakyanyzdl5ybqrfcc7b9mg13ngv2w45";
        };
      };
    };
    "opis/closure" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "opis-closure-92927e26d7fc3f271efe1f55bdbb073fbb2f0722";
        src = fetchurl {
          url = https://api.github.com/repos/opis/closure/zipball/92927e26d7fc3f271efe1f55bdbb073fbb2f0722;
          sha256 = "0drnk6wpqm8i9gqs1v7fip7rq8qvpjjdvmw45rm207w6x19ig5jq";
        };
      };
    };
    "paragonie/constant_time_encoding" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "paragonie-constant_time_encoding-55af0dc01992b4d0da7f6372e2eac097bbbaffdb";
        src = fetchurl {
          url = https://api.github.com/repos/paragonie/constant_time_encoding/zipball/55af0dc01992b4d0da7f6372e2eac097bbbaffdb;
          sha256 = "07jd3d9lgh39frd62hw660cizkzm4iazjsvbj2875q4q6cvy3i28";
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
        name = "ramsey-uuid-d09ea80159c1929d75b3f9c60504d613aeb4a1e3";
        src = fetchurl {
          url = https://api.github.com/repos/ramsey/uuid/zipball/d09ea80159c1929d75b3f9c60504d613aeb4a1e3;
          sha256 = "1hgnf32xy2cxfwihncmsndnxgkf2hhs6zjqnhyxdhwjyhv4apb67";
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
        name = "symfony-console-8b0ae5742ce9aaa8b0075665862c1ca397d1c1d9";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/console/zipball/8b0ae5742ce9aaa8b0075665862c1ca397d1c1d9;
          sha256 = "0ppvfbclwcdbpnd5zkpvd9wm2f629rcsnc8syg0b1wkxkdzfwlxr";
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
        name = "symfony-debug-afcdea44a2e399c1e4b52246ec8d54c715393ced";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/debug/zipball/afcdea44a2e399c1e4b52246ec8d54c715393ced;
          sha256 = "0r6rr49cx7rip5a90b50dg6jlnyk0g23ksanvlwavykvdagr5qzk";
        };
      };
    };
    "symfony/event-dispatcher" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-event-dispatcher-d257021c1ab28d48d24a16de79dfab445ce93398";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/event-dispatcher/zipball/d257021c1ab28d48d24a16de79dfab445ce93398;
          sha256 = "1g7xywp6qwrwrgkxzina4sv5srxdryzcmp9nfv01c17whnqg0scn";
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
        name = "symfony-finder-86c1c929f0a4b24812e1eb109262fc3372c8e9f2";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/finder/zipball/86c1c929f0a4b24812e1eb109262fc3372c8e9f2;
          sha256 = "0hnaqjhli9262p08fislximn6qyxv3h6f3b5cwk3ykx729a3fwqy";
        };
      };
    };
    "symfony/http-foundation" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-http-foundation-e1b507fcfa4e87d192281774b5ecd4265370180d";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/http-foundation/zipball/e1b507fcfa4e87d192281774b5ecd4265370180d;
          sha256 = "0k1469rw5pawmy6g3nfg4qs7gpzq71shgkg4mmgav0b1wvfzj04g";
        };
      };
    };
    "symfony/http-kernel" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-http-kernel-4150f71e27ed37a74700561b77e3dbd754cbb44d";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/http-kernel/zipball/4150f71e27ed37a74700561b77e3dbd754cbb44d;
          sha256 = "1s4sy2lki4rbp5fsx0qzlqwbmbv3jffkv3jvcnp7pj9jw0v3pf72";
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
    "symfony/polyfill-php56" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php56-f4dddbc5c3471e1b700a147a20ae17cdb72dbe42";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-php56/zipball/f4dddbc5c3471e1b700a147a20ae17cdb72dbe42;
          sha256 = "08y1jx44ppwsi0s5k9rmqk96gp7c5wlz4z0wknlfa15cslpswiaa";
        };
      };
    };
    "symfony/polyfill-php72" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php72-04ce3335667451138df4307d6a9b61565560199e";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-php72/zipball/04ce3335667451138df4307d6a9b61565560199e;
          sha256 = "17hb4v3g8nwi5sqims5fgsw1fyr71kqrwz7q7xszv1vmfhjj9iqc";
        };
      };
    };
    "symfony/polyfill-php73" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php73-2ceb49eaccb9352bff54d22570276bb75ba4a188";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-php73/zipball/2ceb49eaccb9352bff54d22570276bb75ba4a188;
          sha256 = "0w9jbszx4p8n8kwv2hsvn6m38lyadlgvjafanhm8ily9r0nlns9a";
        };
      };
    };
    "symfony/polyfill-util" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-util-b46c6cae28a3106735323f00a0c38eccf2328897";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/polyfill-util/zipball/b46c6cae28a3106735323f00a0c38eccf2328897;
          sha256 = "0ljwv6j81xk7npjh027h6zzzi53wdy88wf5c565l630hmmndizy1";
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
        name = "symfony-routing-2ef809021d72071c611b218c47a3bf3b17b7325e";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/routing/zipball/2ef809021d72071c611b218c47a3bf3b17b7325e;
          sha256 = "1yykny2axjy6b4f8f1j7jqgdi1gvxlkzs5iiw4773fgz39sk6282";
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
        name = "symfony-translation-934ab1d18545149e012aa898cf02e9f23790f7a0";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/translation/zipball/934ab1d18545149e012aa898cf02e9f23790f7a0;
          sha256 = "1mafr1sz9p6iqs8ykdy542m2l1hp9jhw30bcw6qmw102pb6zwfl1";
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
        name = "symfony-var-dumper-641043e0f3e615990a0f29479f9c117e8a6698c6";
        src = fetchurl {
          url = https://api.github.com/repos/symfony/var-dumper/zipball/641043e0f3e615990a0f29479f9c117e8a6698c6;
          sha256 = "108yw4pw91bxwlyh9338xlzp7fjlpkcg0h82vn7zrbl2lr6dwcxk";
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
        name = "zendframework-zend-diactoros-279723778c40164bcf984a2df12ff2c6ec5e61c1";
        src = fetchurl {
          url = https://api.github.com/repos/zendframework/zend-diactoros/zipball/279723778c40164bcf984a2df12ff2c6ec5e61c1;
          sha256 = "1g6xi7x35pji3qqbya87nm285lbw3schwxldv6ql58ksl4zjfkwy";
        };
      };
    };
  };
  devPackages = {
    "alt-three/testbench" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "alt-three-testbench-fa6ee363fff09aa3ce6446293d6ccd9738172c06";
        src = fetchurl {
          url = https://api.github.com/repos/AltThree/TestBench/zipball/fa6ee363fff09aa3ce6446293d6ccd9738172c06;
          sha256 = "079wjpdvn541bnk96i337arm7mr33xfrbwganjs70dv92hdz0j2g";
        };
      };
    };
    "barryvdh/laravel-debugbar" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "barryvdh-laravel-debugbar-18208d64897ab732f6c04a19b319fe8f1d57a9c0";
        src = fetchurl {
          url = https://api.github.com/repos/barryvdh/laravel-debugbar/zipball/18208d64897ab732f6c04a19b319fe8f1d57a9c0;
          sha256 = "1bfqj7saa0nidi7i8jy36bawdb61knwap84fw28nlv2qq71ljd7y";
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
        name = "filp-whoops-cde50e6720a39fdacb240159d3eea6865d51fd96";
        src = fetchurl {
          url = https://api.github.com/repos/filp/whoops/zipball/cde50e6720a39fdacb240159d3eea6865d51fd96;
          sha256 = "1ixgxrxskhhq6baql13n9z0zdhb9lfr29gr9bxp44av9sbsw49lm";
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
        name = "graham-campbell-analyzer-e7ce54cf4761f5f1182af3a69bcf88e1ff82abb0";
        src = fetchurl {
          url = https://api.github.com/repos/GrahamCampbell/Analyzer/zipball/e7ce54cf4761f5f1182af3a69bcf88e1ff82abb0;
          sha256 = "06fhk9blc74fcxhw1yk95dawj1jpcnqr8m4rkv0knm289y378hc2";
        };
      };
    };
    "graham-campbell/testbench-core" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "graham-campbell-testbench-core-436b97fe9327ba15b847ae2f5f1fb2bd5a28d400";
        src = fetchurl {
          url = https://api.github.com/repos/GrahamCampbell/Laravel-TestBench-Core/zipball/436b97fe9327ba15b847ae2f5f1fb2bd5a28d400;
          sha256 = "08hnw7af7i10bml1hmmwasxk7b4lp2cvnrkcs3cj570jjsi00vc3";
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
        name = "mockery-mockery-4eff936d83eb809bde2c57a3cea0ee9643769031";
        src = fetchurl {
          url = https://api.github.com/repos/mockery/mockery/zipball/4eff936d83eb809bde2c57a3cea0ee9643769031;
          sha256 = "08s2xddl047ifd61lc5xr4866fmw028l1fny6x0yij6pn0wvlkcz";
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
        name = "phpunit-php-token-stream-c4a66b97f040e3e20b3aa2a243230a1c3a9f7c8c";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/php-token-stream/zipball/c4a66b97f040e3e20b3aa2a243230a1c3a9f7c8c;
          sha256 = "1n3534hvpnr9h0ni7nr2laiq7xlfmxyxkqhxcgmfcrw8080hfn5r";
        };
      };
    };
    "phpunit/phpunit" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpunit-phpunit-2834789aeb9ac182ad69bfdf9ae91856a59945ff";
        src = fetchurl {
          url = https://api.github.com/repos/sebastianbergmann/phpunit/zipball/2834789aeb9ac182ad69bfdf9ae91856a59945ff;
          sha256 = "1bqqhv4zi4mb8qanz5ymwib4qc93iv7a2gsvfj9nba2153qkwwzd";
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
    rev = "212d8076535894e41876bc472964afe9375c46e6";
    sha256 = "sha256:0ix2cgwlw66af9cpr0kl08h2skg8fmf7b2ka21qdj7iyyr613pcv";
  };
 
  patches = [ ./0002-Improve-slack-notifications.patch ];

  executable = false;
  symlinkDependencies = false;
  meta = {
    license = "BSD-3-Clause";
  };
}
