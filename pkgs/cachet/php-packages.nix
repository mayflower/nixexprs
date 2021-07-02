{composerEnv, fetchurl, fetchgit ? null, fetchhg ? null, fetchsvn ? null, noDev ? false}:

let
  packages = {
    "alt-three/badger" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "alt-three-badger-c4cd7140aed3554ba4b8c44a877d400d6e5e3554";
        src = fetchurl {
          url = "https://api.github.com/repos/AltThree/Badger/zipball/c4cd7140aed3554ba4b8c44a877d400d6e5e3554";
          sha256 = "12ydlsw8a0f07lg2a13wy6w976kblv1jy54v9zayx0s46wq9gjls";
        };
      };
    };
    "alt-three/bus" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "alt-three-bus-5c8399e0ca67ba6b499aa1e8db6a278711446090";
        src = fetchurl {
          url = "https://api.github.com/repos/AltThree/Bus/zipball/5c8399e0ca67ba6b499aa1e8db6a278711446090";
          sha256 = "0a0xrjqvsalwk3ls9qnhsvy1gsw4im1s5mgpbdhkijsg07xklvd6";
        };
      };
    };
    "alt-three/emoji" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "alt-three-emoji-631119fb03162af8f42f7eda4c1f92c87611e36f";
        src = fetchurl {
          url = "https://api.github.com/repos/AltThree/Emoji/zipball/631119fb03162af8f42f7eda4c1f92c87611e36f";
          sha256 = "1qswvg9pgdrfpbpb9rxkbg3malia70wx9gsq312awvz6wnlvl8y3";
        };
      };
    };
    "alt-three/throttle" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "alt-three-throttle-bda58993b1818b943f1738661af692a639c4aa5e";
        src = fetchurl {
          url = "https://api.github.com/repos/AltThree/Throttle/zipball/bda58993b1818b943f1738661af692a639c4aa5e";
          sha256 = "1rz1fkxi8m7qlkwivspi7m61rba80fhz39gi24q1fp2jih9knhyr";
        };
      };
    };
    "alt-three/validator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "alt-three-validator-d61966e8f703643197f957816c765306bcf27664";
        src = fetchurl {
          url = "https://api.github.com/repos/AltThree/Validator/zipball/d61966e8f703643197f957816c765306bcf27664";
          sha256 = "0mjhnidggnxmw6r3lf4d9k4139gjsw4511k4yl8nijgi18ychj0b";
        };
      };
    };
    "aws/aws-sdk-php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "aws-aws-sdk-php-9b7849c4c9f2aaa9c5cab8323b450dd8b2c31d0f";
        src = fetchurl {
          url = "https://api.github.com/repos/aws/aws-sdk-php/zipball/9b7849c4c9f2aaa9c5cab8323b450dd8b2c31d0f";
          sha256 = "0ycyrxiq5249rx5wyyfykkmsrhw2666bn57qryvma6lwmr1mh94a";
        };
      };
    };
    "backup-manager/backup-manager" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "backup-manager-backup-manager-5d8cdadeda8b89bffa70829b4b74c0c774fa0364";
        src = fetchurl {
          url = "https://api.github.com/repos/backup-manager/backup-manager/zipball/5d8cdadeda8b89bffa70829b4b74c0c774fa0364";
          sha256 = "13x2jdqyz4s1vddap14b7s45bgl2axq6968svxzh0jrbqimmvfk3";
        };
      };
    };
    "backup-manager/laravel" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "backup-manager-laravel-dc114f1191a7d8a84fc52bebb1163c264d0b3da5";
        src = fetchurl {
          url = "https://api.github.com/repos/backup-manager/laravel/zipball/dc114f1191a7d8a84fc52bebb1163c264d0b3da5";
          sha256 = "1ym43baqg95qb5wm7jcpsnmzxawr8z9842yyn4r9vma2fvx930r8";
        };
      };
    };
    "bacon/bacon-qr-code" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "bacon-bacon-qr-code-5a91b62b9d37cee635bbf8d553f4546057250bee";
        src = fetchurl {
          url = "https://api.github.com/repos/Bacon/BaconQrCode/zipball/5a91b62b9d37cee635bbf8d553f4546057250bee";
          sha256 = "0rb88fg083790bbciffniff7xqkgzm091szm131afhkl8rr7pnkq";
        };
      };
    };
    "barryvdh/laravel-cors" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "barryvdh-laravel-cors-9bf14c1d5ebe46738e8c535e56e621f98779197d";
        src = fetchurl {
          url = "https://api.github.com/repos/fruitcake/laravel-cors/zipball/9bf14c1d5ebe46738e8c535e56e621f98779197d";
          sha256 = "0wyfrg14zkamdca43n3p6s55sarhyrq3byiz15dc2njjlmk3jdgf";
        };
      };
    };
    "cachethq/cachet" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "cachethq-cachet-2e5e8b154510574206e87c29aab20c98948d3d8a";
        src = fetchurl {
          url = "https://api.github.com/repos/CachetHQ/Cachet/zipball/2e5e8b154510574206e87c29aab20c98948d3d8a";
          sha256 = "1vfr3sg1kazjkag4zffxlq128wgp8kyqidf9fzb8pmwan2s2k9vg";
        };
      };
    };
    "christian-riesen/base32" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "christian-riesen-base32-2e82dab3baa008e24a505649b0d583c31d31e894";
        src = fetchurl {
          url = "https://api.github.com/repos/ChristianRiesen/base32/zipball/2e82dab3baa008e24a505649b0d583c31d31e894";
          sha256 = "0000b961zwrrmh6h2aw7ww76jwiy8nz3msvwvagyngy1bhx1l7j2";
        };
      };
    };
    "classpreloader/classpreloader" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "classpreloader-classpreloader-297db07cabece3946f4a98d23f11f90aa10e1797";
        src = fetchurl {
          url = "https://api.github.com/repos/ClassPreloader/ClassPreloader/zipball/297db07cabece3946f4a98d23f11f90aa10e1797";
          sha256 = "1sh3sxnga09486zcznzrnfg3sf4z9axvlq938smla93w86yyyswg";
        };
      };
    };
    "dnoegel/php-xdg-base-dir" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "dnoegel-php-xdg-base-dir-265b8593498b997dc2d31e75b89f053b5cc9621a";
        src = fetchurl {
          url = "https://api.github.com/repos/dnoegel/php-xdg-base-dir/zipball/265b8593498b997dc2d31e75b89f053b5cc9621a";
          sha256 = "1xkzxi7j589ayvx1669qaybamravfawz6hc6im32v8vkkbng5kva";
        };
      };
    };
    "doctrine/cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-cache-c9622c6820d3ede1e2315a6a377ea1076e421d88";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/cache/zipball/c9622c6820d3ede1e2315a6a377ea1076e421d88";
          sha256 = "0dw03i597mffza3bllsh89fqwa61zwhp0gvs8hh6qzkhwmsw9rk5";
        };
      };
    };
    "doctrine/dbal" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-dbal-8dd39d2ead4409ce652fd4f02621060f009ea5e4";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/dbal/zipball/8dd39d2ead4409ce652fd4f02621060f009ea5e4";
          sha256 = "107k0qr3m34cjxy00yhdjmd8liqa8wg729zj4z2jifz26niiy8qs";
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
        name = "doctrine-inflector-4bd5c1cdfcd00e9e2d8c484f79150f67e5d355d9";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/inflector/zipball/4bd5c1cdfcd00e9e2d8c484f79150f67e5d355d9";
          sha256 = "0390gkbk3vdjd98h7wjpdv0579swbavrdb6yrlslfdr068g4bmbf";
        };
      };
    };
    "fedeisas/laravel-mail-css-inliner" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "fedeisas-laravel-mail-css-inliner-8c3cd958634e865a90fc398900ea59c427dd35cc";
        src = fetchurl {
          url = "https://api.github.com/repos/fedeisas/laravel-mail-css-inliner/zipball/8c3cd958634e865a90fc398900ea59c427dd35cc";
          sha256 = "0gdh4a1rypq5c74zqsb08ahimmiy3mkbkf2j6sa4v4n5a6s8ihcs";
        };
      };
    };
    "fideloper/proxy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "fideloper-proxy-9cdf6f118af58d89764249bbcc7bb260c132924f";
        src = fetchurl {
          url = "https://api.github.com/repos/fideloper/TrustedProxy/zipball/9cdf6f118af58d89764249bbcc7bb260c132924f";
          sha256 = "0dgg8jak1pvbymg2lfnvrd388qxar8vjv8my25dsaz8vpmdrrigg";
        };
      };
    };
    "graham-campbell/binput" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "graham-campbell-binput-9b2873184bf77bb6ee478d79d0da21427b70164e";
        src = fetchurl {
          url = "https://api.github.com/repos/GrahamCampbell/Laravel-Binput/zipball/9b2873184bf77bb6ee478d79d0da21427b70164e";
          sha256 = "02cr3dp80h3r5h55i7q7cjsxqms7kq6dz8g8dwzqq8akvar0l9s4";
        };
      };
    };
    "graham-campbell/core" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "graham-campbell-core-27c0c9a0aa294dd06cfd2c6b15080c47f15bbb47";
        src = fetchurl {
          url = "https://api.github.com/repos/GrahamCampbell/Laravel-Core/zipball/27c0c9a0aa294dd06cfd2c6b15080c47f15bbb47";
          sha256 = "1nih9wn8fwgs1s5hqi98fxdmsmbxzskag88gih3vrr3aw1f3f7gy";
        };
      };
    };
    "graham-campbell/exceptions" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "graham-campbell-exceptions-e93f725d3637625897fe6ec30dc454cb23adb331";
        src = fetchurl {
          url = "https://api.github.com/repos/GrahamCampbell/Laravel-Exceptions/zipball/e93f725d3637625897fe6ec30dc454cb23adb331";
          sha256 = "1mlpayi0r7s523lp2s1cbcaq1hn1l04s92gwa8hiia291v13xc3n";
        };
      };
    };
    "graham-campbell/markdown" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "graham-campbell-markdown-2208ec910d9880d6bca28d332ae7f3b7350355d1";
        src = fetchurl {
          url = "https://api.github.com/repos/GrahamCampbell/Laravel-Markdown/zipball/2208ec910d9880d6bca28d332ae7f3b7350355d1";
          sha256 = "0c484shblfiwlrwr73jidip7gc8xxfxfkz4c3bbm6a0s19jzmhdz";
        };
      };
    };
    "graham-campbell/security" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "graham-campbell-security-48d92c56581142d776cf2c5a0185a4319c6eb063";
        src = fetchurl {
          url = "https://api.github.com/repos/GrahamCampbell/Laravel-Security/zipball/48d92c56581142d776cf2c5a0185a4319c6eb063";
          sha256 = "020wjsfk72w8ql5vf24ynlhy6f7a35dk0sa02917pawcd7jwzk4y";
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
        name = "guzzlehttp-promises-8e7d04f1f6450fef59366c399cfad4b9383aa30d";
        src = fetchurl {
          url = "https://api.github.com/repos/guzzle/promises/zipball/8e7d04f1f6450fef59366c399cfad4b9383aa30d";
          sha256 = "158wd8nmvvl386c24lkr4jkwdhqpdj0dxdbjwh8iv6a2rgccjr2q";
        };
      };
    };
    "guzzlehttp/psr7" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "guzzlehttp-psr7-dc960a912984efb74d0a90222870c72c87f10c91";
        src = fetchurl {
          url = "https://api.github.com/repos/guzzle/psr7/zipball/dc960a912984efb74d0a90222870c72c87f10c91";
          sha256 = "06nc60wf8k6kcl89kprk04khsrrik5lnis615mx4a0m0pjn8bliz";
        };
      };
    };
    "jakub-onderka/php-console-color" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "jakub-onderka-php-console-color-d5deaecff52a0d61ccb613bb3804088da0307191";
        src = fetchurl {
          url = "https://api.github.com/repos/JakubOnderka/PHP-Console-Color/zipball/d5deaecff52a0d61ccb613bb3804088da0307191";
          sha256 = "0ih1sa301sda03vqsbg28mz44azii1l0adsjp94p6lhgaawyj4rn";
        };
      };
    };
    "jakub-onderka/php-console-highlighter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "jakub-onderka-php-console-highlighter-7daa75df45242c8d5b75a22c00a201e7954e4fb5";
        src = fetchurl {
          url = "https://api.github.com/repos/JakubOnderka/PHP-Console-Highlighter/zipball/7daa75df45242c8d5b75a22c00a201e7954e4fb5";
          sha256 = "1s7kj6619grapl5k8x4ysz7ahmwc8nrfkwrmihhz4jhrfpmvaqpj";
        };
      };
    };
    "jenssegers/date" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "jenssegers-date-58393b0544fc2525b3fcd02aa4c989857107e05a";
        src = fetchurl {
          url = "https://api.github.com/repos/jenssegers/date/zipball/58393b0544fc2525b3fcd02aa4c989857107e05a";
          sha256 = "1ccw77v3jj2ai9ysyh5fczmh2jdr1mksqvi67brgaqh32rswymzl";
        };
      };
    };
    "jeremeamia/superclosure" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "jeremeamia-superclosure-5707d5821b30b9a07acfb4d76949784aaa0e9ce9";
        src = fetchurl {
          url = "https://api.github.com/repos/jeremeamia/super_closure/zipball/5707d5821b30b9a07acfb4d76949784aaa0e9ce9";
          sha256 = "0jhj9s4fkv5lqpjs0r80czq2s8wv4i2ilaav9pkbwrpk17q9dh0c";
        };
      };
    };
    "kylekatarnls/update-helper" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "kylekatarnls-update-helper-429be50660ed8a196e0798e5939760f168ec8ce9";
        src = fetchurl {
          url = "https://api.github.com/repos/kylekatarnls/update-helper/zipball/429be50660ed8a196e0798e5939760f168ec8ce9";
          sha256 = "02lzagbgykk5bqqa203vkyh6xxblvsg6d8sfgsrzp0g228my4qpz";
        };
      };
    };
    "laravel/framework" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-framework-c2a77050269b4e03bd9a735a9f24e573a7598b8a";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel/framework/zipball/c2a77050269b4e03bd9a735a9f24e573a7598b8a";
          sha256 = "1xm5bf0n0q0k1xpq2jprlaid9b7kw6yiir8zcwr9501p9wraxir9";
        };
      };
    };
    "league/commonmark" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-commonmark-83f8210427fb01f671e272bb8d44b4ed3a94d459";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/commonmark/zipball/83f8210427fb01f671e272bb8d44b4ed3a94d459";
          sha256 = "1sz6iwbyc0a7ffibxnwagmsxsn69lgksy4g5wkasr09d9m0v5dld";
        };
      };
    };
    "league/flysystem" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-flysystem-f3ad69181b8afed2c9edf7be5a2918144ff4ea32";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/flysystem/zipball/f3ad69181b8afed2c9edf7be5a2918144ff4ea32";
          sha256 = "0s4sx4j7c16qkk7m6k2r4ajfjidlv15z18ybxhfmmz4jb4wsmv94";
        };
      };
    };
    "league/mime-type-detection" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-mime-type-detection-3b9dff8aaf7323590c1d2e443db701eb1f9aa0d3";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/mime-type-detection/zipball/3b9dff8aaf7323590c1d2e443db701eb1f9aa0d3";
          sha256 = "0pmq486v2nf6672y2z53cyb3mfrxcc8n7z2ilpzz9zkkf2yb990j";
        };
      };
    };
    "mccool/laravel-auto-presenter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "mccool-laravel-auto-presenter-08ce32a41aa5d6c842b4cc19ae442e211cb3dd96";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel-auto-presenter/laravel-auto-presenter/zipball/08ce32a41aa5d6c842b4cc19ae442e211cb3dd96";
          sha256 = "1l9zi3q1kz8hyc5yj76jcaacd7w5pf2ykv1n43pslhn8aawk675z";
        };
      };
    };
    "monolog/monolog" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "monolog-monolog-c6b00f05152ae2c9b04a448f99c7590beb6042f5";
        src = fetchurl {
          url = "https://api.github.com/repos/Seldaek/monolog/zipball/c6b00f05152ae2c9b04a448f99c7590beb6042f5";
          sha256 = "02hr0z3rshvk7hiva7ag3rblr1wymm6s7s9i2yy5bai8f2qwjvdf";
        };
      };
    };
    "mtdowling/cron-expression" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "mtdowling-cron-expression-9be552eebcc1ceec9776378f7dcc085246cacca6";
        src = fetchurl {
          url = "https://api.github.com/repos/mtdowling/cron-expression/zipball/9be552eebcc1ceec9776378f7dcc085246cacca6";
          sha256 = "1lsla84mlk1w7lqgqq1flzplx8annld5x02w7acmpn0mrp5r28kn";
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
        name = "nesbot-carbon-4be0c005164249208ce1b5ca633cd57bdd42ff33";
        src = fetchurl {
          url = "https://api.github.com/repos/briannesbitt/Carbon/zipball/4be0c005164249208ce1b5ca633cd57bdd42ff33";
          sha256 = "15vddmcxpzfaglb0w7y49kahppnl7df0smhwpxgy5v05c5c0093a";
        };
      };
    };
    "nikic/php-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nikic-php-parser-4dd659edadffdc2143e4753df655d866dbfeedf0";
        src = fetchurl {
          url = "https://api.github.com/repos/nikic/PHP-Parser/zipball/4dd659edadffdc2143e4753df655d866dbfeedf0";
          sha256 = "10jfnmq96sfsr4mv4lhfs65dy0xm2vaq9ryj5azrkzpjcwim8hm9";
        };
      };
    };
    "paragonie/random_compat" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "paragonie-random_compat-9b3899e3c3ddde89016f576edb8c489708ad64cd";
        src = fetchurl {
          url = "https://api.github.com/repos/paragonie/random_compat/zipball/9b3899e3c3ddde89016f576edb8c489708ad64cd";
          sha256 = "1509ii9irfchf64gmbxyknbq9alchxi4m2ayl2l762gzhqryak14";
        };
      };
    };
    "pragmarx/google2fa" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "pragmarx-google2fa-908678ba9b26cf8ecd7ddca6bfd86afc5b4874df";
        src = fetchurl {
          url = "https://api.github.com/repos/antonioribeiro/google2fa/zipball/908678ba9b26cf8ecd7ddca6bfd86afc5b4874df";
          sha256 = "1wv1zfrp11fx0ghlkacs9ki0vaskl1k8xkm4z0sbwl0dg3j2rf4w";
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
    "psy/psysh" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psy-psysh-e64e10b20f8d229cac76399e1f3edddb57a0f280";
        src = fetchurl {
          url = "https://api.github.com/repos/bobthecow/psysh/zipball/e64e10b20f8d229cac76399e1f3edddb57a0f280";
          sha256 = "17i31n68im7zpwdxjs4f2b7iz29ppjq9nr8slqf9pq2phq765yi6";
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
    "rcrowe/twigbridge" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "rcrowe-twigbridge-c3579440a3ca47ca45bfb0ed854bc0ff9b086bf5";
        src = fetchurl {
          url = "https://api.github.com/repos/rcrowe/TwigBridge/zipball/c3579440a3ca47ca45bfb0ed854bc0ff9b086bf5";
          sha256 = "05702p4m3b9nv5gdsvll4jgxlqmw7y0b39ln88z5i3y6kd2zx41f";
        };
      };
    };
    "roumen/feed" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "roumen-feed-ffbdb58f2ef41c7cb5d3bcd0aec2273e8eabc58b";
        src = fetchurl {
          url = "https://api.github.com/repos/Laravelium/laravel-feed/zipball/ffbdb58f2ef41c7cb5d3bcd0aec2273e8eabc58b";
          sha256 = "091sjsk5p6lx8r1k6zxfgqylx0ghillywkkvc9pd16x4z9fy4vbi";
        };
      };
    };
    "simplesoftwareio/simple-qrcode" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "simplesoftwareio-simple-qrcode-17c5e45c79c40f717d4bc08cf5e568f29ebf9333";
        src = fetchurl {
          url = "https://api.github.com/repos/SimpleSoftwareIO/simple-qrcode/zipball/17c5e45c79c40f717d4bc08cf5e568f29ebf9333";
          sha256 = "08cx3chdsfxah3r2ipcgbvsxq44i9jhm0zwvv9dy1g80122nkw6n";
        };
      };
    };
    "swiftmailer/swiftmailer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "swiftmailer-swiftmailer-181b89f18a90f8925ef805f950d47a7190e9b950";
        src = fetchurl {
          url = "https://api.github.com/repos/swiftmailer/swiftmailer/zipball/181b89f18a90f8925ef805f950d47a7190e9b950";
          sha256 = "0hkmawv3bhbqdavy4wxqhzajg5zqd7chsi8w27y2zdi5r35az75d";
        };
      };
    };
    "symfony/console" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-console-926061e74229e935d3c5b4e9ba87237316c6693f";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/console/zipball/926061e74229e935d3c5b4e9ba87237316c6693f";
          sha256 = "0aa44salavbinjx91rb5iw3z9r8jd1y119mjvsm4xp21yhrbqplw";
        };
      };
    };
    "symfony/css-selector" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-css-selector-da3d9da2ce0026771f5fe64cb332158f1bd2bc33";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/css-selector/zipball/da3d9da2ce0026771f5fe64cb332158f1bd2bc33";
          sha256 = "0nixkzc1c18jxv0wf1jy6r7pynr2w6p50v1rp9lzfjllxp61kla2";
        };
      };
    };
    "symfony/debug" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-debug-697c527acd9ea1b2d3efac34d9806bf255278b0a";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/debug/zipball/697c527acd9ea1b2d3efac34d9806bf255278b0a";
          sha256 = "00d4kbzswrymand3rrhyc173fs26x55d38bvs17d5y6bk5glr6q1";
        };
      };
    };
    "symfony/event-dispatcher" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-event-dispatcher-31fde73757b6bad247c54597beef974919ec6860";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/event-dispatcher/zipball/31fde73757b6bad247c54597beef974919ec6860";
          sha256 = "0z2aq1gbvy677mzhl9fjk6vl1680hw8hv4vb12d8i6mc7rmama9r";
        };
      };
    };
    "symfony/finder" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-finder-3eb4e64c6145ef8b92adefb618a74ebdde9e3fe9";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/finder/zipball/3eb4e64c6145ef8b92adefb618a74ebdde9e3fe9";
          sha256 = "0fchak753rdphvgbcjywcrkbrrcinb20w68s9c7v7ajb2m258n9y";
        };
      };
    };
    "symfony/http-foundation" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-http-foundation-49ba00f8ede742169cb6b70abe33243f4d673f82";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/http-foundation/zipball/49ba00f8ede742169cb6b70abe33243f4d673f82";
          sha256 = "0pgxykdmx25c1bxg8i3gj79smxfwb1ax6jwqmr9gsqs7r2ljbr10";
        };
      };
    };
    "symfony/http-kernel" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-http-kernel-d97ba4425e36e79c794e7d14ff36f00f081b37b3";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/http-kernel/zipball/d97ba4425e36e79c794e7d14ff36f00f081b37b3";
          sha256 = "1lg0qp2zwf3w9q3rpn03nxkh1jwkqdlr95ffx85qq8j8wf4kq2mf";
        };
      };
    };
    "symfony/polyfill-ctype" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-ctype-46cd95797e9df938fdd2b03693b5fca5e64b01ce";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-ctype/zipball/46cd95797e9df938fdd2b03693b5fca5e64b01ce";
          sha256 = "0z4iiznxxs4r72xs4irqqb6c0wnwpwf0hklwn2imls67haq330zn";
        };
      };
    };
    "symfony/polyfill-intl-idn" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-intl-idn-65bd267525e82759e7d8c4e8ceea44f398838e65";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-intl-idn/zipball/65bd267525e82759e7d8c4e8ceea44f398838e65";
          sha256 = "1cx2cjx0vzni297l7avd3cb1q4c8d2hylkvdqcjlpxjqdimn4jkn";
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
    "symfony/polyfill-mbstring" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-mbstring-2df51500adbaebdc4c38dea4c89a2e131c45c8a1";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-mbstring/zipball/2df51500adbaebdc4c38dea4c89a2e131c45c8a1";
          sha256 = "1fbi13p4a6nn01ix3gcj966kq6z8qx03li4vbjylsr9ac2mgnmnn";
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
    "symfony/process" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-process-768debc5996f599c4372b322d9061dba2a4bf505";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/process/zipball/768debc5996f599c4372b322d9061dba2a4bf505";
          sha256 = "17q8r8zg0rs2wl5mxv8dlm057mpz8xx2vw2ipy19wgcgiz369skn";
        };
      };
    };
    "symfony/routing" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-routing-9038984bd9c05ab07280121e9e10f61a7231457b";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/routing/zipball/9038984bd9c05ab07280121e9e10f61a7231457b";
          sha256 = "0hs9bjr5krgv8kl90hhshjsa18sjivnjjkdffzxsyj6v9mnb80a4";
        };
      };
    };
    "symfony/translation" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-translation-eee6c664853fd0576f21ae25725cfffeafe83f26";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/translation/zipball/eee6c664853fd0576f21ae25725cfffeafe83f26";
          sha256 = "1l6nxk7ik8a0hj9lrxgbzwi07xiwm9aai1yd4skswnb0r3qbbxzq";
        };
      };
    };
    "symfony/var-dumper" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-var-dumper-1f7e071aafc6676fcb6e3f0497f87c2397247377";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/var-dumper/zipball/1f7e071aafc6676fcb6e3f0497f87c2397247377";
          sha256 = "08z5c0fx969nkdwcbw5i2pxga1hv32dbxrxvpinx4b8nfc0ry733";
        };
      };
    };
    "tijsverkoyen/css-to-inline-styles" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "tijsverkoyen-css-to-inline-styles-9753fc340726e327e4d48b7c0604f85475ae0bc3";
        src = fetchurl {
          url = "https://api.github.com/repos/tijsverkoyen/CssToInlineStyles/zipball/9753fc340726e327e4d48b7c0604f85475ae0bc3";
          sha256 = "11dvv221ga2s1dmvb83npzgfjnqmzma5c6d0gj2h0bhq37sc7xs5";
        };
      };
    };
    "twig/twig" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "twig-twig-4d400421528e9fa40caaffcf7824c172526dd99d";
        src = fetchurl {
          url = "https://api.github.com/repos/twigphp/Twig/zipball/4d400421528e9fa40caaffcf7824c172526dd99d";
          sha256 = "1fsp3frch9zdj1gl70hpfsxvfz6lq22i5p6siqpqa92hj5hi4ckk";
        };
      };
    };
    "vlucas/phpdotenv" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "vlucas-phpdotenv-b786088918a884258c9e3e27405c6a4cf2ee246e";
        src = fetchurl {
          url = "https://api.github.com/repos/vlucas/phpdotenv/zipball/b786088918a884258c9e3e27405c6a4cf2ee246e";
          sha256 = "0y4aa6jkwj6b74bng3sdvz6hp9gjncr74cj532g7wk54lf1j2ppj";
        };
      };
    };
  };
  devPackages = {};
in
composerEnv.buildPackage {
  inherit packages devPackages noDev;
  name = "cachethq-cachet";
  src = ./.;
  executable = true;
  symlinkDependencies = false;
  meta = {};
}
