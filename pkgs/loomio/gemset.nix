{
  actioncable = {
    dependencies = ["actionpack" "nio4r" "websocket-driver"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "07r6hnh05db84yr9419mbhyzp20hr8yy9m50jxc2w91ghm2qnrrf";
      type = "gem";
    };
    version = "5.1.6";
  };
  actionmailer = {
    dependencies = ["actionpack" "actionview" "activejob" "mail" "rails-dom-testing"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1s9xcqfx97q4yva2zc4qzb567mwzhry6v3x3zc318aqhcrz31g7c";
      type = "gem";
    };
    version = "5.1.6";
  };
  actionpack = {
    dependencies = ["actionview" "activesupport" "rack" "rack-test" "rails-dom-testing" "rails-html-sanitizer"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0vz2ms80nqw21c304g3w2vkbs80gadzhi3mcwwym7smxccr37kcd";
      type = "gem";
    };
    version = "5.1.6";
  };
  actionview = {
    dependencies = ["activesupport" "builder" "erubi" "rails-dom-testing" "rails-html-sanitizer"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1kfxlz9v7b47pdyy1whb4zzhvaj8h4sp1ajhbih2ax1hkldyg081";
      type = "gem";
    };
    version = "5.1.6";
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
      sha256 = "0n781m1l7kidf6c47g8ixyw0zkvhwxn4spxay5rh8hgdynf0a26k";
      type = "gem";
    };
    version = "1.4.2";
  };
  activejob = {
    dependencies = ["activesupport" "globalid"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "02lssq8ps98mfg20dyhcpd16f9c0v4zzy7gfbb6ksbs06wrrd4d2";
      type = "gem";
    };
    version = "5.1.6";
  };
  activemodel = {
    dependencies = ["activesupport"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "10f8cpv4sl1w3m1qj8hl6sd2f1n7x91h45qaf57qr894ll22jgby";
      type = "gem";
    };
    version = "5.1.6";
  };
  activerecord = {
    dependencies = ["activemodel" "activesupport" "arel"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1iqkvxzx5bfp8rmlccww0cj1xr6iaxmn3hhbj1dv5j9c8mnm980x";
      type = "gem";
    };
    version = "5.1.6";
  };
  activerecord-import = {
    dependencies = ["activerecord"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1bxpbrcwc9k6khizwdikvfbhw9pcvs4sp3h4grpcww5k7bgpliz6";
      type = "gem";
    };
    version = "0.27.0";
  };
  activerecord-nulldb-adapter = {
    dependencies = ["activerecord"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "18fmafi17xrldj0wyhmsckrf6j9acj71q2m07wxs5ls09fbljr3a";
      type = "gem";
    };
    version = "0.3.9";
  };
  activesupport = {
    dependencies = ["concurrent-ruby" "i18n" "minitest" "tzinfo"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "08dm0mgmj31ggk7ib66wfagj4bgbr2jfl500bqb22x0szslz5lll";
      type = "gem";
    };
    version = "5.1.6";
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
    dependencies = ["actionmailer" "activerecord" "addressable" "nokogiri" "railties" "safely_block"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0mhak64cvang1zs43a12dl4gj3q3szb2kd4i0sg87kfkrh1lw551";
      type = "gem";
    };
    version = "0.5.2";
  };
  ahoy_matey = {
    dependencies = ["addressable" "browser" "device_detector" "geocoder" "railties" "referer-parser" "request_store" "safely_block" "user_agent_parser"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1njphx2rsxbyxj5jc2fy6wz5gyzrlqj8js6p1azv1rsx2h1d2dic";
      type = "gem";
    };
    version = "2.1.0";
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
      sha256 = "1k6s4gx6546yayrwghfwqp97p8xmwiycbr4qwwshw3zcpa8vjix0";
      type = "gem";
    };
    version = "9.3.1";
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
      sha256 = "0ysblqxkclmnhrd0kmb5mr8p38mbar633gdsb14b7dhkhgawgzfy";
      type = "gem";
    };
    version = "3.1.12";
  };
  benchmark-ips = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1w59c4qnwkjqwn7zyp9hshslbshna77vknmz43h0va5lxisd6ai2";
      type = "gem";
    };
    version = "2.7.2";
  };
  bootsnap = {
    dependencies = ["msgpack"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0g6r784lmjfhwi046w82phsk244byq9wkj1q3lddwxg9z559bmhy";
      type = "gem";
    };
    version = "1.3.2";
  };
  browser = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0sdx0ny34i6vqxdsc7sy9g0nafdbrw8kvvb5xh9m18x1bzpqk92f";
      type = "gem";
    };
    version = "2.5.3";
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
      sha256 = "0fhsq5r9xc3cb32zr21hnsb2zmwbkck7xjvds9ny4inhykrjg47m";
      type = "gem";
    };
    version = "5.9.0";
  };
  byebug = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "10znc1hjv8n686hhpl08f3m2g6h08a4b83nxblqwy2kqamkxcqf8";
      type = "gem";
    };
    version = "10.0.2";
  };
  cancancan = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "08qyj4cljwwwan1ssvv1nzfj7sbsy8lrn7f42mkfd6j75gskg2kb";
      type = "gem";
    };
    version = "2.3.0";
  };
  capybara = {
    dependencies = ["addressable" "mini_mime" "nokogiri" "rack" "rack-test" "regexp_parser" "xpath"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "10zj8syak12xd1kqywr35bkr2hkdjq18kij54x1ys8c26h6j4d0m";
      type = "gem";
    };
    version = "3.11.1";
  };
  character_set = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "114npdbw1ivyx4vnid8ncnjw4wnjcipf2lvihlg3ibbh7an0m9s9";
      type = "gem";
    };
    version = "1.1.2";
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
      sha256 = "18q9skp5pfq4jwbxzmw8q2rn4cpw6mf4561i2hsjcl1nxdag2jvb";
      type = "gem";
    };
    version = "1.1.3";
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
      sha256 = "0bpxzy6gjw9ggjynlxschbfsgmx8lv3zw1azkjvnb8b9i895dqfi";
      type = "gem";
    };
    version = "1.0.4";
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
      sha256 = "05i0nf2aj70m61y3fspypdkc6d1qgibf5kav05a71b5gjz0k7y5x";
      type = "gem";
    };
    version = "1.7.0";
  };
  delayed_job = {
    dependencies = ["activesupport"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0hjwdsb493qin1y81bby2gdj6gvxwa2rx5744jcwv20m500l39ac";
      type = "gem";
    };
    version = "4.1.5";
  };
  delayed_job_active_record = {
    dependencies = ["activerecord" "delayed_job"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1z7x32ibiazi76ygdijxs7x9fdv43m1lqd6rqnd15c214lrm9ww5";
      type = "gem";
    };
    version = "4.1.3";
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
      sha256 = "1c9djg1r2w461h97zmmdsdgnsrxqm4qfyp7gry9qxbav9skrplb8";
      type = "gem";
    };
    version = "1.3.5";
  };
  device_detector = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1rzrcb02m7h81zd4zfr4awvxflpwi6p1bfdxn16768qhpmd2vn29";
      type = "gem";
    };
    version = "1.0.1";
  };
  devise = {
    dependencies = ["bcrypt" "orm_adapter" "railties" "responders" "warden"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1vs8nibl568ghm6a7hbw6xgcv8zbm4gykprcxpnzi7bz5d4gvcjx";
      type = "gem";
    };
    version = "4.5.0";
  };
  devise-i18n = {
    dependencies = ["devise"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "12fh40qm92bvbvhjv9zfagvzq8rish96nxm0zkgwhwp447pibvd9";
      type = "gem";
    };
    version = "1.7.0";
  };
  diff-lcs = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "18w22bjz424gzafv6nzv98h0aqkwz3d9xhm7cbr1wfbyas8zayza";
      type = "gem";
    };
    version = "1.3";
  };
  discourse-diff = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "050832fg9y71ydi3nfr2ak17y2hkzwb6mc3k715mq99ryr7cg6k4";
      type = "gem";
    };
    version = "0.1.0";
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
      sha256 = "04d2izkna3ahfn6fwq4xrcafa715d3bbqczxm16fq40fqy87xn17";
      type = "gem";
    };
    version = "1.3.1";
  };
  doorkeeper = {
    dependencies = ["railties"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0568dl68ivns83w0cr9hskyd8xifbplfd0va0q04anb1xa7x783b";
      type = "gem";
    };
    version = "4.4.3";
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
      sha256 = "1va5y19f7l5jh53vz5vibz618lg8z93k5m2k70l25s9k46v2gfm3";
      type = "gem";
    };
    version = "2.5.0";
  };
  dotenv-rails = {
    dependencies = ["dotenv" "railties"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1vmk541bhb2mw0gfc1bg43jdilqspiggxzglnlr26rzsmvy2cgd2";
      type = "gem";
    };
    version = "2.5.0";
  };
  errbase = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "053jhrjjblc00skrmskbb9a71xnfhv45sdpbc041fzxy0d02q59n";
      type = "gem";
    };
    version = "0.1.1";
  };
  erubi = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0bws86na9k565raiz0kk61yy5pxxp0fmwyzpibdwjkq0xzx8q6q1";
      type = "gem";
    };
    version = "1.7.1";
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
      sha256 = "15l9w0938c19nxmrp09n75qpmm64k12xj69h47yvxzcxcpbgnkb2";
      type = "gem";
    };
    version = "0.62.0";
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
      sha256 = "13q1b7imb591068plg4ashgsqgzarvfjz6xxn3jk6klzikz5zhg1";
      type = "gem";
    };
    version = "4.11.1";
  };
  factory_bot_rails = {
    dependencies = ["factory_bot" "railties"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1pkmsmb8f313003ss9x93s90lf5pj1wazwfhhqgcxw4r2m5dam2z";
      type = "gem";
    };
    version = "4.11.1";
  };
  faker = {
    dependencies = ["i18n"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "01q7wrk5bl0c0qrvg2my3kl0mbfnj1jpd89mqm3fzy4ggbkdhh7i";
      type = "gem";
    };
    version = "1.9.1";
  };
  faraday = {
    dependencies = ["multipart-post"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "16hwxc8v0z6gkanckjhx0ffgqmzpc4ywz4dfhxpjlz2mbz8d5m52";
      type = "gem";
    };
    version = "0.15.3";
  };
  ffi = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0jpm2dis1j7zvvy3lg7axz9jml316zrn7s0j59vyq3qr127z0m7q";
      type = "gem";
    };
    version = "1.9.25";
  };
  fog-aws = {
    dependencies = ["fog-core" "fog-json" "fog-xml" "ipaddress"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1zprxg0spvkkri1jf40zg3rfr5h2gq6009d7l36lifpvhjn658cs";
      type = "gem";
    };
    version = "3.3.0";
  };
  fog-core = {
    dependencies = ["builder" "excon" "formatador" "mime-types"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1fsama04wlxhv537bm4b7rr4zzn0mvisy87m3qzv6f0mhlrq3zp8";
      type = "gem";
    };
    version = "2.1.2";
  };
  fog-json = {
    dependencies = ["fog-core" "multi_json"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1zj8llzc119zafbmfa4ai3z5s7c4vp9akfs0f9l2piyvcarmlkyx";
      type = "gem";
    };
    version = "1.2.0";
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
      sha256 = "1fm1zsfa48hhmd0n0hi2lwi5hbsvcnlyl8vpskf1ljnqxb0z4hqn";
      type = "gem";
    };
    version = "5.2.4";
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
      sha256 = "0y13xkz5pm1yg6fa757hzs9ryj8knpwawbksijg35c2l2whyqv9b";
      type = "gem";
    };
    version = "1.5.0";
  };
  get_process_mem = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1bvfjdign16r0zwm2rlfrq0sk1licvmlgbnlpnyckniv5r7i080g";
      type = "gem";
    };
    version = "0.2.3";
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
  google-cloud-core = {
    dependencies = ["google-cloud-env"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "01yisrl9jhikf7n7hnj79fm72rv3yf49nfryxby2mv06iyg19647";
      type = "gem";
    };
    version = "1.2.7";
  };
  google-cloud-env = {
    dependencies = ["faraday"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "038jcy9nm1liah5ywaxm5xx2adbd28y6p8fk2frgv63v80pj8mw4";
      type = "gem";
    };
    version = "1.0.5";
  };
  google-cloud-translate = {
    dependencies = ["faraday" "google-cloud-core" "googleauth"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "13fmhpw66pfsxfwk3pvli0nzwcf4zwrs0pn7hvq8irrkfpi9kjr2";
      type = "gem";
    };
    version = "1.2.4";
  };
  googleauth = {
    dependencies = ["faraday" "jwt" "memoist" "multi_json" "os" "signet"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1yj7j1rnyamxpn5ybgdgbiw89v9bq2r0h85s2y2jzvqanvm7iflq";
      type = "gem";
    };
    version = "0.6.7";
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
      sha256 = "14df3am60hmyadjz2wah1qny2l5as51gvlxd0nycygmiqbfa0kyg";
      type = "gem";
    };
    version = "0.7.2";
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
      sha256 = "1r9f38fpgjgaxskkwvsliijj6vfmgsff9pnranvvvzkdl67hk1hw";
      type = "gem";
    };
    version = "0.1.4";
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
    dependencies = ["mime-types" "multi_xml"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1xmm7pxmz3pblkdr76dg7qm5s60kpp3yvh46c2i0bn1dm0zgl730";
      type = "gem";
    };
    version = "0.16.3";
  };
  i18n = {
    dependencies = ["concurrent-ruby"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1gcp1m1p6dpasycfz2sj82ci9ggz7lsskz9c9q6gvfwxrl8y9dx7";
      type = "gem";
    };
    version = "1.1.1";
  };
  icalendar = {
    dependencies = ["ice_cube"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "039bwqkbi107psd6szrjm0vcm1mwnrcfpk414zk20nvjrs7aiyyb";
      type = "gem";
    };
    version = "2.5.1";
  };
  ice_cube = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1rzfydzgy6jppqvzzr76skfk07nmlszpcjzzn4wlzpsgmagmf0wq";
      type = "gem";
    };
    version = "0.16.3";
  };
  inherited_resources = {
    dependencies = ["actionpack" "has_scope" "railties" "responders"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "05d4009rbzy00rcy5yiicxlcq931awj5mxrlgzabzv05ghq15m3m";
      type = "gem";
    };
    version = "1.9.0";
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
      sha256 = "17201sb8ddwy4yprizmqabq1kfx3m9c53p0yqngn63m07jjcpnh8";
      type = "gem";
    };
    version = "4.3.3";
  };
  js_regex = {
    dependencies = ["character_set" "regexp_parser" "regexp_property_values"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0wi4h4f3knb0yp4zq2spks3dpmdzz9wa54d6xk88md0h4v2x33cq";
      type = "gem";
    };
    version = "3.1.1";
  };
  json = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "01v6jjpvh3gnq6sgllpfqahlgxzj50ailwhj9b3cd20hi2dx0vxp";
      type = "gem";
    };
    version = "2.1.0";
  };
  jwt = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1w0kaqrbl71cq9sbnixc20x5lqah3hs2i93xmhlfdg2y3by7yzky";
      type = "gem";
    };
    version = "2.1.0";
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
      sha256 = "1ccsid33xjajd0im2xv941aywi58z7ihwkvaf1w2bv89vn5bhsjg";
      type = "gem";
    };
    version = "2.2.3";
  };
  mail = {
    dependencies = ["mini_mime"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "00wwz6ys0502dpk8xprwcqfwyf3hmnx6lgxaiq6vj43mkx43sapc";
      type = "gem";
    };
    version = "2.7.1";
  };
  maxminddb = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0zlhqilyggiryywgswfi624bv10qnkm66hggmg79vvgv73j3p4sh";
      type = "gem";
    };
    version = "0.1.22";
  };
  memoist = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0pq8fhqh8w25qcw9v3vzfb0i6jp0k3949ahxc3wrwz2791dpbgbh";
      type = "gem";
    };
    version = "0.16.0";
  };
  memory_profiler = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0qir6bc2rw6lac6fsjhnspqyr01sh12d75dkd630qknjwvrrq8kj";
      type = "gem";
    };
    version = "0.9.12";
  };
  method_source = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1pviwzvdqd90gn6y7illcdd9adapw8fczml933p5vl739dkvl3lq";
      type = "gem";
    };
    version = "0.9.2";
  };
  mime-types = {
    dependencies = ["mime-types-data"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0fjxy1jm52ixpnv3vg9ld9pr9f35gy0jp66i1njhqjvmnvq0iwwk";
      type = "gem";
    };
    version = "3.2.2";
  };
  mime-types-data = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "07wvp0aw2gjm4njibb70as6rh5hi1zzri5vky1q6jx95h8l56idc";
      type = "gem";
    };
    version = "3.2018.0812";
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
      sha256 = "1q4pshq387lzv9m39jv32vwb8wrq3wc4jwgl4jk209r4l33v09d3";
      type = "gem";
    };
    version = "1.0.1";
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
      sha256 = "09xy1wc4wfbd1jdrzgxwmqjzfdfxbz0cqdszq2gv6rmc3gv1c864";
      type = "gem";
    };
    version = "1.2.4";
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
      sha256 = "0an0q43pjl0rhwpqxmiw6b02nq05g7xybx1s8np4ksq021hxblva";
      type = "gem";
    };
    version = "5.5.0.348";
  };
  nio4r = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1a41ca1kpdmrypjp9xbgvckpy8g26zxphkja9vk7j5wl4n8yvlyr";
      type = "gem";
    };
    version = "2.3.1";
  };
  nokogiri = {
    dependencies = ["mini_portile2"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0byyxrazkfm29ypcx5q4syrv126nvjnf7z6bqi01sqkv4llsi4qz";
      type = "gem";
    };
    version = "1.8.5";
  };
  oj = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1j5l4zi13w8axqpaw9aihhc6gyqf30p0a78rg9a8773igizrqk5j";
      type = "gem";
    };
    version = "3.7.4";
  };
  orm_adapter = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1fg9jpjlzf5y49qs9mlpdrgs5rpcyihq1s4k79nv9js0spjhnpda";
      type = "gem";
    };
    version = "0.5.0";
  };
  os = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1s401gvhqgs2r8hh43ia205mxsy1wc0ib4k76wzkdpspfcnfr1rk";
      type = "gem";
    };
    version = "1.0.0";
  };
  paper_trail = {
    dependencies = ["activerecord" "request_store"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "199wc1la22312fqmqb1hf0spc79r8d7wrmnzwlnfcirdxdjrnvcs";
      type = "gem";
    };
    version = "10.0.1";
  };
  paperclip = {
    dependencies = ["activemodel" "activesupport" "mime-types" "mimemagic" "terrapin"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1xk64cdcisj3ny2bsy0cqawkkxbzscrp4a8h3j84iafvfx1rg9zm";
      type = "gem";
    };
    version = "6.1.0";
  };
  parallel = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "01hj8v1qnyl5ndrs33g8ld8ibk0rbcqdpkpznr04gkbxd11pqn67";
      type = "gem";
    };
    version = "1.12.1";
  };
  parallel_tests = {
    dependencies = ["parallel"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1sqiwn2hsh97iv2fsfyfn1fkjn9wl4lnsvwmi9c1yqppv0qjm5qv";
      type = "gem";
    };
    version = "2.27.0";
  };
  pg = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1pnjw3rspdfjssxyf42jnbsdlgri8ylysimp0s28wxb93k6ff2qb";
      type = "gem";
    };
    version = "1.1.3";
  };
  poltergeist = {
    dependencies = ["capybara" "cliver" "websocket-driver"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0il80p97psmhs6scl0grq031gv7kws4ylvvd6zyr8xv91qadga95";
      type = "gem";
    };
    version = "1.18.1";
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
      sha256 = "1avh2bkhabicf1zxla8z6ig5192h3vdzli4d2y9wmxfwgh549lmx";
      type = "gem";
    };
    version = "1.10.2";
  };
  public_suffix = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "08q64b5br692dd3v0a9wq9q5dvycc6kmiqmjbdxkxbfizggsvx6l";
      type = "gem";
    };
    version = "3.0.3";
  };
  puma = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1k7dqxnq0dnf5rxkgs9rknclkn3ah7lsdrk6nrqxla8qzy31wliq";
      type = "gem";
    };
    version = "3.12.0";
  };
  rack = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1pcgv8dv4vkaczzlix8q3j68capwhk420cddzijwqgi2qb4lm1zm";
      type = "gem";
    };
    version = "2.0.6";
  };
  rack-attack = {
    dependencies = ["rack"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "11y6kw7hj2z25ba67www6qap7shj2bp6s43h57cn4yrid9kbsibs";
      type = "gem";
    };
    version = "5.4.2";
  };
  rack-test = {
    dependencies = ["rack"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0rh8h376mx71ci5yklnpqqn118z3bl67nnv5k801qaqn1zs62h8m";
      type = "gem";
    };
    version = "1.1.0";
  };
  rack_session_access = {
    dependencies = ["builder" "rack"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0swd35lg7qmqhc3pglvsanq2indnvw360m8qxfxwqabl0br9isq3";
      type = "gem";
    };
    version = "0.2.0";
  };
  rails = {
    dependencies = ["actioncable" "actionmailer" "actionpack" "actionview" "activejob" "activemodel" "activerecord" "activesupport" "railties" "sprockets-rails"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0lb07cbwgm371zyn9i6fyj9q8rmv89lacmyzrfvzxqqx2n3ilc5q";
      type = "gem";
    };
    version = "5.1.6";
  };
  rails-controller-testing = {
    dependencies = ["actionpack" "actionview" "activesupport"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0l1dab6v55r7vby3g23bxrm9bm6b0qkp28nb8n31wi9pl3a5p6x1";
      type = "gem";
    };
    version = "1.0.3";
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
      sha256 = "1gv7vr5d9g2xmgpjfq4nxsqr70r9pr042r9ycqqnfvw5cz9c7jwr";
      type = "gem";
    };
    version = "1.0.4";
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
      sha256 = "0ycy2gdaj0px1vfaghskvl6qkczwaigrli2zxn54w7zn1z29faj8";
      type = "gem";
    };
    version = "5.1.6";
  };
  rake = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1idi53jay34ba9j68c3mfr9wwkg3cd9qh0fn9cg42hv72c6q8dyg";
      type = "gem";
    };
    version = "12.3.1";
  };
  ransack = {
    dependencies = ["actionpack" "activerecord" "activesupport" "i18n"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0wqj23d49cvzniwfj8g0a749as5q2v5al1kvl1jw212s1nmimf0r";
      type = "gem";
    };
    version = "2.1.0";
  };
  rb-fsevent = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1lm1k7wpz69jx7jrc92w3ggczkjyjbfziq5mg62vjnxmzs383xx8";
      type = "gem";
    };
    version = "0.10.3";
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
      sha256 = "0h9qz2hik4s9knpmbwrzb3jcp3vc5vygp9ya8lcpl7f1l9khmcd7";
      type = "gem";
    };
    version = "3.4.0";
  };
  redis = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0m0z8kfqfbd1ln12zl1pzvplb978xnr78p4wwq8w8nk57gzsy08c";
      type = "gem";
    };
    version = "4.0.3";
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
      sha256 = "0y1df62gpqgy0yrlmgl05rp4kb0xvn0kylprhv1k32bs33dgpv62";
      type = "gem";
    };
    version = "5.0.7";
  };
  redis-rack = {
    dependencies = ["rack" "redis-store"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "03xgdmq4fh187aqlh8z05idbxrmgddcarlb8x1kw4wjfcsf5afqi";
      type = "gem";
    };
    version = "2.0.5";
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
      sha256 = "1mrcnjgkbmx1zf569mly82agdizqayjvnp2k6055k1iy07in3j8b";
      type = "gem";
    };
    version = "1.6.0";
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
      sha256 = "18g5jyg3blsdrz3mc8d87bms6qqn6gcdh1nvdhvgbjdpk9pw21dq";
      type = "gem";
    };
    version = "1.3.0";
  };
  regexp_property_values = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "05ka0bkhghs9b9pv6q443k8y1c5xalmm0vylj9zd450ksncxj1yr";
      type = "gem";
    };
    version = "0.3.4";
  };
  request_store = {
    dependencies = ["rack"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1963330z03fk382fi8y231ygcbnh86m91dqlp5rh1mwy9ihzzl6d";
      type = "gem";
    };
    version = "1.4.1";
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
      sha256 = "1n848zldby8agx3409c06qix90zs73ik0wsz8w9xpjqa81nxjcap";
      type = "gem";
    };
    version = "1.1.0";
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
      sha256 = "1p1s5bnbqp3sxk67y0fh0x884jjym527r0vgmhbm81w7aq6b7l4p";
      type = "gem";
    };
    version = "3.8.0";
  };
  rspec-expectations = {
    dependencies = ["diff-lcs" "rspec-support"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "18l21hy1zdc2pgc2yb17k3n2al1khpfr0z6pijlm852iz6vj0dkm";
      type = "gem";
    };
    version = "3.8.2";
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
      sha256 = "06y508cjqycb4yfhxmb3nxn0v9xqf17qbd46l1dh4xhncinr4fyp";
      type = "gem";
    };
    version = "3.8.0";
  };
  rspec-rails = {
    dependencies = ["actionpack" "activesupport" "railties" "rspec-core" "rspec-expectations" "rspec-mocks" "rspec-support"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0sqj5da2kc937j5jb18jcf0hrmmzwgj7pk62j0q3qndhc2kvx88p";
      type = "gem";
    };
    version = "3.8.1";
  };
  rspec-support = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0p3m7drixrlhvj2zpc38b11x145bvm311x6f33jjcxmvcm0wq609";
      type = "gem";
    };
    version = "3.8.0";
  };
  ruby-saml = {
    dependencies = ["nokogiri"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "12f3mmyds4y8f7535p79xzx0wnp7rj02h1fp2x3j2hy5vrkmz2k4";
      type = "gem";
    };
    version = "1.9.0";
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
      sha256 = "0y3idgmr2bv2zh3x5ykmm7adi7jz951lh9jrflsh5pn3xsnfwihd";
      type = "gem";
    };
    version = "0.2.1";
  };
  sass = {
    dependencies = ["sass-listen"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1phs6hnd8b95m7n5wbh5bsclmwaajd1sqlgw9fmj72bfqldbmcqa";
      type = "gem";
    };
    version = "3.7.2";
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
  sentry-raven = {
    dependencies = ["faraday"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0l0bci35amy7pqv81djyjcx023q4qylmq8a2zbx14zh6ifzib4f4";
      type = "gem";
    };
    version = "2.7.4";
  };
  sequenced = {
    dependencies = ["activerecord" "activesupport"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "028qwvkcdkxzq334iii8ligq58aqnw8isb3psw0mi65rwfgznfpa";
      type = "gem";
    };
    version = "3.1.1";
  };
  sexp_processor = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1vnmphfrd86694x5k7rxddbhbvv5rqbglsc34kfryy4jqhbzz42c";
      type = "gem";
    };
    version = "4.11.0";
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
  signet = {
    dependencies = ["addressable" "faraday" "jwt" "multi_json"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1f5d3bz5bjc4b0r2jmqd15qf07lgsqkgd25f0h46jihrf9l5fsi4";
      type = "gem";
    };
    version = "0.11.0";
  };
  simplecov = {
    dependencies = ["docile" "json" "simplecov-html"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1sfyfgf7zrp2n42v7rswkqgk3bbwk1bnsphm24y7laxv3f8z0947";
      type = "gem";
    };
    version = "0.16.1";
  };
  simplecov-html = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1lihraa4rgxk8wbfl77fy9sf0ypk31iivly8vl3w04srd7i0clzn";
      type = "gem";
    };
    version = "0.10.2";
  };
  snorlax = {
    dependencies = ["rails"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "02k5npd1rzcl1h2xrsg5g48hw0bj3fsm1ilw8070mnpw69772k1n";
      type = "gem";
    };
    version = "0.1.8";
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
      sha256 = "182jw5a0fbqah5w9jancvfmjbk88h8bxdbwnl4d3q809rpxdg8ay";
      type = "gem";
    };
    version = "3.7.2";
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
      sha256 = "1v7mkl4ng2is5h0glivhcjjkkj2shq1qzx9sg9shw9nn8xvg7i4w";
      type = "gem";
    };
    version = "0.2.12";
  };
  temple = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "00nxf610nzi4n1i2lkby43nrnarvl89fcl6lg19406msr0k3ycmq";
      type = "gem";
    };
    version = "0.8.0";
  };
  terrapin = {
    dependencies = ["climate_control"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0p18f05r0c5s70571gqig3z2ym74wx79s6rd45sprp207bqskzn9";
      type = "gem";
    };
    version = "0.6.0";
  };
  thor = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "1yhrnp9x8qcy5vc7g438amd5j9sw83ih7c30dr6g6slgw9zj3g29";
      type = "gem";
    };
    version = "0.20.3";
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
      sha256 = "0xb32ygg8sdyqi7y0gda5rinx1y76n4wf7vj8ifb4n44q3gkb7gw";
      type = "gem";
    };
    version = "4.1.20";
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
      sha256 = "0mb0pq99zm17qnz2czmad5b3z0ivzkf6493afj3n550kd56z18s3";
      type = "gem";
    };
    version = "1.12.1";
  };
  user_agent_parser = {
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "0rksdm42ga4cl7pmnd347nyizb46fqla2snj5z266ykjsybj1hxb";
      type = "gem";
    };
    version = "2.5.0";
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
      sha256 = "1fr9n9i9r82xb6i61fdw4xgc7zjv7fsdrr4k0njchy87iw9fl454";
      type = "gem";
    };
    version = "1.2.8";
  };
  webmock = {
    dependencies = ["addressable" "crack" "hashdiff"];
    source = {
      remotes = ["http://rubygems.org"];
      sha256 = "03994dxs4xayvkxqp01dd1ivhg4xxx7z35f7cxw7y2mwj3xn24ib";
      type = "gem";
    };
    version = "3.4.2";
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
      sha256 = "0bh8lk9hvlpn7vmi6h4hkcwjzvs2y0cmkk3yjjdr8fxvj6fsgzbd";
      type = "gem";
    };
    version = "3.2.0";
  };
}