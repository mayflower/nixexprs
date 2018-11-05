{
  actioncable = {
    dependencies = ["actionpack" "nio4r" "websocket-driver"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0m5m7qn6gcwg6yndrlpxpfffayyqsb68ypzwv3azvnl6ld6zhzw7";
      type = "gem";
    };
    version = "5.1.5";
  };
  actionmailer = {
    dependencies = ["actionpack" "actionview" "activejob" "mail" "rails-dom-testing"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1r2h656z6y0w7bb70jnndvixbbvrh5gikdjx6fmq5nnnrl4h4scw";
      type = "gem";
    };
    version = "5.1.5";
  };
  actionpack = {
    dependencies = ["actionview" "activesupport" "rack" "rack-test" "rails-dom-testing" "rails-html-sanitizer"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1apfcc07x5fk352ihl4nsrghr4wzrjlvf4dadnwxb6vjd85jqngd";
      type = "gem";
    };
    version = "5.1.5";
  };
  actionview = {
    dependencies = ["activesupport" "builder" "erubi" "rails-dom-testing" "rails-html-sanitizer"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "15fc7cik7bxivbn0wiyxagf4c05s3p31i0dyh2g1x2ywyhymkb27";
      type = "gem";
    };
    version = "5.1.5";
  };
  active_model_serializers = {
    dependencies = ["activemodel"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0k3mgia2ahh7mbk30hjq9pzqbk0kh281s91kq2z6p555nv9y6l3k";
      type = "gem";
    };
    version = "0.8.4";
  };
  activeadmin = {
    dependencies = ["arbre" "coffee-rails" "formtastic" "formtastic_i18n" "inherited_resources" "jquery-rails" "kaminari" "railties" "ransack" "sass" "sprockets"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1szmpl15xsfgz7wk6jrd5lmfygr8d8jys3nsryavl91gxhdjha9f";
      type = "gem";
    };
    version = "1.2.1";
  };
  activejob = {
    dependencies = ["activesupport" "globalid"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1vzc8gybh4vixzl7l118kgs0r6ndq72fkysy2ddklwkk442f4qz0";
      type = "gem";
    };
    version = "5.1.5";
  };
  activemodel = {
    dependencies = ["activesupport"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1zk1ibkw4r04v12rirmzx16lwm7dr2w6942vvi5c35idd3c53pfx";
      type = "gem";
    };
    version = "5.1.5";
  };
  activerecord = {
    dependencies = ["activemodel" "activesupport" "arel"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0wimzhisvr9y8fhi4dzv8qc9jm87pfbn8bd8qrqrh2ylkimw04gw";
      type = "gem";
    };
    version = "5.1.5";
  };
  activerecord-import = {
    dependencies = ["activerecord"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "07y6mb30hrxs10iyw92g5w5hnyqh527pkvanr0sdww6894piz7nq";
      type = "gem";
    };
    version = "0.22.0";
  };
  activesupport = {
    dependencies = ["concurrent-ruby" "i18n" "minitest" "tzinfo"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0nkck7948qqmjli7m7m06gm3666jc656zjlq9imqsysl7k34idfr";
      type = "gem";
    };
    version = "5.1.5";
  };
  addressable = {
    dependencies = ["public_suffix"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0viqszpkggqi8hq87pqp0xykhvz60g99nwmkwsb0v45kc2liwxvk";
      type = "gem";
    };
    version = "2.5.2";
  };
  ahoy_email = {
    dependencies = ["addressable" "nokogiri" "rails" "safely_block"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0khc7b58p4m1lixxphr3sdczyw5m9577j2y2998i1si9fnwdk6rw";
      type = "gem";
    };
    version = "0.3.2";
  };
  ahoy_matey = {
    dependencies = ["addressable" "browser" "geocoder" "rack-attack" "railties" "referer-parser" "request_store" "safely_block" "user_agent_parser" "uuidtools"];
    source = {
      fetchSubmodules = false;
      rev = "de4482fd32bbc114a294e121709847d0ac4a1ba5";
      sha256 = "1wyvy8lbqz16fqqxx5hdszcmmif5rczkyci06qz4xb6f0w81x729";
      type = "git";
      url = "git://github.com/gdpelican/ahoy.git";
    };
    version = "1.4.2";
  };
  akami = {
    dependencies = ["gyoku" "nokogiri"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "168y57kd9wshzqqk127w7lknd8lr0b9k50wazw4c92zshq3sw2jd";
      type = "gem";
    };
    version = "1.3.1";
  };
  arbre = {
    dependencies = ["activesupport"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1kvr0b4f25p9iwdv0nj2153awsig5z6rgjz0pcxml7l23ky3iy6z";
      type = "gem";
    };
    version = "1.1.1";
  };
  arel = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0nw0qbc6ph625p6n3maqq9f527vz3nbl0hk72fbyka8jzsmplxzl";
      type = "gem";
    };
    version = "8.0.0";
  };
  autoprefixer-rails = {
    dependencies = ["execjs"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1haw0j1p49r9na9k2acs7iv7z1bn3n47y4zz0nwnl7r6xyzip0an";
      type = "gem";
    };
    version = "8.0.0";
  };
  awesome_print = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "14arh1ixfsd6j5md0agyzvksm5svfkvchb90fp32nn7y3avcmc2h";
      type = "gem";
    };
    version = "1.8.0";
  };
  bcrypt = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1d254sdhdj6mzak3fb5x3jam8b94pvl1srladvs53j05a89j5z50";
      type = "gem";
    };
    version = "3.1.11";
  };
  benchmark-ips = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1w59c4qnwkjqwn7zyp9hshslbshna77vknmz43h0va5lxisd6ai2";
      type = "gem";
    };
    version = "2.7.2";
  };
  bing_translator = {
    dependencies = ["json" "nokogiri" "savon"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "076i3rj1qm51j6aphbrms4pqcqdlgngizgvp87i3a7d1sacsmb2v";
      type = "gem";
    };
    version = "5.1.0";
  };
  bootsnap = {
    dependencies = ["msgpack"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "05plva6dv1nkhxn1903qmam23hcljzrb6xmqnwhgzfrzs3lg7ygg";
      type = "gem";
    };
    version = "1.1.8";
  };
  browser = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "17dj35iqdnc1bw46ydksyvcfwrs4cmql7kdvvkr17mjph6qlgk9f";
      type = "gem";
    };
    version = "2.3.0";
  };
  builder = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0qibi5s67lpdv1wgcj66wcymcr04q6j4mzws6a479n0mlrmh5wr1";
      type = "gem";
    };
    version = "3.2.3";
  };
  bullet = {
    dependencies = ["activesupport" "uniform_notifier"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0331vnywgw9wsqp30krqfpr10f27q1j32m7adb4ppay2mxgg85ab";
      type = "gem";
    };
    version = "5.7.3";
  };
  byebug = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "01v0yrd0jm0gqgzfx7fmkhgdqr5zd12695jc2hkr4cc2kixir1zm";
      type = "gem";
    };
    version = "10.0.0";
  };
  cancancan = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1yd76mm5vnr24wc5p2mvmsp6bm6mb885hd851ffsy90b89rxrav5";
      type = "gem";
    };
    version = "2.1.3";
  };
  capybara = {
    dependencies = ["addressable" "mini_mime" "nokogiri" "rack" "rack-test" "xpath"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0yv77rnsjlvs8qpfn9n5vf1h6b9agxwhxw09gssbiw9zn9j20jh8";
      type = "gem";
    };
    version = "2.18.0";
  };
  climate_control = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0q11v0iabvr6rif0d025xh078ili5frrihlj0m04zfg7lgvagxji";
      type = "gem";
    };
    version = "0.2.0";
  };
  cliver = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "096f4rj7virwvqxhkavy0v55rax10r4jqf8cymbvn4n631948xc7";
      type = "gem";
    };
    version = "0.3.2";
  };
  cocaine = {
    dependencies = ["climate_control"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "01kk5xd7lspbkdvn6nyj0y51zhvia3z6r4nalbdcqw5fbsywwi7d";
      type = "gem";
    };
    version = "0.5.8";
  };
  codeclimate-test-reporter = {
    dependencies = ["simplecov"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0cgi6xcd739k5c4r1nmi8dx11hfb041w3jyvb1y39g1gbwd2vca9";
      type = "gem";
    };
    version = "1.0.7";
  };
  coffee-rails = {
    dependencies = ["coffee-script" "railties"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0jp81gjcid66ialk5n242y27p3payy0cz6c6i80ik02nx54mq2h8";
      type = "gem";
    };
    version = "4.2.2";
  };
  coffee-script = {
    dependencies = ["coffee-script-source" "execjs"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0rc7scyk7mnpfxqv5yy4y5q1hx3i7q3ahplcp4bq2g5r24g2izl2";
      type = "gem";
    };
    version = "2.4.1";
  };
  coffee-script-source = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1907v9q1zcqmmyqzhzych5l7qifgls2rlbnbhy5vzyr7i7yicaz1";
      type = "gem";
    };
    version = "1.12.2";
  };
  colored = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0b0x5jmsyi0z69bm6sij1k89z7h0laag3cb4mdn7zkl9qmxb90lx";
      type = "gem";
    };
    version = "1.2";
  };
  concurrent-ruby = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "183lszf5gx84kcpb779v6a2y0mx9sssy8dgppng1z9a505nj1qcf";
      type = "gem";
    };
    version = "1.0.5";
  };
  crack = {
    dependencies = ["safe_yaml"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0abb0fvgw00akyik1zxnq7yv391va148151qxdghnzngv66bl62k";
      type = "gem";
    };
    version = "0.4.3";
  };
  crass = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1czijxlagzpzwchr2ldrgfi7kywg08idjpq37ndcmwh4fmz72c4l";
      type = "gem";
    };
    version = "1.0.3";
  };
  css_parser = {
    dependencies = ["addressable"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0gwvf8mc8gnz4aizfijplv3594998h2j44ydakpzsdmkivs07v61";
      type = "gem";
    };
    version = "1.6.0";
  };
  custom_counter_cache = {
    dependencies = ["rails"];
    source = {
      fetchSubmodules = false;
      rev = "7a4ed2c70c6a00cbee468d81295bdb3d4a86f2a7";
      sha256 = "1gqawpl3c84036p7wx51632ibj8sn5mf6vm9az2vwwprn98xmqmr";
      type = "git";
      url = "git://github.com/loomio/custom_counter_cache.git";
    };
    version = "0.2.2";
  };
  database_cleaner = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0g84ixwfc7ajmjvgh31dbyyw54y5gbngd1hha00c6inw7zks8l9v";
      type = "gem";
    };
    version = "1.6.2";
  };
  delayed_job = {
    dependencies = ["activesupport"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0b0cb8rri8gwvvaq2wbbbhc9800yy79hxw76ykwvzrrcnyx7rwc7";
      type = "gem";
    };
    version = "4.1.4";
  };
  delayed_job_active_record = {
    dependencies = ["activerecord" "delayed_job"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0bf1ck0r9pmd5pqfjzkjhw0w2pzi8gdfdd2j2wc42s5h49qj4zwq";
      type = "gem";
    };
    version = "4.1.2";
  };
  derailed = {
    dependencies = ["derailed_benchmarks"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0vj2c3g3vw2bx8665adp0sd1pj8w4zx48mpyjrpndbx1ha0pip76";
      type = "gem";
    };
    version = "0.1.0";
  };
  derailed_benchmarks = {
    dependencies = ["benchmark-ips" "get_process_mem" "heapy" "memory_profiler" "rack" "rake" "thor"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0q2mjpdnhi12xp25qsxrlilysvh702ibhxi4bb31l1g6x2r9cqxk";
      type = "gem";
    };
    version = "1.3.2";
  };
  devise = {
    dependencies = ["bcrypt" "orm_adapter" "railties" "responders" "warden"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1rp6nbrgpm5xqppz3dri4z6dfmspi4124dkvy0sgnf3ck75lkn87";
      type = "gem";
    };
    version = "4.4.1";
  };
  devise-i18n = {
    dependencies = ["devise"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0psmr9z5awxybdkk4ayb7dfad9aa2kriqp9f8p9rp6mnd89vprvx";
      type = "gem";
    };
    version = "1.6.0";
  };
  diff-lcs = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "18w22bjz424gzafv6nzv98h0aqkwz3d9xhm7cbr1wfbyas8zayza";
      type = "gem";
    };
    version = "1.3";
  };
  discriminator = {
    dependencies = ["activerecord"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "059s73c1ipy5c19sz6gca46rdx5w2bbx73lk46mywg28qnckcc87";
      type = "gem";
    };
    version = "0.1.1";
  };
  docile = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0m8j31whq7bm5ljgmsrlfkiqvacrw6iz9wq10r3gwrv5785y8gjx";
      type = "gem";
    };
    version = "1.1.5";
  };
  doorkeeper = {
    dependencies = ["railties"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0r5rfvjjnlf9cn97cdrfw260zkg785k4197xqidgb35445k62mah";
      type = "gem";
    };
    version = "4.2.6";
  };
  doorkeeper-i18n = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0w4mdw1b3iv0r8f59fz44fgps0pffpsicar7l5rq8y1qqwc7da2h";
      type = "gem";
    };
    version = "4.0.0";
  };
  dotenv = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1pgzlvs0sswnqlgfm9gkz2hlhkc0zd3vnlp2vglb1wbgnx37pjjv";
      type = "gem";
    };
    version = "2.2.1";
  };
  dotenv-rails = {
    dependencies = ["dotenv" "railties"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1cci93p30y342wax65vsv9rg76cm392snrh8phjw6x363wl9z4ip";
      type = "gem";
    };
    version = "2.2.1";
  };
  errbase = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "05bd635cr8dv1yqhcy63k4qzpjw2k1zbcg8hipvb75cmpygr2bd2";
      type = "gem";
    };
    version = "0.0.3";
  };
  erubi = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1zkaqb8zv14azb2fa8w79d3mssdx86k9kg2m1bgc2k428y2zf8g9";
      type = "gem";
    };
    version = "1.7.0";
  };
  erubis = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1fj827xqjs91yqsydf0zmfyw9p4l2jz5yikg3mppz6d7fi8kyrb3";
      type = "gem";
    };
    version = "2.7.0";
  };
  excon = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1rxwlfs7dq4r3bi9avgn7j6bz4hq1a3hdlr9xwdiyp4dp4286xfc";
      type = "gem";
    };
    version = "0.60.0";
  };
  execjs = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1yz55sf2nd3l666ms6xr18sm2aggcvmb8qr3v53lr4rir32y1yp1";
      type = "gem";
    };
    version = "2.7.0";
  };
  factory_bot = {
    dependencies = ["activesupport"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0r975ba6y0mcy3aya099gpnjn5gf1h6fbw8f3smmjay5zvin3nwx";
      type = "gem";
    };
    version = "4.8.2";
  };
  factory_bot_rails = {
    dependencies = ["factory_bot" "railties"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0cdbp12ih2w77l331frv8gv6bv9dinn1663dy1jn0gb9ss1hwvs2";
      type = "gem";
    };
    version = "4.8.2";
  };
  faker = {
    dependencies = ["i18n"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "185461w6dqbn2a7rcpz8lrdnfv11jwqa8p46zaq5nc61bnwbkiii";
      type = "gem";
    };
    version = "1.8.7";
  };
  faraday = {
    dependencies = ["multipart-post"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1c3x3s8vb5nf7inyfvhdxwa4q3swmnacpxby6pish5fgmhws7zrr";
      type = "gem";
    };
    version = "0.14.0";
  };
  ffi = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0c2dl10pi6a30kcvx2s6p2v1wb4kbm48iv38kmz2ff600nirhpb8";
      type = "gem";
    };
    version = "1.9.21";
  };
  fog-aws = {
    dependencies = ["fog-core" "fog-json" "fog-xml" "ipaddress"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0ikhyb0vmgmq7sd22kd93rr1q63lcwpmgbhh84ifh3ghjjvf1v1x";
      type = "gem";
    };
    version = "2.0.0";
  };
  fog-core = {
    dependencies = ["builder" "excon" "formatador"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "02449kh2x3zj9xxszm02vy8zpbsrykvjrg5gj3kqcy2yizy2bhp3";
      type = "gem";
    };
    version = "1.45.0";
  };
  fog-json = {
    dependencies = ["fog-core" "multi_json"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0advkkdjajkym77r3c0bg2rlahl2akj0vl4p5r273k2qmi16n00r";
      type = "gem";
    };
    version = "1.0.2";
  };
  fog-xml = {
    dependencies = ["fog-core" "nokogiri"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "043lwdw2wsi6d55ifk0w3izi5l1d1h0alwyr3fixic7b94kc812n";
      type = "gem";
    };
    version = "0.1.3";
  };
  formatador = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1gc26phrwlmlqrmz4bagq1wd5b7g64avpx0ghxr9xdxcvmlii0l0";
      type = "gem";
    };
    version = "0.2.5";
  };
  formtastic = {
    dependencies = ["actionpack"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1grh06zzrxq3zr8fvg02ipallrjx849h59ck16rbpgn0n31i248a";
      type = "gem";
    };
    version = "3.1.5";
  };
  formtastic_i18n = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0l7z15jv7gfd75s89wbiz3i96cqkg0lgxvbij1j1dffk6qiyllvs";
      type = "gem";
    };
    version = "0.6.0";
  };
  friendly_id = {
    dependencies = ["activerecord"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1c8rykx1ilc7nxqmwv0svvsi4fkqpqq4vaaksx6ivds30j47yxs1";
      type = "gem";
    };
    version = "5.1.0";
  };
  gemrat = {
    dependencies = ["colored"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1agjcqapxrz0h85bqaswnxnxm46fn40l3d8f4a957cj387qx7r7y";
      type = "gem";
    };
    version = "0.4.6";
  };
  geocoder = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1wcnd7bvbsrz0chvh8hd421dldvjq13vj99jh9gg5dr714vkrd8l";
      type = "gem";
    };
    version = "1.4.5";
  };
  get_process_mem = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "10ydgnddqz8rxbw09flmird82fygx6apvsgw1njj40yw24ylbddx";
      type = "gem";
    };
    version = "0.2.1";
  };
  globalid = {
    dependencies = ["activesupport"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "02smrgdi11kziqi9zhnsy9i6yr2fnxrqlv3lllsvdjki3cd4is38";
      type = "gem";
    };
    version = "0.4.1";
  };
  gravtastic = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0kvk7p05pq0w8adyl8dc5g97vnf6l987rbpirxhjnh3wrz7ap67g";
      type = "gem";
    };
    version = "3.2.6";
  };
  griddler = {
    dependencies = ["htmlentities" "rails"];
    source = {
      fetchSubmodules = false;
      rev = "52cfe124f0edf588f0e9f84fbc762e464384f67c";
      sha256 = "1pk4dq01a6nq3f0xvi5skjxkc1425hcy0cff8p8ffbpdl845jlxh";
      type = "git";
      url = "git://github.com/loomio/griddler.git";
    };
    version = "1.3.1";
  };
  griddler-mailin = {
    dependencies = ["griddler"];
    source = {
      fetchSubmodules = false;
      rev = "5a1d1ea7612308b8d3890b1c6d7a51c5b485498c";
      sha256 = "1mi989bbabr65z6p4n7rl6z5kpj6wn3sx5cnd5y6vfjz60an5az2";
      type = "git";
      url = "git://github.com/loomio/griddler-mailin.git";
    };
    version = "0.0.1";
  };
  gyoku = {
    dependencies = ["builder"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1wn0sl14396g5lyvp8sjmcb1hw9rbyi89gxng91r7w4df4jwiidh";
      type = "gem";
    };
    version = "1.3.1";
  };
  haml = {
    dependencies = ["temple" "tilt"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1q0a9fvqh8kn6wm97fcks6qzbjd400bv8bx748w8v87m7p4klhac";
      type = "gem";
    };
    version = "5.0.4";
  };
  haml-rails = {
    dependencies = ["actionpack" "activesupport" "haml" "html2haml" "railties"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "05h8jibwpz7xram83i41xzn1x3n55cxs8j85zscql8wpb0yi414d";
      type = "gem";
    };
    version = "1.0.0";
  };
  has_scope = {
    dependencies = ["actionpack" "activesupport"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1kl2ac798nj3rvq96bnxxxm09ff0fyjwdkdapfm8fp2i92izr2rc";
      type = "gem";
    };
    version = "0.7.1";
  };
  has_secure_token = {
    dependencies = ["activerecord"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0dajd99mwwrhkifw895llnlpfrsdibq4zagfyxphqi7hrywz8ips";
      type = "gem";
    };
    version = "1.0.0";
  };
  hashdiff = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0yj5l2rw8i8jc725hbcpc4wks0qlaaimr3dpaqamfjkjkxl0hjp9";
      type = "gem";
    };
    version = "0.3.7";
  };
  heapy = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1pjcfv1gr84myjhqy3g6jlhwk7nwm66wyc7bl23726lxkmqzqx2y";
      type = "gem";
    };
    version = "0.1.3";
  };
  heroku-deflater = {
    dependencies = ["rack"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0cjgchrd1qc2x0gcxvydzqj2lnh613w66fql6d1bgabs5j193v6w";
      type = "gem";
    };
    version = "0.6.3";
  };
  html2haml = {
    dependencies = ["erubis" "haml" "nokogiri" "ruby_parser"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0d8rjd8g2ki5mlh9443kxw0cc62b1xwsz0kskpc02lcc666x7d53";
      type = "gem";
    };
    version = "2.2.0";
  };
  htmlentities = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1nkklqsn8ir8wizzlakncfv42i32wc0w9hxp00hvdlgjr7376nhj";
      type = "gem";
    };
    version = "4.3.4";
  };
  http_accept_language = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0d0nlfz9vm4jr1l6q0chx4rp2hrnrfbx3gadc1dz930lbbaz0hq0";
      type = "gem";
    };
    version = "2.1.1";
  };
  httparty = {
    dependencies = ["multi_xml"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1q42553gp8brkkrn97m7ah4yr6bqs7fsn8lg84yzx6dr6y02bj5i";
      type = "gem";
    };
    version = "0.15.7";
  };
  httpi = {
    dependencies = ["rack" "socksify"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "08fmf0grq4rzm0m3yw9icz5b8nr9i7bgj7k83prifs6f3is0m2jj";
      type = "gem";
    };
    version = "2.4.2";
  };
  i18n = {
    dependencies = ["concurrent-ruby"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "038qvz7kd3cfxk8bvagqhakx68pfbnmghpdkx7573wbf0maqp9a3";
      type = "gem";
    };
    version = "0.9.5";
  };
  icalendar = {
    source = {
      fetchSubmodules = false;
      rev = "97ed9d301448350de15da4ba3b2323bd685d358c";
      sha256 = "1yly5h0354hgkd4ymmv31cs2j8aqlgi6vys9xwhmnw2c96l882q0";
      type = "git";
      url = "git://github.com/icalendar/icalendar.git";
    };
    version = "2.4.1";
  };
  inherited_resources = {
    dependencies = ["actionpack" "has_scope" "railties" "responders"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1c2dwrc45wqna9sb4bvk508hmmix5v3k0yb1gikz1np5z82c45yg";
      type = "gem";
    };
    version = "1.8.0";
  };
  ipaddress = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1x86s0s11w202j6ka40jbmywkrx8fhq8xiy8mwvnkhllj57hqr45";
      type = "gem";
    };
    version = "0.8.3";
  };
  jquery-rails = {
    dependencies = ["rails-dom-testing" "railties" "thor"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "02ii77vwxc49f2lrkbdzww2168bp5nihwzakc9mqyrsbw394w7ki";
      type = "gem";
    };
    version = "4.3.1";
  };
  js_regex = {
    dependencies = ["regexp_parser"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "06882jlfhaj987hxais97kw7kxhf1rm22xl2i83s8ffd03w2sw4z";
      type = "gem";
    };
    version = "2.2.2";
  };
  json = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0qmj7fypgb9vag723w1a49qihxrcf5shzars106ynw2zk352gbv5";
      type = "gem";
    };
    version = "1.8.6";
  };
  kaminari = {
    dependencies = ["activesupport" "kaminari-actionview" "kaminari-activerecord" "kaminari-core"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1j27y5phifwpggspglmg8pmlf6n4jblxwziix9am42661c770jlm";
      type = "gem";
    };
    version = "1.1.1";
  };
  kaminari-actionview = {
    dependencies = ["actionview" "kaminari-core"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1386wshpy1ygbris0s7rv7lyzbs0v8dfqkzdwsrsgm9fd1ira640";
      type = "gem";
    };
    version = "1.1.1";
  };
  kaminari-activerecord = {
    dependencies = ["activerecord" "kaminari-core"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0q31ik5648xi2hpy61knnjd0m7rvs17i93gzwcbh3ccj1y24gv2x";
      type = "gem";
    };
    version = "1.1.1";
  };
  kaminari-core = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1cfjrhvidvgdwp9ffsm9d4c2s18k2zp3gnya3f41qb3fc6bc2q2w";
      type = "gem";
    };
    version = "1.1.1";
  };
  launchy = {
    dependencies = ["addressable"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "190lfbiy1vwxhbgn4nl4dcbzxvm049jwc158r2x7kq3g5khjrxa2";
      type = "gem";
    };
    version = "2.4.3";
  };
  loofah = {
    dependencies = ["crass" "nokogiri"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "00a6wyrbzlbfsc982agm516fcdivix4vf06d492hjm9mmpr88h8f";
      type = "gem";
    };
    version = "2.2.0";
  };
  macaddr = {
    dependencies = ["systemu"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1clii8mvhmh5lmnm95ljnjygyiyhdpja85c5vy487rhxn52scn0b";
      type = "gem";
    };
    version = "1.7.1";
  };
  mail = {
    dependencies = ["mini_mime"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "10dyifazss9mgdzdv08p47p344wmphp5pkh5i73s7c04ra8y6ahz";
      type = "gem";
    };
    version = "2.7.0";
  };
  memory_profiler = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1gp28vc8aixrij0bd8bv8jy15gcx3ww185jy63w5f52ansh37xfa";
      type = "gem";
    };
    version = "0.9.10";
  };
  method_source = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0xqj21j3vfq4ldia6i2akhn2qd84m0iqcnsl49kfpq3xk6x0dzgn";
      type = "gem";
    };
    version = "0.9.0";
  };
  mime-types = {
    dependencies = ["mime-types-data"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0087z9kbnlqhci7fxh9f6il63hj1k02icq2rs0c6cppmqchr753m";
      type = "gem";
    };
    version = "3.1";
  };
  mime-types-data = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "04my3746hwa4yvbx1ranhfaqkgf6vavi1kyijjnw8w3dy37vqhkm";
      type = "gem";
    };
    version = "3.2016.0521";
  };
  mimemagic = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "00ibc1mhvdfyfyl103xwb45621nwyqxf124cni5hyfhag0fn1c3q";
      type = "gem";
    };
    version = "0.3.2";
  };
  mini_mime = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1lwhlvjqaqfm6k3ms4v29sby9y7m518ylsqz2j74i740715yl5c8";
      type = "gem";
    };
    version = "1.0.0";
  };
  mini_portile2 = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "13d32jjadpjj6d2wdhkfpsmy68zjx90p49bgf8f7nkpz86r1fr11";
      type = "gem";
    };
    version = "2.3.0";
  };
  minitest = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0icglrhghgwdlnzzp4jf76b0mbc71s80njn5afyfjn4wqji8mqbq";
      type = "gem";
    };
    version = "5.11.3";
  };
  msgpack = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1ai0sfdv9jnr333fsvkn7a8vqvn0iwiw83yj603a3i68ds1x6di1";
      type = "gem";
    };
    version = "1.2.2";
  };
  multi_json = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1rl0qy4inf1mp8mybfk56dfga0mvx97zwpmq5xmiwl5r770171nv";
      type = "gem";
    };
    version = "1.13.1";
  };
  multi_xml = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0lmd4f401mvravi1i1yq7b2qjjli0yq7dfc4p1nj5nwajp7r6hyj";
      type = "gem";
    };
    version = "0.6.0";
  };
  multipart-post = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "09k0b3cybqilk1gwrwwain95rdypixb2q9w65gd44gfzsd84xi1x";
      type = "gem";
    };
    version = "2.0.0";
  };
  newrelic_rpm = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0dqzg2xiamqy424mwpyyf3p9cxzzk5ssrvp9jsrdd7nv8acazqmc";
      type = "gem";
    };
    version = "4.8.0.341";
  };
  nio4r = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0jjrj7vs29w6dfgsxq08226jfbi2j0x62lf4p9zmvyp19dj4z00a";
      type = "gem";
    };
    version = "2.2.0";
  };
  nokogiri = {
    dependencies = ["mini_portile2"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "05fm3xh462glvs0rwnfmc1spmgl4ljg2giifynbmwwqvl42zaaiq";
      type = "gem";
    };
    version = "1.8.2";
  };
  nori = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "066wc774a2zp4vrq3k7k8p0fhv30ymqmxma1jj7yg5735zls8agn";
      type = "gem";
    };
    version = "2.6.0";
  };
  oj = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0mw3faxzawa3lfvswl578lhb25hrj8xif7b7z5kgk0vfmzb8zcsm";
      type = "gem";
    };
    version = "3.4.0";
  };
  orm_adapter = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1fg9jpjlzf5y49qs9mlpdrgs5rpcyihq1s4k79nv9js0spjhnpda";
      type = "gem";
    };
    version = "0.5.0";
  };
  paper_trail = {
    dependencies = ["activerecord" "request_store"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0qys3fjpk7qyfgsna79yd7vmq8790b8kvql7fm0b5bfv44f2n1i0";
      type = "gem";
    };
    version = "8.1.2";
  };
  paperclip = {
    dependencies = ["activemodel" "activesupport" "cocaine" "mime-types" "mimemagic"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "15ad0baw3pcl7pxs6jhz7kl62dgvmcnpf4xaip2ays45pc3c7d2a";
      type = "gem";
    };
    version = "5.2.1";
  };
  pg = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "07dv4ma9xd75xpsnnwwg1yrpwpji7ydy0q1d9dl0yfqbzpidrw32";
      type = "gem";
    };
    version = "0.18.4";
  };
  poltergeist = {
    dependencies = ["capybara" "cliver" "websocket-driver"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0fn1fx5j78y76xrnzkw9wm0awya8cpnfrfg91glj9rpsijq83jzl";
      type = "gem";
    };
    version = "1.17.0";
  };
  polyamorous = {
    dependencies = ["activerecord"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "18jix0kj39hd5r1hdwcyh3gdrnqn33wynfqy6vq5lfikj72lj4kh";
      type = "gem";
    };
    version = "1.3.3";
  };
  premailer = {
    dependencies = ["addressable" "css_parser" "htmlentities"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1xrhmialxn5vlp1nmf40a4db9gji4h2wbzd7f43sz64z8lvrjj6h";
      type = "gem";
    };
    version = "1.11.1";
  };
  premailer-rails = {
    dependencies = ["actionmailer" "premailer"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0m4diq9fzbd7w4vfa2y9ymjw81phpypslc5v7y8js36pzmdjqhd3";
      type = "gem";
    };
    version = "1.10.1";
  };
  public_suffix = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1x5h1dh1i3gwc01jbg01rly2g6a1qwhynb1s8a30ic507z1nh09s";
      type = "gem";
    };
    version = "3.0.2";
  };
  puma = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0dvd3snbjmkz3y39hxf5qiqxjp5izscqa45a4as9d9q8gwqz31sv";
      type = "gem";
    };
    version = "3.11.2";
  };
  rack = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1mfriw2r2913dv8qf3p87n7yal3qfsrs478x2qz106v8vhmxa017";
      type = "gem";
    };
    version = "2.0.4";
  };
  rack-attack = {
    dependencies = ["rack"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1r1phk0anxfn9fy3izba3j53g0f6b4jvnrp8xkccfm62pqwgz352";
      type = "gem";
    };
    version = "5.0.1";
  };
  rack-test = {
    dependencies = ["rack"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0gv8sb6bxp6anqvqr53w10hs4xj8i39c0jajd0qd03lvjadgc926";
      type = "gem";
    };
    version = "0.8.2";
  };
  rack_session_access = {
    dependencies = ["builder" "rack"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "00jn5bglzf9vvmga78g5mwcxpp76bxx63bzr1p0fgprv08ggfbp1";
      type = "gem";
    };
    version = "0.1.1";
  };
  rails = {
    dependencies = ["actioncable" "actionmailer" "actionpack" "actionview" "activejob" "activemodel" "activerecord" "activesupport" "railties" "sprockets-rails"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0q8ml29bw9sy2z1zakrlbig9fdcyxad7i9k7aa3n0c1zqlgpgsgy";
      type = "gem";
    };
    version = "5.1.5";
  };
  rails-controller-testing = {
    dependencies = ["actionpack" "actionview" "activesupport"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "16kdkk73mhhs73iz3i1i0ryjm84dadiyh817b3nh8acdi490jyhy";
      type = "gem";
    };
    version = "1.0.2";
  };
  rails-dom-testing = {
    dependencies = ["activesupport" "nokogiri"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1lfq2a7kp2x64dzzi5p4cjcbiv62vxh9lyqk2f0rqq3fkzrw8h5i";
      type = "gem";
    };
    version = "2.0.3";
  };
  rails-html-sanitizer = {
    dependencies = ["loofah"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "138fd86kv073zqfx0xifm646w6bgw2lr8snk16lknrrfrss8xnm7";
      type = "gem";
    };
    version = "1.0.3";
  };
  rails_12factor = {
    dependencies = ["rails_serve_static_assets" "rails_stdout_logging"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1x8gj0d3j3a789nkfrkj98icx00bannblz81z84j29k6k79qi6zf";
      type = "gem";
    };
    version = "0.0.3";
  };
  rails_serve_static_assets = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1sc02fp9ad4qjfb9p450fz7rvck4all468kybkpi518qmxzg0fr0";
      type = "gem";
    };
    version = "0.0.5";
  };
  rails_stdout_logging = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1x0l90vkrr5mjdrfgq1hz9pz4d28225n0x5mk6apa2n3kj3mhwg5";
      type = "gem";
    };
    version = "0.0.5";
  };
  railties = {
    dependencies = ["actionpack" "activesupport" "method_source" "rake" "thor"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0hxa4lcvjf1g5yy21qavd8b8zknz62i7aykawpfd8yf2giqlg5zs";
      type = "gem";
    };
    version = "5.1.5";
  };
  rake = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "190p7cs8zdn07mjj6xwwsdna3g0r98zs4crz7jh2j2q5b0nbxgjf";
      type = "gem";
    };
    version = "12.3.0";
  };
  ransack = {
    dependencies = ["actionpack" "activerecord" "activesupport" "i18n" "polyamorous"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0rh3w5s88757agzp0xzd6ij9yyjmr283kzi6ph5b3fhzhsasgl12";
      type = "gem";
    };
    version = "1.8.7";
  };
  rb-fsevent = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1fbpmjypwxkb8r7y1kmhmyp6gawa4byw0yb3jc3dn9ly4ld9lizf";
      type = "gem";
    };
    version = "0.10.2";
  };
  rb-inotify = {
    dependencies = ["ffi"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0yfsgw5n7pkpyky6a9wkf1g9jafxb0ja7gz0qw0y14fd2jnzfh71";
      type = "gem";
    };
    version = "0.9.10";
  };
  redcarpet = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "04v85p0bnpf1c7w4n0yr03s35yimxh0idgdrrybl9y13zbw5kgvg";
      type = "gem";
    };
    version = "3.3.4";
  };
  redis = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1y1l2gm1n4i29vgmn37jh2bj4znncpraw1gymjny95hgxfm5wzwg";
      type = "gem";
    };
    version = "4.0.1";
  };
  redis-actionpack = {
    dependencies = ["actionpack" "redis-rack" "redis-store"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "15k41gz7nygd4yydk2yd25gghya1j7q6zifk4mdrra6bwnwjbm63";
      type = "gem";
    };
    version = "5.0.2";
  };
  redis-activesupport = {
    dependencies = ["activesupport" "redis-store"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0rq5dhrzc1l8c7f5gx9r7mvnsk5206dfwih3yv5si5rf42nx2ay5";
      type = "gem";
    };
    version = "5.0.4";
  };
  redis-rack = {
    dependencies = ["rack" "redis-store"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0px0wv8zripc6lrn3k0k61j6nlxda145q8sz50yvnig17wlk36gb";
      type = "gem";
    };
    version = "2.0.4";
  };
  redis-rails = {
    dependencies = ["redis-actionpack" "redis-activesupport" "redis-store"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0hjvkyaw5hgz7v6fgwdk8pb966z44h1gv8jarmb0gwhkqmjnsh40";
      type = "gem";
    };
    version = "5.0.2";
  };
  redis-store = {
    dependencies = ["redis"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "00yh8rhv91vxjlqs4ylic99m9npjxmgib2vjj8hgzk1174y6vcmq";
      type = "gem";
    };
    version = "1.4.1";
  };
  referer-parser = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0gminsi6cm47hxh823knnglnxvil099h25cwqp5hkp4k17ca69c3";
      type = "gem";
    };
    version = "0.3.0";
  };
  regexp_parser = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1375q2v74cccjh290d9x28fdircvy18v6h0ww7a8i66qhh1jf2pb";
      type = "gem";
    };
    version = "0.5.0";
  };
  request_store = {
    dependencies = ["rack"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1hmas4p0ylgl74a0w96llgp96alpdrk1jj967rndmsmfv6ilshpn";
      type = "gem";
    };
    version = "1.4.0";
  };
  responders = {
    dependencies = ["actionpack" "railties"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1rhdyyvvm26f2l3fgwdp6xasfl2y0whwgy766bhdwz697mf78zfn";
      type = "gem";
    };
    version = "2.4.0";
  };
  rinku = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "149r18w7wv8lc8nlb5a6rvm7m8gj7iydkvpjri6ypljplp2pq2f7";
      type = "gem";
    };
    version = "2.0.4";
  };
  rspec-activemodel-mocks = {
    dependencies = ["activemodel" "activesupport" "rspec-mocks"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1xn3ly7sxkxn9yzb0nq3843s8s2zyvayl9ng7qv0g2lb5dm6vddm";
      type = "gem";
    };
    version = "1.0.3";
  };
  rspec-collection_matchers = {
    dependencies = ["rspec-expectations"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "139qn3mlafwyl8d58hx8q9pafk19hbcgkygxf1a1y1h3714x048b";
      type = "gem";
    };
    version = "1.1.3";
  };
  rspec-core = {
    dependencies = ["rspec-support"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0zvjbymx3avxm3lf8v4gka3a862vnaxldmwvp6767bpy48nhnvjj";
      type = "gem";
    };
    version = "3.7.1";
  };
  rspec-expectations = {
    dependencies = ["diff-lcs" "rspec-support"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1fw06wm8jdj8k7wrb8xmzj0fr1wjyb0ya13x31hidnyblm41hmvy";
      type = "gem";
    };
    version = "3.7.0";
  };
  rspec-its = {
    dependencies = ["rspec-core" "rspec-expectations"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1pwphny5jawcm1hda3vs9pjv1cybaxy17dc1s75qd7drrvx697p3";
      type = "gem";
    };
    version = "1.2.0";
  };
  rspec-mocks = {
    dependencies = ["diff-lcs" "rspec-support"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0b02ya3qhqgmcywqv4570dlhav70r656f7dmvwg89whpkq1z1xr3";
      type = "gem";
    };
    version = "3.7.0";
  };
  rspec-rails = {
    dependencies = ["actionpack" "activesupport" "railties" "rspec-core" "rspec-expectations" "rspec-mocks" "rspec-support"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0cdcnbv5dppwy3b4jdp5a0wd9m07a8wlqwb9yazn8i7k1k2mwgvx";
      type = "gem";
    };
    version = "3.7.2";
  };
  rspec-support = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1nl30xb6jmcl0awhqp6jycl01wdssblifwy921phfml70rd9flj1";
      type = "gem";
    };
    version = "3.7.1";
  };
  ruby_parser = {
    dependencies = ["sexp_processor"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0mysmdyxhvyn6dhshfxyw762f9asr3kxw45idvw1bh6np31kk4j1";
      type = "gem";
    };
    version = "3.11.0";
  };
  s3_uploader = {
    dependencies = ["fog-aws" "mime-types"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "18fd4r25xmsdnrf37r8pyp01x8wwmkpk80kw9k05gmrs88waglws";
      type = "gem";
    };
    version = "0.2.3";
  };
  safe_yaml = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1hly915584hyi9q9vgd968x2nsi5yag9jyf5kq60lwzi5scr7094";
      type = "gem";
    };
    version = "1.0.4";
  };
  safely_block = {
    dependencies = ["errbase"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "11gblq0f6abq6sy7lz39k2nhv8f8dihf2rk566xkswqsvrjlszna";
      type = "gem";
    };
    version = "0.2.0";
  };
  sass = {
    dependencies = ["sass-listen"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "10401m2xlv6vaxfwzy4xxmk51ddcnkvwi918cw3jkki0qqdl7d8v";
      type = "gem";
    };
    version = "3.5.5";
  };
  sass-listen = {
    dependencies = ["rb-fsevent" "rb-inotify"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0xw3q46cmahkgyldid5hwyiwacp590zj2vmswlll68ryvmvcp7df";
      type = "gem";
    };
    version = "4.0.0";
  };
  sass-rails = {
    dependencies = ["railties" "sass" "sprockets" "sprockets-rails" "tilt"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1wa63sbsimrsf7nfm8h0m1wbsllkfxvd7naph5d1j6pbc555ma7s";
      type = "gem";
    };
    version = "5.0.7";
  };
  savon = {
    dependencies = ["akami" "builder" "gyoku" "httpi" "nokogiri" "nori" "uuid" "wasabi"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "041cl8mybnndnipi55yidcvij2v8zyzify3klmc87zh3x8ndarns";
      type = "gem";
    };
    version = "2.10.1";
  };
  sentry-raven = {
    dependencies = ["faraday"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0yf2gysjw6sy1xcp2jw35z9cp83pwx33lq0qyvaqbs969j4993r4";
      type = "gem";
    };
    version = "2.7.2";
  };
  sequenced = {
    dependencies = ["activerecord" "activesupport"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1w25dv3sbf7kk8mfy0bnlafakq5m07q2kfp0rl137l8iibdxf01k";
      type = "gem";
    };
    version = "2.0.0";
  };
  sexp_processor = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1v5mvr30npw6r9c0ng2642nwk6i3k9yj1f8wmccn47gb29vjklk3";
      type = "gem";
    };
    version = "4.10.1";
  };
  shoulda-matchers = {
    dependencies = ["activesupport"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1zvv94pqk5b5my3w1shdz7h34xf2ldhg5k4qfdpbwi2iy0j9zw2a";
      type = "gem";
    };
    version = "3.1.2";
  };
  simplecov = {
    dependencies = ["docile" "json" "simplecov-html"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0zzl7kykpgrs0srn16yglwyyr5d3f7vz0zcb2f5lgd9kkb4d40dj";
      type = "gem";
    };
    version = "0.15.1";
  };
  simplecov-html = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1lihraa4rgxk8wbfl77fy9sf0ypk31iivly8vl3w04srd7i0clzn";
      type = "gem";
    };
    version = "0.10.2";
  };
  skylight = {
    dependencies = ["activesupport"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "141n24ypad43af47x9ym17mhl6q751767gpml9vh8dhnyz9z2s4n";
      type = "gem";
    };
    version = "1.5.1";
  };
  snorlax = {
    dependencies = ["rails"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "076af1as6jb7kmpl61lajdlvgfiz5psn2r9lw3snlwn3pgpfwkbs";
      type = "gem";
    };
    version = "0.1.6";
  };
  socksify = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1fp4p8p4y713lh00rd31xymxnzkbhmg0d12ixbqs7lcaj2pcgcni";
      type = "gem";
    };
    version = "1.7.1";
  };
  spring = {
    dependencies = ["activesupport"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "168yz9c1fv21wc5i8q7n43b9nk33ivg3ws1fn6x0afgryz3ssx75";
      type = "gem";
    };
    version = "2.0.2";
  };
  spring-commands-rspec = {
    dependencies = ["spring"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0b0svpq3md1pjz5drpa5pxwg8nk48wrshq8lckim4x3nli7ya0k2";
      type = "gem";
    };
    version = "1.0.4";
  };
  sprockets = {
    dependencies = ["concurrent-ruby" "rack"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0sv3zk5hwxyjvg7iy9sggjc7k3mfxxif7w8p260rharfyib939ar";
      type = "gem";
    };
    version = "3.7.1";
  };
  sprockets-rails = {
    dependencies = ["actionpack" "activesupport" "sprockets"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0ab42pm8p5zxpv3sfraq45b9lj39cz9mrpdirm30vywzrwwkm5p1";
      type = "gem";
    };
    version = "3.2.1";
  };
  stackprof = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "15xshxim580hjf9rcf8hdf9gyfl8xp6rns31z1yfq6bgard828fp";
      type = "gem";
    };
    version = "0.2.11";
  };
  systemu = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0gmkbakhfci5wnmbfx5i54f25j9zsvbw858yg3jjhfs5n4ad1xq1";
      type = "gem";
    };
    version = "2.6.5";
  };
  temple = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "00nxf610nzi4n1i2lkby43nrnarvl89fcl6lg19406msr0k3ycmq";
      type = "gem";
    };
    version = "0.8.0";
  };
  thor = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0nmqpyj642sk4g16nkbq6pj856adpv91lp4krwhqkh2iw63aszdl";
      type = "gem";
    };
    version = "0.20.0";
  };
  thread_safe = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0nmhcgq6cgz44srylra07bmaw99f5271l0dpsvl5f75m44l0gmwy";
      type = "gem";
    };
    version = "0.3.6";
  };
  tilt = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0020mrgdf11q23hm1ddd6fv691l51vi10af00f137ilcdb2ycfra";
      type = "gem";
    };
    version = "2.0.8";
  };
  twitter-text = {
    dependencies = ["unf"];
    source = {
      fetchSubmodules = false;
      rev = "0931cb3782bf32023e7ff05282a46023718f42fe";
      sha256 = "1pwc79c56pdj92xh9hgxjxj2xxa7zpvl4s09h6g7a4d8fa3dd67i";
      type = "git";
      url = "git://github.com/loomio/twitter-text.git";
    };
    version = "1.14.7";
  };
  tzinfo = {
    dependencies = ["thread_safe"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1fjx9j327xpkkdlxwmkl3a8wqj7i4l4jwlrv3z13mg95z9wl253z";
      type = "gem";
    };
    version = "1.2.5";
  };
  uglifier = {
    dependencies = ["execjs"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "10yn0jlqz7svbn3ip51fkc76ag2v5jmnx0y7gg7sada8200xbw88";
      type = "gem";
    };
    version = "4.1.6";
  };
  unf = {
    dependencies = ["unf_ext"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0bh2cf73i2ffh4fcpdn9ir4mhq8zi50ik0zqa1braahzadx536a9";
      type = "gem";
    };
    version = "0.1.4";
  };
  unf_ext = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "06p1i6qhy34bpb8q8ms88y6f2kz86azwm098yvcc0nyqk9y729j1";
      type = "gem";
    };
    version = "0.0.7.5";
  };
  uniform_notifier = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1yblj2rhlabxiqkqn7v3mrk8rnkmvsp3l3mp6c3hrb08rxidssga";
      type = "gem";
    };
    version = "1.11.0";
  };
  user_agent_parser = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1342g8zcpjmkipq0imqjy1pqfsg6bfzjcm4dhldlf1dgldhdpb8r";
      type = "gem";
    };
    version = "2.4.1";
  };
  uuid = {
    dependencies = ["macaddr"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0gr2mxg27l380wpiy66mgv9wq02myj6m4gmp6c4g1vsbzkh0213v";
      type = "gem";
    };
    version = "2.3.8";
  };
  uuidtools = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0zjvq1jrrnzj69ylmz1xcr30skf9ymmvjmdwbvscncd7zkr8av5g";
      type = "gem";
    };
    version = "2.1.5";
  };
  warden = {
    dependencies = ["rack"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0va966lhpylcwbqb9n151kkihx30agh0a57mwjwdxyanll4s1q12";
      type = "gem";
    };
    version = "1.2.7";
  };
  wasabi = {
    dependencies = ["httpi" "nokogiri"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "09s4k25vmgcdddi96h3dp5r7748k7k7n7slmqm2zz2p2n15ja301";
      type = "gem";
    };
    version = "3.5.0";
  };
  webmock = {
    dependencies = ["addressable" "crack" "hashdiff"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0wsrrbvawcr198v4mhzy43br7i7l9d3av6sjq6if509qrj4y5x07";
      type = "gem";
    };
    version = "3.3.0";
  };
  websocket-driver = {
    dependencies = ["websocket-extensions"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1943442yllhldh9dbp374x2q39cxa49xrm28nb78b7mfbv3y195l";
      type = "gem";
    };
    version = "0.6.5";
  };
  websocket-extensions = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "034sdr7fd34yag5l6y156rkbhiqgmy395m231dwhlpcswhs6d270";
      type = "gem";
    };
    version = "0.1.3";
  };
  xpath = {
    dependencies = ["nokogiri"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "12xlddg1hpmxvdzlynrr3akwwaarz1xgdpmv7bhvh1xgzajkcidi";
      type = "gem";
    };
    version = "3.0.0";
  };
}