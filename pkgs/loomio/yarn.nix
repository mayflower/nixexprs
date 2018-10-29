{fetchurl, linkFarm, fetchgit, runCommandNoCC, gnutar}: rec {
  offline_cache = linkFarm "offline" packages;
  packages = [

    {
      name = "_types_node___node_6.0.95.tgz";
      path = fetchurl {
        name = "_types_node___node_6.0.95.tgz";
        url  = "https://registry.yarnpkg.com/@types/node/-/node-6.0.95.tgz";
        sha1 = "0d027612a77c55b84497ff90a4a7d597e5ac0fab";
      };
    }

    {
      name = "_types_q___q_0.0.32.tgz";
      path = fetchurl {
        name = "_types_q___q_0.0.32.tgz";
        url  = "https://registry.yarnpkg.com/@types/q/-/q-0.0.32.tgz";
        sha1 = "bd284e57c84f1325da702babfc82a5328190c0c5";
      };
    }

    {
      name = "_types_selenium_webdriver___selenium_webdriver_2.53.43.tgz";
      path = fetchurl {
        name = "_types_selenium_webdriver___selenium_webdriver_2.53.43.tgz";
        url  = "https://registry.yarnpkg.com/@types/selenium-webdriver/-/selenium-webdriver-2.53.43.tgz";
        sha1 = "2de3d718819bc20165754c4a59afb7e9833f6707";
      };
    }

    {
      name = "JSONStream___JSONStream_1.3.2.tgz";
      path = fetchurl {
        name = "JSONStream___JSONStream_1.3.2.tgz";
        url  = "https://registry.yarnpkg.com/JSONStream/-/JSONStream-1.3.2.tgz";
        sha1 = "c102371b6ec3a7cf3b847ca00c20bb0fce4c6dea";
      };
    }

    {
      name = "abbrev___abbrev_1.1.1.tgz";
      path = fetchurl {
        name = "abbrev___abbrev_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/abbrev/-/abbrev-1.1.1.tgz";
        sha1 = "f8f2c887ad10bf67f634f005b6987fed3179aac8";
      };
    }

    {
      name = "acorn___acorn_1.2.2.tgz";
      path = fetchurl {
        name = "acorn___acorn_1.2.2.tgz";
        url  = "https://registry.yarnpkg.com/acorn/-/acorn-1.2.2.tgz";
        sha1 = "c8ce27de0acc76d896d2b1fad3df588d9e82f014";
      };
    }

    {
      name = "acorn___acorn_4.0.13.tgz";
      path = fetchurl {
        name = "acorn___acorn_4.0.13.tgz";
        url  = "https://registry.yarnpkg.com/acorn/-/acorn-4.0.13.tgz";
        sha1 = "105495ae5361d697bd195c825192e1ad7f253787";
      };
    }

    {
      name = "acorn___acorn_5.3.0.tgz";
      path = fetchurl {
        name = "acorn___acorn_5.3.0.tgz";
        url  = "https://registry.yarnpkg.com/acorn/-/acorn-5.3.0.tgz";
        sha1 = "7446d39459c54fb49a80e6ee6478149b940ec822";
      };
    }

    {
      name = "acorn___acorn_5.2.1.tgz";
      path = fetchurl {
        name = "acorn___acorn_5.2.1.tgz";
        url  = "https://registry.yarnpkg.com/acorn/-/acorn-5.2.1.tgz";
        sha1 = "317ac7821826c22c702d66189ab8359675f135d7";
      };
    }

    {
      name = "acorn___acorn_2.6.4.tgz";
      path = fetchurl {
        name = "acorn___acorn_2.6.4.tgz";
        url  = "https://registry.yarnpkg.com/acorn/-/acorn-2.6.4.tgz";
        sha1 = "eb1f45b4a43fa31d03701a5ec46f3b52673e90ee";
      };
    }

    {
      name = "actioncable___actioncable_5.1.4.tgz";
      path = fetchurl {
        name = "actioncable___actioncable_5.1.4.tgz";
        url  = "https://registry.yarnpkg.com/actioncable/-/actioncable-5.1.4.tgz";
        sha1 = "f1751f0316b3b3530ef278bf44257efe996c4f92";
      };
    }

    {
      name = "add_stream___add_stream_1.0.0.tgz";
      path = fetchurl {
        name = "add_stream___add_stream_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/add-stream/-/add-stream-1.0.0.tgz";
        sha1 = "6a7990437ca736d5e1288db92bd3266d5f5cb2aa";
      };
    }

    {
      name = "adm_zip___adm_zip_0.4.4.tgz";
      path = fetchurl {
        name = "adm_zip___adm_zip_0.4.4.tgz";
        url  = "https://registry.yarnpkg.com/adm-zip/-/adm-zip-0.4.4.tgz";
        sha1 = "a61ed5ae6905c3aea58b3a657d25033091052736";
      };
    }

    {
      name = "adm_zip___adm_zip_0.4.7.tgz";
      path = fetchurl {
        name = "adm_zip___adm_zip_0.4.7.tgz";
        url  = "https://registry.yarnpkg.com/adm-zip/-/adm-zip-0.4.7.tgz";
        sha1 = "8606c2cbf1c426ce8c8ec00174447fd49b6eafc1";
      };
    }

    {
      name = "agent_base___agent_base_2.1.1.tgz";
      path = fetchurl {
        name = "agent_base___agent_base_2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/agent-base/-/agent-base-2.1.1.tgz";
        sha1 = "d6de10d5af6132d5bd692427d46fc538539094c7";
      };
    }

    {
      name = "ajv___ajv_4.11.8.tgz";
      path = fetchurl {
        name = "ajv___ajv_4.11.8.tgz";
        url  = "https://registry.yarnpkg.com/ajv/-/ajv-4.11.8.tgz";
        sha1 = "82ffb02b29e662ae53bdc20af15947706739c536";
      };
    }

    {
      name = "ajv___ajv_5.5.2.tgz";
      path = fetchurl {
        name = "ajv___ajv_5.5.2.tgz";
        url  = "https://registry.yarnpkg.com/ajv/-/ajv-5.5.2.tgz";
        sha1 = "73b5eeca3fab653e3d3f9422b341ad42205dc965";
      };
    }

    {
      name = "align_text___align_text_0.1.4.tgz";
      path = fetchurl {
        name = "align_text___align_text_0.1.4.tgz";
        url  = "https://registry.yarnpkg.com/align-text/-/align-text-0.1.4.tgz";
        sha1 = "0cd90a561093f35d0a99256c22b7069433fad117";
      };
    }

    {
      name = "alphanum_sort___alphanum_sort_1.0.2.tgz";
      path = fetchurl {
        name = "alphanum_sort___alphanum_sort_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/alphanum-sort/-/alphanum-sort-1.0.2.tgz";
        sha1 = "97a1119649b211ad33691d9f9f486a8ec9fbe0a3";
      };
    }

    {
      name = "alter___alter_0.2.0.tgz";
      path = fetchurl {
        name = "alter___alter_0.2.0.tgz";
        url  = "https://registry.yarnpkg.com/alter/-/alter-0.2.0.tgz";
        sha1 = "c7588808617572034aae62480af26b1d4d1cb3cd";
      };
    }

    {
      name = "amdefine___amdefine_1.0.1.tgz";
      path = fetchurl {
        name = "amdefine___amdefine_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/amdefine/-/amdefine-1.0.1.tgz";
        sha1 = "4a5282ac164729e93619bcfd3ad151f817ce91f5";
      };
    }

    {
      name = "angular_animate___angular_animate_1.4.1.tgz";
      path = fetchurl {
        name = "angular_animate___angular_animate_1.4.1.tgz";
        url  = "https://registry.yarnpkg.com/angular-animate/-/angular-animate-1.4.1.tgz";
        sha1 = "efee776c182beb77bac8981408c7163d96d78d7d";
      };
    }

    {
      name = "angular_aria___angular_aria_1.4.1.tgz";
      path = fetchurl {
        name = "angular_aria___angular_aria_1.4.1.tgz";
        url  = "https://registry.yarnpkg.com/angular-aria/-/angular-aria-1.4.1.tgz";
        sha1 = "8eee2751b674d47cc4e559a1b7e73f593fc4fb9d";
      };
    }

    {
      name = "angular_clipboard___angular_clipboard_1.6.2.tgz";
      path = fetchurl {
        name = "angular_clipboard___angular_clipboard_1.6.2.tgz";
        url  = "https://registry.yarnpkg.com/angular-clipboard/-/angular-clipboard-1.6.2.tgz";
        sha1 = "4708e5a1dc94f3940ab89861ea1e19b26754154f";
      };
    }

    {
      name = "angular_elastic___angular_elastic_2.5.1.tgz";
      path = fetchurl {
        name = "angular_elastic___angular_elastic_2.5.1.tgz";
        url  = "https://registry.yarnpkg.com/angular-elastic/-/angular-elastic-2.5.1.tgz";
        sha1 = "e938ab1bd8c76415b8ca6514b15fe3593a5df535";
      };
    }

    {
      name = "angular_gravatar___angular_gravatar_0.4.2.tgz";
      path = fetchurl {
        name = "angular_gravatar___angular_gravatar_0.4.2.tgz";
        url  = "https://registry.yarnpkg.com/angular-gravatar/-/angular-gravatar-0.4.2.tgz";
        sha1 = "91f0a18600b1e16b938d947474a889053ac33f97";
      };
    }

    {
      name = "angular_inview___angular_inview_2.1.0.tgz";
      path = fetchurl {
        name = "angular_inview___angular_inview_2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/angular-inview/-/angular-inview-2.1.0.tgz";
        sha1 = "9e8615b89f26f80565aaef706a04a9c667c7d785";
      };
    }

    {
      name = "angular_material___angular_material_1.1.7.tgz";
      path = fetchurl {
        name = "angular_material___angular_material_1.1.7.tgz";
        url  = "https://registry.yarnpkg.com/angular-material/-/angular-material-1.1.7.tgz";
        sha1 = "b3ebe28bc884495285932fb9cf4f58ed6ce6f4ab";
      };
    }

    {
      name = "angular_messages___angular_messages_1.6.7.tgz";
      path = fetchurl {
        name = "angular_messages___angular_messages_1.6.7.tgz";
        url  = "https://registry.yarnpkg.com/angular-messages/-/angular-messages-1.6.7.tgz";
        sha1 = "b82943d442929d787547814b394f3481bd36f7e0";
      };
    }

    {
      name = "angular_mocks___angular_mocks_1.6.7.tgz";
      path = fetchurl {
        name = "angular_mocks___angular_mocks_1.6.7.tgz";
        url  = "https://registry.yarnpkg.com/angular-mocks/-/angular-mocks-1.6.7.tgz";
        sha1 = "85bf45a2537eac59fc6f4cf319846102e8000e65";
      };
    }

    {
      name = "angular_recaptcha___angular_recaptcha_4.1.0.tgz";
      path = fetchurl {
        name = "angular_recaptcha___angular_recaptcha_4.1.0.tgz";
        url  = "https://registry.yarnpkg.com/angular-recaptcha/-/angular-recaptcha-4.1.0.tgz";
        sha1 = "ca5de30a8f020e73d517b9097059ad8851a29847";
      };
    }

    {
      name = "angular_route___angular_route_1.6.7.tgz";
      path = fetchurl {
        name = "angular_route___angular_route_1.6.7.tgz";
        url  = "https://registry.yarnpkg.com/angular-route/-/angular-route-1.6.7.tgz";
        sha1 = "020970d93d8b2ce4ca6aff0e0d7922579543cbcf";
      };
    }

    {
      name = "angular_sanitize___angular_sanitize_1.4.14.tgz";
      path = fetchurl {
        name = "angular_sanitize___angular_sanitize_1.4.14.tgz";
        url  = "https://registry.yarnpkg.com/angular-sanitize/-/angular-sanitize-1.4.14.tgz";
        sha1 = "778c4e24941fa982d86cf7ebac3e613fa5d414fc";
      };
    }

    {
      name = "angular_scroll___angular_scroll_0.6.5.tgz";
      path = fetchurl {
        name = "angular_scroll___angular_scroll_0.6.5.tgz";
        url  = "https://registry.yarnpkg.com/angular-scroll/-/angular-scroll-0.6.5.tgz";
        sha1 = "2c5bbd9e4f72315b0f73146f857fd559252f941d";
      };
    }

    {
      name = "angular_sortable_view___angular_sortable_view_0.0.15.tgz";
      path = fetchurl {
        name = "angular_sortable_view___angular_sortable_view_0.0.15.tgz";
        url  = "https://registry.yarnpkg.com/angular-sortable-view/-/angular-sortable-view-0.0.15.tgz";
        sha1 = "e8463df909db83d641b028f0773a10d50292874f";
      };
    }

    {
      name = "angular_translate_loader_url___angular_translate_loader_url_2.16.0.tgz";
      path = fetchurl {
        name = "angular_translate_loader_url___angular_translate_loader_url_2.16.0.tgz";
        url  = "https://registry.yarnpkg.com/angular-translate-loader-url/-/angular-translate-loader-url-2.16.0.tgz";
        sha1 = "dde8efdd5a5f26ec566d8aaafdba2ce9b1dc7df2";
      };
    }

    {
      name = "angular_translate___angular_translate_2.15.2.tgz";
      path = fetchurl {
        name = "angular_translate___angular_translate_2.15.2.tgz";
        url  = "https://registry.yarnpkg.com/angular-translate/-/angular-translate-2.15.2.tgz";
        sha1 = "f9a3c2b8d5daeb7d76c9e2c01ff3c3d57fe12b90";
      };
    }

    {
      name = "angular_translate___angular_translate_2.16.0.tgz";
      path = fetchurl {
        name = "angular_translate___angular_translate_2.16.0.tgz";
        url  = "https://registry.yarnpkg.com/angular-translate/-/angular-translate-2.16.0.tgz";
        sha1 = "6b7f84657d6534d25878cc55e6a2a06f7607299f";
      };
    }

    {
      name = "angular___angular_1.4.1.tgz";
      path = fetchurl {
        name = "angular___angular_1.4.1.tgz";
        url  = "https://registry.yarnpkg.com/angular/-/angular-1.4.1.tgz";
        sha1 = "21af170852707c732560aad3ec18e90ddf7c8f26";
      };
    }

    {
      name = "angular___angular_1.6.7.tgz";
      path = fetchurl {
        name = "angular___angular_1.6.7.tgz";
        url  = "https://registry.yarnpkg.com/angular/-/angular-1.6.7.tgz";
        sha1 = "0f89837dae1776b01ccb1fa2096db0d9373d9897";
      };
    }

    {
      name = "angular___angular_1.6.8.tgz";
      path = fetchurl {
        name = "angular___angular_1.6.8.tgz";
        url  = "https://registry.yarnpkg.com/angular/-/angular-1.6.8.tgz";
        sha1 = "5be378a58be91a5489e78b59c4518cd9fd273ffb";
      };
    }

    {
      name = "angulartics_google_tag_manager___angulartics_google_tag_manager_0.0.1.tgz";
      path = fetchurl {
        name = "angulartics_google_tag_manager___angulartics_google_tag_manager_0.0.1.tgz";
        url  = "https://registry.yarnpkg.com/angulartics-google-tag-manager/-/angulartics-google-tag-manager-0.0.1.tgz";
        sha1 = "59e8e4a9db5d85693b7cdec81a215136b04118e9";
      };
    }

    {
      name = "angulartics___angulartics_1.1.2.tgz";
      path = fetchurl {
        name = "angulartics___angulartics_1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/angulartics/-/angulartics-1.1.2.tgz";
        sha1 = "58fb242cebafd40a10111a3dacf87579d7cebbd0";
      };
    }

    {
      name = "ansi_gray___ansi_gray_0.1.1.tgz";
      path = fetchurl {
        name = "ansi_gray___ansi_gray_0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/ansi-gray/-/ansi-gray-0.1.1.tgz";
        sha1 = "2962cf54ec9792c48510a3deb524436861ef7251";
      };
    }

    {
      name = "ansi_regex___ansi_regex_0.2.1.tgz";
      path = fetchurl {
        name = "ansi_regex___ansi_regex_0.2.1.tgz";
        url  = "https://registry.yarnpkg.com/ansi-regex/-/ansi-regex-0.2.1.tgz";
        sha1 = "0d8e946967a3d8143f93e24e298525fc1b2235f9";
      };
    }

    {
      name = "ansi_regex___ansi_regex_2.1.1.tgz";
      path = fetchurl {
        name = "ansi_regex___ansi_regex_2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/ansi-regex/-/ansi-regex-2.1.1.tgz";
        sha1 = "c3b33ab5ee360d86e0e628f0468ae7ef27d654df";
      };
    }

    {
      name = "ansi_regex___ansi_regex_3.0.0.tgz";
      path = fetchurl {
        name = "ansi_regex___ansi_regex_3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/ansi-regex/-/ansi-regex-3.0.0.tgz";
        sha1 = "ed0317c322064f79466c02966bddb605ab37d998";
      };
    }

    {
      name = "ansi_styles___ansi_styles_2.0.1.tgz";
      path = fetchurl {
        name = "ansi_styles___ansi_styles_2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/ansi-styles/-/ansi-styles-2.0.1.tgz";
        sha1 = "b033f57f93e2d28adeb8bc11138fa13da0fd20a3";
      };
    }

    {
      name = "ansi_styles___ansi_styles_1.1.0.tgz";
      path = fetchurl {
        name = "ansi_styles___ansi_styles_1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/ansi-styles/-/ansi-styles-1.1.0.tgz";
        sha1 = "eaecbf66cd706882760b2f4691582b8f55d7a7de";
      };
    }

    {
      name = "ansi_styles___ansi_styles_2.2.1.tgz";
      path = fetchurl {
        name = "ansi_styles___ansi_styles_2.2.1.tgz";
        url  = "https://registry.yarnpkg.com/ansi-styles/-/ansi-styles-2.2.1.tgz";
        sha1 = "b432dd3358b634cf75e1e4664368240533c1ddbe";
      };
    }

    {
      name = "ansi_styles___ansi_styles_3.2.0.tgz";
      path = fetchurl {
        name = "ansi_styles___ansi_styles_3.2.0.tgz";
        url  = "https://registry.yarnpkg.com/ansi-styles/-/ansi-styles-3.2.0.tgz";
        sha1 = "c159b8d5be0f9e5a6f346dab94f16ce022161b88";
      };
    }

    {
      name = "ansi_wrap___ansi_wrap_0.1.0.tgz";
      path = fetchurl {
        name = "ansi_wrap___ansi_wrap_0.1.0.tgz";
        url  = "https://registry.yarnpkg.com/ansi-wrap/-/ansi-wrap-0.1.0.tgz";
        sha1 = "a82250ddb0015e9a27ca82e82ea603bbfa45efaf";
      };
    }

    {
      name = "anymatch___anymatch_1.3.2.tgz";
      path = fetchurl {
        name = "anymatch___anymatch_1.3.2.tgz";
        url  = "https://registry.yarnpkg.com/anymatch/-/anymatch-1.3.2.tgz";
        sha1 = "553dcb8f91e3c889845dfdba34c77721b90b9d7a";
      };
    }

    {
      name = "aproba___aproba_1.2.0.tgz";
      path = fetchurl {
        name = "aproba___aproba_1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/aproba/-/aproba-1.2.0.tgz";
        sha1 = "6802e6264efd18c790a1b0d517f0f2627bf2c94a";
      };
    }

    {
      name = "archy___archy_1.0.0.tgz";
      path = fetchurl {
        name = "archy___archy_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/archy/-/archy-1.0.0.tgz";
        sha1 = "f9c8c13757cc1dd7bc379ac77b2c62a5c2868c40";
      };
    }

    {
      name = "are_we_there_yet___are_we_there_yet_1.1.4.tgz";
      path = fetchurl {
        name = "are_we_there_yet___are_we_there_yet_1.1.4.tgz";
        url  = "https://registry.yarnpkg.com/are-we-there-yet/-/are-we-there-yet-1.1.4.tgz";
        sha1 = "bb5dca382bb94f05e15194373d16fd3ba1ca110d";
      };
    }

    {
      name = "argparse___argparse_1.0.9.tgz";
      path = fetchurl {
        name = "argparse___argparse_1.0.9.tgz";
        url  = "https://registry.yarnpkg.com/argparse/-/argparse-1.0.9.tgz";
        sha1 = "73d83bc263f86e97f8cc4f6bae1b0e90a7d22c86";
      };
    }

    {
      name = "argparse___argparse_0.1.16.tgz";
      path = fetchurl {
        name = "argparse___argparse_0.1.16.tgz";
        url  = "https://registry.yarnpkg.com/argparse/-/argparse-0.1.16.tgz";
        sha1 = "cfd01e0fbba3d6caed049fbd758d40f65196f57c";
      };
    }

    {
      name = "arr_diff___arr_diff_2.0.0.tgz";
      path = fetchurl {
        name = "arr_diff___arr_diff_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/arr-diff/-/arr-diff-2.0.0.tgz";
        sha1 = "8f3b827f955a8bd669697e4a4256ac3ceae356cf";
      };
    }

    {
      name = "arr_diff___arr_diff_4.0.0.tgz";
      path = fetchurl {
        name = "arr_diff___arr_diff_4.0.0.tgz";
        url  = "https://registry.yarnpkg.com/arr-diff/-/arr-diff-4.0.0.tgz";
        sha1 = "d6461074febfec71e7e15235761a329a5dc7c520";
      };
    }

    {
      name = "arr_flatten___arr_flatten_1.1.0.tgz";
      path = fetchurl {
        name = "arr_flatten___arr_flatten_1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/arr-flatten/-/arr-flatten-1.1.0.tgz";
        sha1 = "36048bbff4e7b47e136644316c99669ea5ae91f1";
      };
    }

    {
      name = "arr_union___arr_union_3.1.0.tgz";
      path = fetchurl {
        name = "arr_union___arr_union_3.1.0.tgz";
        url  = "https://registry.yarnpkg.com/arr-union/-/arr-union-3.1.0.tgz";
        sha1 = "e39b09aea9def866a8f206e288af63919bae39c4";
      };
    }

    {
      name = "array_differ___array_differ_1.0.0.tgz";
      path = fetchurl {
        name = "array_differ___array_differ_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/array-differ/-/array-differ-1.0.0.tgz";
        sha1 = "eff52e3758249d33be402b8bb8e564bb2b5d4031";
      };
    }

    {
      name = "array_each___array_each_1.0.1.tgz";
      path = fetchurl {
        name = "array_each___array_each_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/array-each/-/array-each-1.0.1.tgz";
        sha1 = "a794af0c05ab1752846ee753a1f211a05ba0c44f";
      };
    }

    {
      name = "array_filter___array_filter_0.0.1.tgz";
      path = fetchurl {
        name = "array_filter___array_filter_0.0.1.tgz";
        url  = "https://registry.yarnpkg.com/array-filter/-/array-filter-0.0.1.tgz";
        sha1 = "7da8cf2e26628ed732803581fd21f67cacd2eeec";
      };
    }

    {
      name = "array_find_index___array_find_index_1.0.2.tgz";
      path = fetchurl {
        name = "array_find_index___array_find_index_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/array-find-index/-/array-find-index-1.0.2.tgz";
        sha1 = "df010aa1287e164bbda6f9723b0a96a1ec4187a1";
      };
    }

    {
      name = "array_map___array_map_0.0.0.tgz";
      path = fetchurl {
        name = "array_map___array_map_0.0.0.tgz";
        url  = "https://registry.yarnpkg.com/array-map/-/array-map-0.0.0.tgz";
        sha1 = "88a2bab73d1cf7bcd5c1b118a003f66f665fa662";
      };
    }

    {
      name = "array_reduce___array_reduce_0.0.0.tgz";
      path = fetchurl {
        name = "array_reduce___array_reduce_0.0.0.tgz";
        url  = "https://registry.yarnpkg.com/array-reduce/-/array-reduce-0.0.0.tgz";
        sha1 = "173899d3ffd1c7d9383e4479525dbe278cab5f2b";
      };
    }

    {
      name = "array_slice___array_slice_1.1.0.tgz";
      path = fetchurl {
        name = "array_slice___array_slice_1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/array-slice/-/array-slice-1.1.0.tgz";
        sha1 = "e368ea15f89bc7069f7ffb89aec3a6c7d4ac22d4";
      };
    }

    {
      name = "array_union___array_union_1.0.2.tgz";
      path = fetchurl {
        name = "array_union___array_union_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/array-union/-/array-union-1.0.2.tgz";
        sha1 = "9a34410e4f4e3da23dea375be5be70f24778ec39";
      };
    }

    {
      name = "array_uniq___array_uniq_1.0.3.tgz";
      path = fetchurl {
        name = "array_uniq___array_uniq_1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/array-uniq/-/array-uniq-1.0.3.tgz";
        sha1 = "af6ac877a25cc7f74e058894753858dfdb24fdb6";
      };
    }

    {
      name = "array_unique___array_unique_0.2.1.tgz";
      path = fetchurl {
        name = "array_unique___array_unique_0.2.1.tgz";
        url  = "https://registry.yarnpkg.com/array-unique/-/array-unique-0.2.1.tgz";
        sha1 = "a1d97ccafcbc2625cc70fadceb36a50c58b01a53";
      };
    }

    {
      name = "array_unique___array_unique_0.3.2.tgz";
      path = fetchurl {
        name = "array_unique___array_unique_0.3.2.tgz";
        url  = "https://registry.yarnpkg.com/array-unique/-/array-unique-0.3.2.tgz";
        sha1 = "a894b75d4bc4f6cd679ef3244a9fd8f46ae2d428";
      };
    }

    {
      name = "arrify___arrify_1.0.1.tgz";
      path = fetchurl {
        name = "arrify___arrify_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/arrify/-/arrify-1.0.1.tgz";
        sha1 = "898508da2226f380df904728456849c1501a4b0d";
      };
    }

    {
      name = "asn1.js___asn1.js_4.9.2.tgz";
      path = fetchurl {
        name = "asn1.js___asn1.js_4.9.2.tgz";
        url  = "https://registry.yarnpkg.com/asn1.js/-/asn1.js-4.9.2.tgz";
        sha1 = "8117ef4f7ed87cd8f89044b5bff97ac243a16c9a";
      };
    }

    {
      name = "asn1___asn1_0.2.3.tgz";
      path = fetchurl {
        name = "asn1___asn1_0.2.3.tgz";
        url  = "https://registry.yarnpkg.com/asn1/-/asn1-0.2.3.tgz";
        sha1 = "dac8787713c9966849fc8180777ebe9c1ddf3b86";
      };
    }

    {
      name = "assert_plus___assert_plus_1.0.0.tgz";
      path = fetchurl {
        name = "assert_plus___assert_plus_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/assert-plus/-/assert-plus-1.0.0.tgz";
        sha1 = "f12e0f3c5d77b0b1cdd9146942e4e96c1e4dd525";
      };
    }

    {
      name = "assert_plus___assert_plus_0.2.0.tgz";
      path = fetchurl {
        name = "assert_plus___assert_plus_0.2.0.tgz";
        url  = "https://registry.yarnpkg.com/assert-plus/-/assert-plus-0.2.0.tgz";
        sha1 = "d74e1b87e7affc0db8aadb7021f3fe48101ab234";
      };
    }

    {
      name = "assert___assert_1.4.1.tgz";
      path = fetchurl {
        name = "assert___assert_1.4.1.tgz";
        url  = "https://registry.yarnpkg.com/assert/-/assert-1.4.1.tgz";
        sha1 = "99912d591836b5a6f5b345c0f07eefc08fc65d91";
      };
    }

    {
      name = "assertion_error___assertion_error_1.0.0.tgz";
      path = fetchurl {
        name = "assertion_error___assertion_error_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/assertion-error/-/assertion-error-1.0.0.tgz";
        sha1 = "c7f85438fdd466bc7ca16ab90c81513797a5d23b";
      };
    }

    {
      name = "assign_symbols___assign_symbols_1.0.0.tgz";
      path = fetchurl {
        name = "assign_symbols___assign_symbols_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/assign-symbols/-/assign-symbols-1.0.0.tgz";
        sha1 = "59667f41fadd4f20ccbc2bb96b8d4f7f78ec0367";
      };
    }

    {
      name = "ast_types___ast_types_0.10.1.tgz";
      path = fetchurl {
        name = "ast_types___ast_types_0.10.1.tgz";
        url  = "https://registry.yarnpkg.com/ast-types/-/ast-types-0.10.1.tgz";
        sha1 = "f52fca9715579a14f841d67d7f8d25432ab6a3dd";
      };
    }

    {
      name = "ast_types___ast_types_0.5.7.tgz";
      path = fetchurl {
        name = "ast_types___ast_types_0.5.7.tgz";
        url  = "https://registry.yarnpkg.com/ast-types/-/ast-types-0.5.7.tgz";
        sha1 = "f6caa9c21b77a5c6201b1570a2cdd63363e3d314";
      };
    }

    {
      name = "astw___astw_2.2.0.tgz";
      path = fetchurl {
        name = "astw___astw_2.2.0.tgz";
        url  = "https://registry.yarnpkg.com/astw/-/astw-2.2.0.tgz";
        sha1 = "7bd41784d32493987aeb239b6b4e1c57a873b917";
      };
    }

    {
      name = "async_each___async_each_1.0.1.tgz";
      path = fetchurl {
        name = "async_each___async_each_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/async-each/-/async-each-1.0.1.tgz";
        sha1 = "19d386a1d9edc6e7c1c85d388aedbcc56d33602d";
      };
    }

    {
      name = "async_foreach___async_foreach_0.1.3.tgz";
      path = fetchurl {
        name = "async_foreach___async_foreach_0.1.3.tgz";
        url  = "https://registry.yarnpkg.com/async-foreach/-/async-foreach-0.1.3.tgz";
        sha1 = "36121f845c0578172de419a97dbeb1d16ec34542";
      };
    }

    {
      name = "async___async_0.9.2.tgz";
      path = fetchurl {
        name = "async___async_0.9.2.tgz";
        url  = "https://registry.yarnpkg.com/async/-/async-0.9.2.tgz";
        sha1 = "aea74d5e61c1f899613bf64bda66d4c78f2fd17d";
      };
    }

    {
      name = "async___async_2.6.0.tgz";
      path = fetchurl {
        name = "async___async_2.6.0.tgz";
        url  = "https://registry.yarnpkg.com/async/-/async-2.6.0.tgz";
        sha1 = "61a29abb6fcc026fea77e56d1c6ec53a795951f4";
      };
    }

    {
      name = "async___async_0.2.10.tgz";
      path = fetchurl {
        name = "async___async_0.2.10.tgz";
        url  = "https://registry.yarnpkg.com/async/-/async-0.2.10.tgz";
        sha1 = "b6bbe0b0674b9d719708ca38de8c237cb526c3d1";
      };
    }

    {
      name = "asynckit___asynckit_0.4.0.tgz";
      path = fetchurl {
        name = "asynckit___asynckit_0.4.0.tgz";
        url  = "https://registry.yarnpkg.com/asynckit/-/asynckit-0.4.0.tgz";
        sha1 = "c79ed97f7f34cb8f2ba1bc9790bcc366474b4b79";
      };
    }

    {
      name = "atob___atob_2.0.3.tgz";
      path = fetchurl {
        name = "atob___atob_2.0.3.tgz";
        url  = "https://registry.yarnpkg.com/atob/-/atob-2.0.3.tgz";
        sha1 = "19c7a760473774468f20b2d2d03372ad7d4cbf5d";
      };
    }

    {
      name = "autoprefixer___autoprefixer_6.7.7.tgz";
      path = fetchurl {
        name = "autoprefixer___autoprefixer_6.7.7.tgz";
        url  = "https://registry.yarnpkg.com/autoprefixer/-/autoprefixer-6.7.7.tgz";
        sha1 = "1dbd1c835658e35ce3f9984099db00585c782014";
      };
    }

    {
      name = "autoprefixer___autoprefixer_7.2.3.tgz";
      path = fetchurl {
        name = "autoprefixer___autoprefixer_7.2.3.tgz";
        url  = "https://registry.yarnpkg.com/autoprefixer/-/autoprefixer-7.2.3.tgz";
        sha1 = "c2841e38b7940c2d0a9bbffd72c75f33637854f8";
      };
    }

    {
      name = "aws_sign2___aws_sign2_0.6.0.tgz";
      path = fetchurl {
        name = "aws_sign2___aws_sign2_0.6.0.tgz";
        url  = "https://registry.yarnpkg.com/aws-sign2/-/aws-sign2-0.6.0.tgz";
        sha1 = "14342dd38dbcc94d0e5b87d763cd63612c0e794f";
      };
    }

    {
      name = "aws_sign2___aws_sign2_0.7.0.tgz";
      path = fetchurl {
        name = "aws_sign2___aws_sign2_0.7.0.tgz";
        url  = "https://registry.yarnpkg.com/aws-sign2/-/aws-sign2-0.7.0.tgz";
        sha1 = "b46e890934a9591f2d2f6f86d7e6a9f1b3fe76a8";
      };
    }

    {
      name = "aws4___aws4_1.6.0.tgz";
      path = fetchurl {
        name = "aws4___aws4_1.6.0.tgz";
        url  = "https://registry.yarnpkg.com/aws4/-/aws4-1.6.0.tgz";
        sha1 = "83ef5ca860b2b32e4a0deedee8c771b9db57471e";
      };
    }

    {
      name = "balanced_match___balanced_match_0.4.2.tgz";
      path = fetchurl {
        name = "balanced_match___balanced_match_0.4.2.tgz";
        url  = "https://registry.yarnpkg.com/balanced-match/-/balanced-match-0.4.2.tgz";
        sha1 = "cb3f3e3c732dc0f01ee70b403f302e61d7709838";
      };
    }

    {
      name = "balanced_match___balanced_match_1.0.0.tgz";
      path = fetchurl {
        name = "balanced_match___balanced_match_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/balanced-match/-/balanced-match-1.0.0.tgz";
        sha1 = "89b4d199ab2bee49de164ea02b89ce462d71b767";
      };
    }

    {
      name = "base64_js___base64_js_1.2.1.tgz";
      path = fetchurl {
        name = "base64_js___base64_js_1.2.1.tgz";
        url  = "https://registry.yarnpkg.com/base64-js/-/base64-js-1.2.1.tgz";
        sha1 = "a91947da1f4a516ea38e5b4ec0ec3773675e0886";
      };
    }

    {
      name = "base___base_0.11.2.tgz";
      path = fetchurl {
        name = "base___base_0.11.2.tgz";
        url  = "https://registry.yarnpkg.com/base/-/base-0.11.2.tgz";
        sha1 = "7bde5ced145b6d551a90db87f83c558b4eb48a8f";
      };
    }

    {
      name = "bcrypt_pbkdf___bcrypt_pbkdf_1.0.1.tgz";
      path = fetchurl {
        name = "bcrypt_pbkdf___bcrypt_pbkdf_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/bcrypt-pbkdf/-/bcrypt-pbkdf-1.0.1.tgz";
        sha1 = "63bc5dcb61331b92bc05fd528953c33462a06f8d";
      };
    }

    {
      name = "beeper___beeper_1.1.1.tgz";
      path = fetchurl {
        name = "beeper___beeper_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/beeper/-/beeper-1.1.1.tgz";
        sha1 = "e6d5ea8c5dad001304a70b22638447f69cb2f809";
      };
    }

    {
      name = "binary_extensions___binary_extensions_1.11.0.tgz";
      path = fetchurl {
        name = "binary_extensions___binary_extensions_1.11.0.tgz";
        url  = "https://registry.yarnpkg.com/binary-extensions/-/binary-extensions-1.11.0.tgz";
        sha1 = "46aa1751fb6a2f93ee5e689bb1087d4b14c6c205";
      };
    }

    {
      name = "binaryextensions___binaryextensions_1.0.1.tgz";
      path = fetchurl {
        name = "binaryextensions___binaryextensions_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/binaryextensions/-/binaryextensions-1.0.1.tgz";
        sha1 = "1e637488b35b58bda5f4774bf96a5212a8c90755";
      };
    }

    {
      name = "bl___bl_1.2.1.tgz";
      path = fetchurl {
        name = "bl___bl_1.2.1.tgz";
        url  = "https://registry.yarnpkg.com/bl/-/bl-1.2.1.tgz";
        sha1 = "cac328f7bee45730d404b692203fcb590e172d5e";
      };
    }

    {
      name = "block_stream___block_stream_0.0.9.tgz";
      path = fetchurl {
        name = "block_stream___block_stream_0.0.9.tgz";
        url  = "https://registry.yarnpkg.com/block-stream/-/block-stream-0.0.9.tgz";
        sha1 = "13ebfe778a03205cfe03751481ebb4b3300c126a";
      };
    }

    {
      name = "blocking_proxy___blocking_proxy_1.0.1.tgz";
      path = fetchurl {
        name = "blocking_proxy___blocking_proxy_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/blocking-proxy/-/blocking-proxy-1.0.1.tgz";
        sha1 = "81d6fd1fe13a4c0d6957df7f91b75e98dac40cb2";
      };
    }

    {
      name = "bluebird___bluebird_3.4.6.tgz";
      path = fetchurl {
        name = "bluebird___bluebird_3.4.6.tgz";
        url  = "https://registry.yarnpkg.com/bluebird/-/bluebird-3.4.6.tgz";
        sha1 = "01da8d821d87813d158967e743d5fe6c62cf8c0f";
      };
    }

    {
      name = "bn.js___bn.js_4.11.8.tgz";
      path = fetchurl {
        name = "bn.js___bn.js_4.11.8.tgz";
        url  = "https://registry.yarnpkg.com/bn.js/-/bn.js-4.11.8.tgz";
        sha1 = "2cde09eb5ee341f484746bb0309b3253b1b1442f";
      };
    }

    {
      name = "bole___bole_2.0.0.tgz";
      path = fetchurl {
        name = "bole___bole_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/bole/-/bole-2.0.0.tgz";
        sha1 = "d8aa1c690467bfb4fe11b874acb2e8387e382615";
      };
    }

    {
      name = "boom___boom_2.10.1.tgz";
      path = fetchurl {
        name = "boom___boom_2.10.1.tgz";
        url  = "https://registry.yarnpkg.com/boom/-/boom-2.10.1.tgz";
        sha1 = "39c8918ceff5799f83f9492a848f625add0c766f";
      };
    }

    {
      name = "boom___boom_4.3.1.tgz";
      path = fetchurl {
        name = "boom___boom_4.3.1.tgz";
        url  = "https://registry.yarnpkg.com/boom/-/boom-4.3.1.tgz";
        sha1 = "4f8a3005cb4a7e3889f749030fd25b96e01d2e31";
      };
    }

    {
      name = "boom___boom_5.2.0.tgz";
      path = fetchurl {
        name = "boom___boom_5.2.0.tgz";
        url  = "https://registry.yarnpkg.com/boom/-/boom-5.2.0.tgz";
        sha1 = "5dd9da6ee3a5f302077436290cb717d3f4a54e02";
      };
    }

    {
      name = "bowser___bowser_1.9.0.tgz";
      path = fetchurl {
        name = "bowser___bowser_1.9.0.tgz";
        url  = "https://registry.yarnpkg.com/bowser/-/bowser-1.9.0.tgz";
        sha1 = "c5015128dcf155b4e3d11d1ab46b7a4b6ee695b8";
      };
    }

    {
      name = "brace_expansion___brace_expansion_1.1.8.tgz";
      path = fetchurl {
        name = "brace_expansion___brace_expansion_1.1.8.tgz";
        url  = "https://registry.yarnpkg.com/brace-expansion/-/brace-expansion-1.1.8.tgz";
        sha1 = "c07b211c7c952ec1f8efd51a77ef0d1d3990a292";
      };
    }

    {
      name = "braces___braces_1.8.5.tgz";
      path = fetchurl {
        name = "braces___braces_1.8.5.tgz";
        url  = "https://registry.yarnpkg.com/braces/-/braces-1.8.5.tgz";
        sha1 = "ba77962e12dff969d6b76711e914b737857bf6a7";
      };
    }

    {
      name = "braces___braces_2.3.0.tgz";
      path = fetchurl {
        name = "braces___braces_2.3.0.tgz";
        url  = "https://registry.yarnpkg.com/braces/-/braces-2.3.0.tgz";
        sha1 = "a46941cb5fb492156b3d6a656e06c35364e3e66e";
      };
    }

    {
      name = "brorand___brorand_1.1.0.tgz";
      path = fetchurl {
        name = "brorand___brorand_1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/brorand/-/brorand-1.1.0.tgz";
        sha1 = "12c25efe40a45e3c323eb8675a0a0ce57b22371f";
      };
    }

    {
      name = "browser_pack___browser_pack_5.0.1.tgz";
      path = fetchurl {
        name = "browser_pack___browser_pack_5.0.1.tgz";
        url  = "https://registry.yarnpkg.com/browser-pack/-/browser-pack-5.0.1.tgz";
        sha1 = "4197719b20c6e0aaa09451c5111e53efb6fbc18d";
      };
    }

    {
      name = "browser_pack___browser_pack_6.0.2.tgz";
      path = fetchurl {
        name = "browser_pack___browser_pack_6.0.2.tgz";
        url  = "https://registry.yarnpkg.com/browser-pack/-/browser-pack-6.0.2.tgz";
        sha1 = "f86cd6cef4f5300c8e63e07a4d512f65fbff4531";
      };
    }

    {
      name = "browser_resolve___browser_resolve_1.11.2.tgz";
      path = fetchurl {
        name = "browser_resolve___browser_resolve_1.11.2.tgz";
        url  = "https://registry.yarnpkg.com/browser-resolve/-/browser-resolve-1.11.2.tgz";
        sha1 = "8ff09b0a2c421718a1051c260b32e48f442938ce";
      };
    }

    {
      name = "browser_stdout___browser_stdout_1.3.0.tgz";
      path = fetchurl {
        name = "browser_stdout___browser_stdout_1.3.0.tgz";
        url  = "https://registry.yarnpkg.com/browser-stdout/-/browser-stdout-1.3.0.tgz";
        sha1 = "f351d32969d32fa5d7a5567154263d928ae3bd1f";
      };
    }

    {
      name = "browser_unpack___browser_unpack_1.2.0.tgz";
      path = fetchurl {
        name = "browser_unpack___browser_unpack_1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/browser-unpack/-/browser-unpack-1.2.0.tgz";
        sha1 = "357aee31fc467831684d063e4355e070a782970d";
      };
    }

    {
      name = "browserify_aes___browserify_aes_1.1.1.tgz";
      path = fetchurl {
        name = "browserify_aes___browserify_aes_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/browserify-aes/-/browserify-aes-1.1.1.tgz";
        sha1 = "38b7ab55edb806ff2dcda1a7f1620773a477c49f";
      };
    }

    {
      name = "browserify_cipher___browserify_cipher_1.0.0.tgz";
      path = fetchurl {
        name = "browserify_cipher___browserify_cipher_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/browserify-cipher/-/browserify-cipher-1.0.0.tgz";
        sha1 = "9988244874bf5ed4e28da95666dcd66ac8fc363a";
      };
    }

    {
      name = "browserify_debug_tools___browserify_debug_tools_2.3.0.tgz";
      path = fetchurl {
        name = "browserify_debug_tools___browserify_debug_tools_2.3.0.tgz";
        url  = "https://registry.yarnpkg.com/browserify-debug-tools/-/browserify-debug-tools-2.3.0.tgz";
        sha1 = "07b28aee0317d37d580f4f5940323c11907b117b";
      };
    }

    {
      name = "browserify_des___browserify_des_1.0.0.tgz";
      path = fetchurl {
        name = "browserify_des___browserify_des_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/browserify-des/-/browserify-des-1.0.0.tgz";
        sha1 = "daa277717470922ed2fe18594118a175439721dd";
      };
    }

    {
      name = "browserify_ngannotate___browserify_ngannotate_2.0.0.tgz";
      path = fetchurl {
        name = "browserify_ngannotate___browserify_ngannotate_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/browserify-ngannotate/-/browserify-ngannotate-2.0.0.tgz";
        sha1 = "a67619f07597f1a3eb47484fd87e84bb035d956e";
      };
    }

    {
      name = "browserify_rsa___browserify_rsa_4.0.1.tgz";
      path = fetchurl {
        name = "browserify_rsa___browserify_rsa_4.0.1.tgz";
        url  = "https://registry.yarnpkg.com/browserify-rsa/-/browserify-rsa-4.0.1.tgz";
        sha1 = "21e0abfaf6f2029cf2fafb133567a701d4135524";
      };
    }

    {
      name = "browserify_sign___browserify_sign_4.0.4.tgz";
      path = fetchurl {
        name = "browserify_sign___browserify_sign_4.0.4.tgz";
        url  = "https://registry.yarnpkg.com/browserify-sign/-/browserify-sign-4.0.4.tgz";
        sha1 = "aa4eb68e5d7b658baa6bf6a57e630cbd7a93d298";
      };
    }

    {
      name = "browserify_zlib___browserify_zlib_0.2.0.tgz";
      path = fetchurl {
        name = "browserify_zlib___browserify_zlib_0.2.0.tgz";
        url  = "https://registry.yarnpkg.com/browserify-zlib/-/browserify-zlib-0.2.0.tgz";
        sha1 = "2869459d9aa3be245fe8fe2ca1f46e2e7f54d73f";
      };
    }

    {
      name = "browserify___browserify_14.5.0.tgz";
      path = fetchurl {
        name = "browserify___browserify_14.5.0.tgz";
        url  = "https://registry.yarnpkg.com/browserify/-/browserify-14.5.0.tgz";
        sha1 = "0bbbce521acd6e4d1d54d8e9365008efb85a9cc5";
      };
    }

    {
      name = "browserslist___browserslist_1.7.7.tgz";
      path = fetchurl {
        name = "browserslist___browserslist_1.7.7.tgz";
        url  = "https://registry.yarnpkg.com/browserslist/-/browserslist-1.7.7.tgz";
        sha1 = "0bd76704258be829b2398bb50e4b62d1a166b0b9";
      };
    }

    {
      name = "browserslist___browserslist_2.10.0.tgz";
      path = fetchurl {
        name = "browserslist___browserslist_2.10.0.tgz";
        url  = "https://registry.yarnpkg.com/browserslist/-/browserslist-2.10.0.tgz";
        sha1 = "bac5ee1cc69ca9d96403ffb8a3abdc5b6aed6346";
      };
    }

    {
      name = "budo___budo_10.0.4.tgz";
      path = fetchurl {
        name = "budo___budo_10.0.4.tgz";
        url  = "https://registry.yarnpkg.com/budo/-/budo-10.0.4.tgz";
        sha1 = "e846e6160a9be0244b26a69d815208e412340c2a";
      };
    }

    {
      name = "buffer_xor___buffer_xor_1.0.3.tgz";
      path = fetchurl {
        name = "buffer_xor___buffer_xor_1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/buffer-xor/-/buffer-xor-1.0.3.tgz";
        sha1 = "26e61ed1422fb70dd42e6e36729ed51d855fe8d9";
      };
    }

    {
      name = "buffer___buffer_5.0.8.tgz";
      path = fetchurl {
        name = "buffer___buffer_5.0.8.tgz";
        url  = "https://registry.yarnpkg.com/buffer/-/buffer-5.0.8.tgz";
        sha1 = "84daa52e7cf2fa8ce4195bc5cf0f7809e0930b24";
      };
    }

    {
      name = "bufferstreams___bufferstreams_1.1.3.tgz";
      path = fetchurl {
        name = "bufferstreams___bufferstreams_1.1.3.tgz";
        url  = "https://registry.yarnpkg.com/bufferstreams/-/bufferstreams-1.1.3.tgz";
        sha1 = "a8515ac024fa90e8fa7d58c11b13dea1f28abe72";
      };
    }

    {
      name = "builtin_modules___builtin_modules_1.1.1.tgz";
      path = fetchurl {
        name = "builtin_modules___builtin_modules_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/builtin-modules/-/builtin-modules-1.1.1.tgz";
        sha1 = "270f076c5a72c02f5b65a47df94c5fe3a278892f";
      };
    }

    {
      name = "builtin_status_codes___builtin_status_codes_3.0.0.tgz";
      path = fetchurl {
        name = "builtin_status_codes___builtin_status_codes_3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/builtin-status-codes/-/builtin-status-codes-3.0.0.tgz";
        sha1 = "85982878e21b98e1c66425e03d0174788f569ee8";
      };
    }

    {
      name = "bundle_collapser___bundle_collapser_1.3.0.tgz";
      path = fetchurl {
        name = "bundle_collapser___bundle_collapser_1.3.0.tgz";
        url  = "https://registry.yarnpkg.com/bundle-collapser/-/bundle-collapser-1.3.0.tgz";
        sha1 = "f4b4ff58b2f22ee7701b20fa76306e23f53a3fb6";
      };
    }

    {
      name = "bytes___bytes_3.0.0.tgz";
      path = fetchurl {
        name = "bytes___bytes_3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/bytes/-/bytes-3.0.0.tgz";
        sha1 = "d32815404d689699f85a4ea4fa8755dd13a96048";
      };
    }

    {
      name = "cache_base___cache_base_1.0.1.tgz";
      path = fetchurl {
        name = "cache_base___cache_base_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/cache-base/-/cache-base-1.0.1.tgz";
        sha1 = "0a7f46416831c8b662ee36fe4e7c59d76f666ab2";
      };
    }

    {
      name = "cached_path_relative___cached_path_relative_1.0.1.tgz";
      path = fetchurl {
        name = "cached_path_relative___cached_path_relative_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/cached-path-relative/-/cached-path-relative-1.0.1.tgz";
        sha1 = "d09c4b52800aa4c078e2dd81a869aac90d2e54e7";
      };
    }

    {
      name = "camel_case___camel_case_1.2.2.tgz";
      path = fetchurl {
        name = "camel_case___camel_case_1.2.2.tgz";
        url  = "https://registry.yarnpkg.com/camel-case/-/camel-case-1.2.2.tgz";
        sha1 = "1aca7c4d195359a2ce9955793433c6e5542511f2";
      };
    }

    {
      name = "camelcase_keys___camelcase_keys_2.1.0.tgz";
      path = fetchurl {
        name = "camelcase_keys___camelcase_keys_2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/camelcase-keys/-/camelcase-keys-2.1.0.tgz";
        sha1 = "308beeaffdf28119051efa1d932213c91b8f92e7";
      };
    }

    {
      name = "camelcase___camelcase_1.2.1.tgz";
      path = fetchurl {
        name = "camelcase___camelcase_1.2.1.tgz";
        url  = "https://registry.yarnpkg.com/camelcase/-/camelcase-1.2.1.tgz";
        sha1 = "9bb5304d2e0b56698b2c758b08a3eaa9daa58a39";
      };
    }

    {
      name = "camelcase___camelcase_2.1.1.tgz";
      path = fetchurl {
        name = "camelcase___camelcase_2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/camelcase/-/camelcase-2.1.1.tgz";
        sha1 = "7c1d16d679a1bbe59ca02cacecfb011e201f5a1f";
      };
    }

    {
      name = "camelcase___camelcase_3.0.0.tgz";
      path = fetchurl {
        name = "camelcase___camelcase_3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/camelcase/-/camelcase-3.0.0.tgz";
        sha1 = "32fc4b9fcdaf845fcdf7e73bb97cac2261f0ab0a";
      };
    }

    {
      name = "camelcase___camelcase_4.1.0.tgz";
      path = fetchurl {
        name = "camelcase___camelcase_4.1.0.tgz";
        url  = "https://registry.yarnpkg.com/camelcase/-/camelcase-4.1.0.tgz";
        sha1 = "d545635be1e33c542649c69173e5de6acfae34dd";
      };
    }

    {
      name = "caniuse_api___caniuse_api_1.6.1.tgz";
      path = fetchurl {
        name = "caniuse_api___caniuse_api_1.6.1.tgz";
        url  = "https://registry.yarnpkg.com/caniuse-api/-/caniuse-api-1.6.1.tgz";
        sha1 = "b534e7c734c4f81ec5fbe8aca2ad24354b962c6c";
      };
    }

    {
      name = "caniuse_db___caniuse_db_1.0.30000784.tgz";
      path = fetchurl {
        name = "caniuse_db___caniuse_db_1.0.30000784.tgz";
        url  = "https://registry.yarnpkg.com/caniuse-db/-/caniuse-db-1.0.30000784.tgz";
        sha1 = "1be95012d9489c7719074f81aee57dbdffe6361b";
      };
    }

    {
      name = "caniuse_lite___caniuse_lite_1.0.30000784.tgz";
      path = fetchurl {
        name = "caniuse_lite___caniuse_lite_1.0.30000784.tgz";
        url  = "https://registry.yarnpkg.com/caniuse-lite/-/caniuse-lite-1.0.30000784.tgz";
        sha1 = "129ced74e9a1280a441880b6cd2bce30ef59e6c0";
      };
    }

    {
      name = "capture_stack_trace___capture_stack_trace_1.0.0.tgz";
      path = fetchurl {
        name = "capture_stack_trace___capture_stack_trace_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/capture-stack-trace/-/capture-stack-trace-1.0.0.tgz";
        sha1 = "4a6fa07399c26bba47f0b2496b4d0fb408c5550d";
      };
    }

    {
      name = "caseless___caseless_0.11.0.tgz";
      path = fetchurl {
        name = "caseless___caseless_0.11.0.tgz";
        url  = "https://registry.yarnpkg.com/caseless/-/caseless-0.11.0.tgz";
        sha1 = "715b96ea9841593cc33067923f5ec60ebda4f7d7";
      };
    }

    {
      name = "caseless___caseless_0.12.0.tgz";
      path = fetchurl {
        name = "caseless___caseless_0.12.0.tgz";
        url  = "https://registry.yarnpkg.com/caseless/-/caseless-0.12.0.tgz";
        sha1 = "1b681c21ff84033c826543090689420d187151dc";
      };
    }

    {
      name = "center_align___center_align_0.1.3.tgz";
      path = fetchurl {
        name = "center_align___center_align_0.1.3.tgz";
        url  = "https://registry.yarnpkg.com/center-align/-/center-align-0.1.3.tgz";
        sha1 = "aa0d32629b6ee972200411cbd4461c907bc2b7ad";
      };
    }

    {
      name = "chai_nightwatch___chai_nightwatch_0.1.1.tgz";
      path = fetchurl {
        name = "chai_nightwatch___chai_nightwatch_0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/chai-nightwatch/-/chai-nightwatch-0.1.1.tgz";
        sha1 = "1ca56de768d3c0868fe7fc2f4d32c2fe894e6be9";
      };
    }

    {
      name = "chalk___chalk_2.3.0.tgz";
      path = fetchurl {
        name = "chalk___chalk_2.3.0.tgz";
        url  = "https://registry.yarnpkg.com/chalk/-/chalk-2.3.0.tgz";
        sha1 = "b5ea48efc9c1793dccc9b4767c93914d3f2d52ba";
      };
    }

    {
      name = "chalk___chalk_0.5.1.tgz";
      path = fetchurl {
        name = "chalk___chalk_0.5.1.tgz";
        url  = "https://registry.yarnpkg.com/chalk/-/chalk-0.5.1.tgz";
        sha1 = "663b3a648b68b55d04690d49167aa837858f2174";
      };
    }

    {
      name = "chalk___chalk_1.1.3.tgz";
      path = fetchurl {
        name = "chalk___chalk_1.1.3.tgz";
        url  = "https://registry.yarnpkg.com/chalk/-/chalk-1.1.3.tgz";
        sha1 = "a8115c55e4a702fe4d150abd3872822a7e09fc98";
      };
    }

    {
      name = "change_case___change_case_2.3.1.tgz";
      path = fetchurl {
        name = "change_case___change_case_2.3.1.tgz";
        url  = "https://registry.yarnpkg.com/change-case/-/change-case-2.3.1.tgz";
        sha1 = "2c4fde3f063bb41d00cd68e0d5a09db61cbe894f";
      };
    }

    {
      name = "charenc___charenc_0.0.2.tgz";
      path = fetchurl {
        name = "charenc___charenc_0.0.2.tgz";
        url  = "https://registry.yarnpkg.com/charenc/-/charenc-0.0.2.tgz";
        sha1 = "c0a1d2f3a7092e03774bfa83f14c0fc5790a8667";
      };
    }

    {
      name = "chokidar___chokidar_1.7.0.tgz";
      path = fetchurl {
        name = "chokidar___chokidar_1.7.0.tgz";
        url  = "https://registry.yarnpkg.com/chokidar/-/chokidar-1.7.0.tgz";
        sha1 = "798e689778151c8076b4b360e5edd28cda2bb468";
      };
    }

    {
      name = "chownr___chownr_1.0.1.tgz";
      path = fetchurl {
        name = "chownr___chownr_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/chownr/-/chownr-1.0.1.tgz";
        sha1 = "e2a75042a9551908bebd25b8523d5f9769d79181";
      };
    }

    {
      name = "cipher_base___cipher_base_1.0.4.tgz";
      path = fetchurl {
        name = "cipher_base___cipher_base_1.0.4.tgz";
        url  = "https://registry.yarnpkg.com/cipher-base/-/cipher-base-1.0.4.tgz";
        sha1 = "8760e4ecc272f4c363532f926d874aae2c1397de";
      };
    }

    {
      name = "clap___clap_1.2.3.tgz";
      path = fetchurl {
        name = "clap___clap_1.2.3.tgz";
        url  = "https://registry.yarnpkg.com/clap/-/clap-1.2.3.tgz";
        sha1 = "4f36745b32008492557f46412d66d50cb99bce51";
      };
    }

    {
      name = "class_utils___class_utils_0.3.5.tgz";
      path = fetchurl {
        name = "class_utils___class_utils_0.3.5.tgz";
        url  = "https://registry.yarnpkg.com/class-utils/-/class-utils-0.3.5.tgz";
        sha1 = "17e793103750f9627b2176ea34cfd1b565903c80";
      };
    }

    {
      name = "clean_css___clean_css_3.4.28.tgz";
      path = fetchurl {
        name = "clean_css___clean_css_3.4.28.tgz";
        url  = "https://registry.yarnpkg.com/clean-css/-/clean-css-3.4.28.tgz";
        sha1 = "bf1945e82fc808f55695e6ddeaec01400efd03ff";
      };
    }

    {
      name = "cliui___cliui_2.1.0.tgz";
      path = fetchurl {
        name = "cliui___cliui_2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/cliui/-/cliui-2.1.0.tgz";
        sha1 = "4b475760ff80264c762c3a1719032e91c7fea0d1";
      };
    }

    {
      name = "cliui___cliui_3.2.0.tgz";
      path = fetchurl {
        name = "cliui___cliui_3.2.0.tgz";
        url  = "https://registry.yarnpkg.com/cliui/-/cliui-3.2.0.tgz";
        sha1 = "120601537a916d29940f934da3b48d585a39213d";
      };
    }

    {
      name = "cliui___cliui_4.0.0.tgz";
      path = fetchurl {
        name = "cliui___cliui_4.0.0.tgz";
        url  = "https://registry.yarnpkg.com/cliui/-/cliui-4.0.0.tgz";
        sha1 = "743d4650e05f36d1ed2575b59638d87322bfbbcc";
      };
    }

    {
      name = "clone_buffer___clone_buffer_1.0.0.tgz";
      path = fetchurl {
        name = "clone_buffer___clone_buffer_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/clone-buffer/-/clone-buffer-1.0.0.tgz";
        sha1 = "e3e25b207ac4e701af721e2cb5a16792cac3dc58";
      };
    }

    {
      name = "clone_stats___clone_stats_0.0.1.tgz";
      path = fetchurl {
        name = "clone_stats___clone_stats_0.0.1.tgz";
        url  = "https://registry.yarnpkg.com/clone-stats/-/clone-stats-0.0.1.tgz";
        sha1 = "b88f94a82cf38b8791d58046ea4029ad88ca99d1";
      };
    }

    {
      name = "clone_stats___clone_stats_1.0.0.tgz";
      path = fetchurl {
        name = "clone_stats___clone_stats_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/clone-stats/-/clone-stats-1.0.0.tgz";
        sha1 = "b3782dff8bb5474e18b9b6bf0fdfe782f8777680";
      };
    }

    {
      name = "clone___clone_0.2.0.tgz";
      path = fetchurl {
        name = "clone___clone_0.2.0.tgz";
        url  = "https://registry.yarnpkg.com/clone/-/clone-0.2.0.tgz";
        sha1 = "c6126a90ad4f72dbf5acdb243cc37724fe93fc1f";
      };
    }

    {
      name = "clone___clone_1.0.3.tgz";
      path = fetchurl {
        name = "clone___clone_1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/clone/-/clone-1.0.3.tgz";
        sha1 = "298d7e2231660f40c003c2ed3140decf3f53085f";
      };
    }

    {
      name = "clone___clone_2.1.1.tgz";
      path = fetchurl {
        name = "clone___clone_2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/clone/-/clone-2.1.1.tgz";
        sha1 = "d217d1e961118e3ac9a4b8bba3285553bf647cdb";
      };
    }

    {
      name = "cloneable_readable___cloneable_readable_1.0.0.tgz";
      path = fetchurl {
        name = "cloneable_readable___cloneable_readable_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/cloneable-readable/-/cloneable-readable-1.0.0.tgz";
        sha1 = "a6290d413f217a61232f95e458ff38418cfb0117";
      };
    }

    {
      name = "cls___cls_0.1.5.tgz";
      path = fetchurl {
        name = "cls___cls_0.1.5.tgz";
        url  = "https://registry.yarnpkg.com/cls/-/cls-0.1.5.tgz";
        sha1 = "df3218cf9d1480747f584d88b19b74c6b281317b";
      };
    }

    {
      name = "co___co_4.6.0.tgz";
      path = fetchurl {
        name = "co___co_4.6.0.tgz";
        url  = "https://registry.yarnpkg.com/co/-/co-4.6.0.tgz";
        sha1 = "6ea6bdf3d853ae54ccb8e47bfa0bf3f9031fb184";
      };
    }

    {
      name = "co___co_3.0.6.tgz";
      path = fetchurl {
        name = "co___co_3.0.6.tgz";
        url  = "https://registry.yarnpkg.com/co/-/co-3.0.6.tgz";
        sha1 = "1445f226c5eb956138e68c9ac30167ea7d2e6bda";
      };
    }

    {
      name = "coa___coa_1.0.4.tgz";
      path = fetchurl {
        name = "coa___coa_1.0.4.tgz";
        url  = "https://registry.yarnpkg.com/coa/-/coa-1.0.4.tgz";
        sha1 = "a9ef153660d6a86a8bdec0289a5c684d217432fd";
      };
    }

    {
      name = "code_point_at___code_point_at_1.1.0.tgz";
      path = fetchurl {
        name = "code_point_at___code_point_at_1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/code-point-at/-/code-point-at-1.1.0.tgz";
        sha1 = "0d070b4d043a5bea33a2f1a40e2edb3d9a4ccf77";
      };
    }

    {
      name = "coffee_script___coffee_script_1.12.7.tgz";
      path = fetchurl {
        name = "coffee_script___coffee_script_1.12.7.tgz";
        url  = "https://registry.yarnpkg.com/coffee-script/-/coffee-script-1.12.7.tgz";
        sha1 = "c05dae0cb79591d05b3070a8433a98c9a89ccc53";
      };
    }

    {
      name = "coffeeify___coffeeify_3.0.1.tgz";
      path = fetchurl {
        name = "coffeeify___coffeeify_3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/coffeeify/-/coffeeify-3.0.1.tgz";
        sha1 = "5e2753000c50bd24c693115f33864248dd11136c";
      };
    }

    {
      name = "coffeescript___coffeescript_1.12.7.tgz";
      path = fetchurl {
        name = "coffeescript___coffeescript_1.12.7.tgz";
        url  = "https://registry.yarnpkg.com/coffeescript/-/coffeescript-1.12.7.tgz";
        sha1 = "e57ee4c4867cf7f606bfc4a0f2d550c0981ddd27";
      };
    }

    {
      name = "collection_visit___collection_visit_1.0.0.tgz";
      path = fetchurl {
        name = "collection_visit___collection_visit_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/collection-visit/-/collection-visit-1.0.0.tgz";
        sha1 = "4bc0373c164bc3291b4d368c829cf1a80a59dca0";
      };
    }

    {
      name = "color_convert___color_convert_1.9.1.tgz";
      path = fetchurl {
        name = "color_convert___color_convert_1.9.1.tgz";
        url  = "https://registry.yarnpkg.com/color-convert/-/color-convert-1.9.1.tgz";
        sha1 = "c1261107aeb2f294ebffec9ed9ecad529a6097ed";
      };
    }

    {
      name = "color_name___color_name_1.1.3.tgz";
      path = fetchurl {
        name = "color_name___color_name_1.1.3.tgz";
        url  = "https://registry.yarnpkg.com/color-name/-/color-name-1.1.3.tgz";
        sha1 = "a7d0558bd89c42f795dd42328f740831ca53bc25";
      };
    }

    {
      name = "color_string___color_string_0.3.0.tgz";
      path = fetchurl {
        name = "color_string___color_string_0.3.0.tgz";
        url  = "https://registry.yarnpkg.com/color-string/-/color-string-0.3.0.tgz";
        sha1 = "27d46fb67025c5c2fa25993bfbf579e47841b991";
      };
    }

    {
      name = "color_support___color_support_1.1.3.tgz";
      path = fetchurl {
        name = "color_support___color_support_1.1.3.tgz";
        url  = "https://registry.yarnpkg.com/color-support/-/color-support-1.1.3.tgz";
        sha1 = "93834379a1cc9a0c61f82f52f0d04322251bd5a2";
      };
    }

    {
      name = "color___color_0.11.4.tgz";
      path = fetchurl {
        name = "color___color_0.11.4.tgz";
        url  = "https://registry.yarnpkg.com/color/-/color-0.11.4.tgz";
        sha1 = "6d7b5c74fb65e841cd48792ad1ed5e07b904d764";
      };
    }

    {
      name = "colormin___colormin_1.1.2.tgz";
      path = fetchurl {
        name = "colormin___colormin_1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/colormin/-/colormin-1.1.2.tgz";
        sha1 = "ea2f7420a72b96881a38aae59ec124a6f7298133";
      };
    }

    {
      name = "colors___colors_1.1.2.tgz";
      path = fetchurl {
        name = "colors___colors_1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/colors/-/colors-1.1.2.tgz";
        sha1 = "168a4701756b6a7f51a12ce0c97bfa28c084ed63";
      };
    }

    {
      name = "combine_source_map___combine_source_map_0.6.1.tgz";
      path = fetchurl {
        name = "combine_source_map___combine_source_map_0.6.1.tgz";
        url  = "https://registry.yarnpkg.com/combine-source-map/-/combine-source-map-0.6.1.tgz";
        sha1 = "9b4a09c316033d768e0f11e029fa2730e079ad96";
      };
    }

    {
      name = "combine_source_map___combine_source_map_0.7.2.tgz";
      path = fetchurl {
        name = "combine_source_map___combine_source_map_0.7.2.tgz";
        url  = "https://registry.yarnpkg.com/combine-source-map/-/combine-source-map-0.7.2.tgz";
        sha1 = "0870312856b307a87cc4ac486f3a9a62aeccc09e";
      };
    }

    {
      name = "combined_stream___combined_stream_1.0.5.tgz";
      path = fetchurl {
        name = "combined_stream___combined_stream_1.0.5.tgz";
        url  = "https://registry.yarnpkg.com/combined-stream/-/combined-stream-1.0.5.tgz";
        sha1 = "938370a57b4a51dea2c77c15d5c5fdf895164009";
      };
    }

    {
      name = "commander___commander_2.8.1.tgz";
      path = fetchurl {
        name = "commander___commander_2.8.1.tgz";
        url  = "https://registry.yarnpkg.com/commander/-/commander-2.8.1.tgz";
        sha1 = "06be367febfda0c330aa1e2a072d3dc9762425d4";
      };
    }

    {
      name = "commander___commander_2.9.0.tgz";
      path = fetchurl {
        name = "commander___commander_2.9.0.tgz";
        url  = "https://registry.yarnpkg.com/commander/-/commander-2.9.0.tgz";
        sha1 = "9c99094176e12240cb22d6c5146098400fe0f7d4";
      };
    }

    {
      name = "commander___commander_2.12.2.tgz";
      path = fetchurl {
        name = "commander___commander_2.12.2.tgz";
        url  = "https://registry.yarnpkg.com/commander/-/commander-2.12.2.tgz";
        sha1 = "0f5946c427ed9ec0d91a46bb9def53e54650e555";
      };
    }

    {
      name = "component_emitter___component_emitter_1.2.1.tgz";
      path = fetchurl {
        name = "component_emitter___component_emitter_1.2.1.tgz";
        url  = "https://registry.yarnpkg.com/component-emitter/-/component-emitter-1.2.1.tgz";
        sha1 = "137918d6d78283f7df7a6b7c5a63e140e69425e6";
      };
    }

    {
      name = "concat_map___concat_map_0.0.1.tgz";
      path = fetchurl {
        name = "concat_map___concat_map_0.0.1.tgz";
        url  = "https://registry.yarnpkg.com/concat-map/-/concat-map-0.0.1.tgz";
        sha1 = "d8a96bd77fd68df7793a73036a3ba0d5405d477b";
      };
    }

    {
      name = "concat_stream___concat_stream_1.5.2.tgz";
      path = fetchurl {
        name = "concat_stream___concat_stream_1.5.2.tgz";
        url  = "https://registry.yarnpkg.com/concat-stream/-/concat-stream-1.5.2.tgz";
        sha1 = "708978624d856af41a5a741defdd261da752c266";
      };
    }

    {
      name = "concat_stream___concat_stream_1.6.0.tgz";
      path = fetchurl {
        name = "concat_stream___concat_stream_1.6.0.tgz";
        url  = "https://registry.yarnpkg.com/concat-stream/-/concat-stream-1.6.0.tgz";
        sha1 = "0aac662fd52be78964d5532f694784e70110acf7";
      };
    }

    {
      name = "concat_with_sourcemaps___concat_with_sourcemaps_1.0.4.tgz";
      path = fetchurl {
        name = "concat_with_sourcemaps___concat_with_sourcemaps_1.0.4.tgz";
        url  = "https://registry.yarnpkg.com/concat-with-sourcemaps/-/concat-with-sourcemaps-1.0.4.tgz";
        sha1 = "f55b3be2aeb47601b10a2d5259ccfb70fd2f1dd6";
      };
    }

    {
      name = "connect_pushstate___connect_pushstate_1.1.0.tgz";
      path = fetchurl {
        name = "connect_pushstate___connect_pushstate_1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/connect-pushstate/-/connect-pushstate-1.1.0.tgz";
        sha1 = "bcab224271c439604a0fb0f614c0a5f563e88e24";
      };
    }

    {
      name = "console_browserify___console_browserify_1.1.0.tgz";
      path = fetchurl {
        name = "console_browserify___console_browserify_1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/console-browserify/-/console-browserify-1.1.0.tgz";
        sha1 = "f0241c45730a9fc6323b206dbf38edc741d0bb10";
      };
    }

    {
      name = "console_control_strings___console_control_strings_1.1.0.tgz";
      path = fetchurl {
        name = "console_control_strings___console_control_strings_1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/console-control-strings/-/console-control-strings-1.1.0.tgz";
        sha1 = "3d7cf4464db6446ea644bf4b39507f9851008e8e";
      };
    }

    {
      name = "constant_case___constant_case_1.1.2.tgz";
      path = fetchurl {
        name = "constant_case___constant_case_1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/constant-case/-/constant-case-1.1.2.tgz";
        sha1 = "8ec2ca5ba343e00aa38dbf4e200fd5ac907efd63";
      };
    }

    {
      name = "constants_browserify___constants_browserify_1.0.0.tgz";
      path = fetchurl {
        name = "constants_browserify___constants_browserify_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/constants-browserify/-/constants-browserify-1.0.0.tgz";
        sha1 = "c20b96d8c617748aaf1c16021760cd27fcb8cb75";
      };
    }

    {
      name = "convert_source_map___convert_source_map_1.5.1.tgz";
      path = fetchurl {
        name = "convert_source_map___convert_source_map_1.5.1.tgz";
        url  = "https://registry.yarnpkg.com/convert-source-map/-/convert-source-map-1.5.1.tgz";
        sha1 = "b8278097b9bc229365de5c62cf5fcaed8b5599e5";
      };
    }

    {
      name = "convert_source_map___convert_source_map_1.1.3.tgz";
      path = fetchurl {
        name = "convert_source_map___convert_source_map_1.1.3.tgz";
        url  = "https://registry.yarnpkg.com/convert-source-map/-/convert-source-map-1.1.3.tgz";
        sha1 = "4829c877e9fe49b3161f3bf3673888e204699860";
      };
    }

    {
      name = "copy_descriptor___copy_descriptor_0.1.1.tgz";
      path = fetchurl {
        name = "copy_descriptor___copy_descriptor_0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/copy-descriptor/-/copy-descriptor-0.1.1.tgz";
        sha1 = "676f6eb3c39997c2ee1ac3a924fd6124748f578d";
      };
    }

    {
      name = "core_js___core_js_2.3.0.tgz";
      path = fetchurl {
        name = "core_js___core_js_2.3.0.tgz";
        url  = "https://registry.yarnpkg.com/core-js/-/core-js-2.3.0.tgz";
        sha1 = "fab83fbb0b2d8dc85fa636c4b9d34c75420c6d65";
      };
    }

    {
      name = "core_util_is___core_util_is_1.0.2.tgz";
      path = fetchurl {
        name = "core_util_is___core_util_is_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/core-util-is/-/core-util-is-1.0.2.tgz";
        sha1 = "b5fd54220aa2bc5ab57aab7140c940754503c1a7";
      };
    }

    {
      name = "create_ecdh___create_ecdh_4.0.0.tgz";
      path = fetchurl {
        name = "create_ecdh___create_ecdh_4.0.0.tgz";
        url  = "https://registry.yarnpkg.com/create-ecdh/-/create-ecdh-4.0.0.tgz";
        sha1 = "888c723596cdf7612f6498233eebd7a35301737d";
      };
    }

    {
      name = "create_error_class___create_error_class_3.0.2.tgz";
      path = fetchurl {
        name = "create_error_class___create_error_class_3.0.2.tgz";
        url  = "https://registry.yarnpkg.com/create-error-class/-/create-error-class-3.0.2.tgz";
        sha1 = "06be7abef947a3f14a30fd610671d401bca8b7b6";
      };
    }

    {
      name = "create_hash___create_hash_1.1.3.tgz";
      path = fetchurl {
        name = "create_hash___create_hash_1.1.3.tgz";
        url  = "https://registry.yarnpkg.com/create-hash/-/create-hash-1.1.3.tgz";
        sha1 = "606042ac8b9262750f483caddab0f5819172d8fd";
      };
    }

    {
      name = "create_hmac___create_hmac_1.1.6.tgz";
      path = fetchurl {
        name = "create_hmac___create_hmac_1.1.6.tgz";
        url  = "https://registry.yarnpkg.com/create-hmac/-/create-hmac-1.1.6.tgz";
        sha1 = "acb9e221a4e17bdb076e90657c42b93e3726cf06";
      };
    }

    {
      name = "cross_spawn___cross_spawn_3.0.1.tgz";
      path = fetchurl {
        name = "cross_spawn___cross_spawn_3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/cross-spawn/-/cross-spawn-3.0.1.tgz";
        sha1 = "1256037ecb9f0c5f79e3d6ef135e30770184b982";
      };
    }

    {
      name = "cross_spawn___cross_spawn_5.1.0.tgz";
      path = fetchurl {
        name = "cross_spawn___cross_spawn_5.1.0.tgz";
        url  = "https://registry.yarnpkg.com/cross-spawn/-/cross-spawn-5.1.0.tgz";
        sha1 = "e8bd0efee58fcff6f8f94510a0a554bbfa235449";
      };
    }

    {
      name = "crypt___crypt_0.0.2.tgz";
      path = fetchurl {
        name = "crypt___crypt_0.0.2.tgz";
        url  = "https://registry.yarnpkg.com/crypt/-/crypt-0.0.2.tgz";
        sha1 = "88d7ff7ec0dfb86f713dc87bbb42d044d3e6c41b";
      };
    }

    {
      name = "cryptiles___cryptiles_2.0.5.tgz";
      path = fetchurl {
        name = "cryptiles___cryptiles_2.0.5.tgz";
        url  = "https://registry.yarnpkg.com/cryptiles/-/cryptiles-2.0.5.tgz";
        sha1 = "3bdfecdc608147c1c67202fa291e7dca59eaa3b8";
      };
    }

    {
      name = "cryptiles___cryptiles_3.1.2.tgz";
      path = fetchurl {
        name = "cryptiles___cryptiles_3.1.2.tgz";
        url  = "https://registry.yarnpkg.com/cryptiles/-/cryptiles-3.1.2.tgz";
        sha1 = "a89fbb220f5ce25ec56e8c4aa8a4fd7b5b0d29fe";
      };
    }

    {
      name = "crypto_browserify___crypto_browserify_3.12.0.tgz";
      path = fetchurl {
        name = "crypto_browserify___crypto_browserify_3.12.0.tgz";
        url  = "https://registry.yarnpkg.com/crypto-browserify/-/crypto-browserify-3.12.0.tgz";
        sha1 = "396cf9f3137f03e4b8e532c58f698254e00f80ec";
      };
    }

    {
      name = "css_color_names___css_color_names_0.0.4.tgz";
      path = fetchurl {
        name = "css_color_names___css_color_names_0.0.4.tgz";
        url  = "https://registry.yarnpkg.com/css-color-names/-/css-color-names-0.0.4.tgz";
        sha1 = "808adc2e79cf84738069b646cb20ec27beb629e0";
      };
    }

    {
      name = "cssnano___cssnano_3.10.0.tgz";
      path = fetchurl {
        name = "cssnano___cssnano_3.10.0.tgz";
        url  = "https://registry.yarnpkg.com/cssnano/-/cssnano-3.10.0.tgz";
        sha1 = "4f38f6cea2b9b17fa01490f23f1dc68ea65c1c38";
      };
    }

    {
      name = "csso___csso_2.3.2.tgz";
      path = fetchurl {
        name = "csso___csso_2.3.2.tgz";
        url  = "https://registry.yarnpkg.com/csso/-/csso-2.3.2.tgz";
        sha1 = "ddd52c587033f49e94b71fc55569f252e8ff5f85";
      };
    }

    {
      name = "currently_unhandled___currently_unhandled_0.4.1.tgz";
      path = fetchurl {
        name = "currently_unhandled___currently_unhandled_0.4.1.tgz";
        url  = "https://registry.yarnpkg.com/currently-unhandled/-/currently-unhandled-0.4.1.tgz";
        sha1 = "988df33feab191ef799a61369dd76c17adf957ea";
      };
    }

    {
      name = "dargs___dargs_5.1.0.tgz";
      path = fetchurl {
        name = "dargs___dargs_5.1.0.tgz";
        url  = "https://registry.yarnpkg.com/dargs/-/dargs-5.1.0.tgz";
        sha1 = "ec7ea50c78564cd36c9d5ec18f66329fade27829";
      };
    }

    {
      name = "dashdash___dashdash_1.14.1.tgz";
      path = fetchurl {
        name = "dashdash___dashdash_1.14.1.tgz";
        url  = "https://registry.yarnpkg.com/dashdash/-/dashdash-1.14.1.tgz";
        sha1 = "853cfa0f7cbe2fed5de20326b8dd581035f6e2f0";
      };
    }

    {
      name = "data_uri_to_buffer___data_uri_to_buffer_1.2.0.tgz";
      path = fetchurl {
        name = "data_uri_to_buffer___data_uri_to_buffer_1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/data-uri-to-buffer/-/data-uri-to-buffer-1.2.0.tgz";
        sha1 = "77163ea9c20d8641b4707e8f18abdf9a78f34835";
      };
    }

    {
      name = "date_now___date_now_0.1.4.tgz";
      path = fetchurl {
        name = "date_now___date_now_0.1.4.tgz";
        url  = "https://registry.yarnpkg.com/date-now/-/date-now-0.1.4.tgz";
        sha1 = "eaf439fd4d4848ad74e5cc7dbef200672b9e345b";
      };
    }

    {
      name = "dateformat___dateformat_1.0.12.tgz";
      path = fetchurl {
        name = "dateformat___dateformat_1.0.12.tgz";
        url  = "https://registry.yarnpkg.com/dateformat/-/dateformat-1.0.12.tgz";
        sha1 = "9f124b67594c937ff706932e4a642cca8dbbfee9";
      };
    }

    {
      name = "dateformat___dateformat_2.2.0.tgz";
      path = fetchurl {
        name = "dateformat___dateformat_2.2.0.tgz";
        url  = "https://registry.yarnpkg.com/dateformat/-/dateformat-2.2.0.tgz";
        sha1 = "4065e2013cf9fb916ddfd82efb506ad4c6769062";
      };
    }

    {
      name = "de_indent___de_indent_1.0.2.tgz";
      path = fetchurl {
        name = "de_indent___de_indent_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/de-indent/-/de-indent-1.0.2.tgz";
        sha1 = "b2038e846dc33baa5796128d0804b455b8c1e21d";
      };
    }

    {
      name = "debounce___debounce_1.1.0.tgz";
      path = fetchurl {
        name = "debounce___debounce_1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/debounce/-/debounce-1.1.0.tgz";
        sha1 = "6a1a4ee2a9dc4b7c24bb012558dbcdb05b37f408";
      };
    }

    {
      name = "debug___debug_2.6.9.tgz";
      path = fetchurl {
        name = "debug___debug_2.6.9.tgz";
        url  = "https://registry.yarnpkg.com/debug/-/debug-2.6.9.tgz";
        sha1 = "5d128515df134ff327e90a4c93f4e077a536341f";
      };
    }

    {
      name = "debug___debug_2.2.0.tgz";
      path = fetchurl {
        name = "debug___debug_2.2.0.tgz";
        url  = "https://registry.yarnpkg.com/debug/-/debug-2.2.0.tgz";
        sha1 = "f87057e995b1a1f6ae6a4960664137bc56f039da";
      };
    }

    {
      name = "decamelize___decamelize_1.2.0.tgz";
      path = fetchurl {
        name = "decamelize___decamelize_1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/decamelize/-/decamelize-1.2.0.tgz";
        sha1 = "f6534d15148269b20352e7bee26f501f9a191290";
      };
    }

    {
      name = "decode_uri_component___decode_uri_component_0.2.0.tgz";
      path = fetchurl {
        name = "decode_uri_component___decode_uri_component_0.2.0.tgz";
        url  = "https://registry.yarnpkg.com/decode-uri-component/-/decode-uri-component-0.2.0.tgz";
        sha1 = "eb3913333458775cb84cd1a1fae062106bb87545";
      };
    }

    {
      name = "deep_eql___deep_eql_0.1.3.tgz";
      path = fetchurl {
        name = "deep_eql___deep_eql_0.1.3.tgz";
        url  = "https://registry.yarnpkg.com/deep-eql/-/deep-eql-0.1.3.tgz";
        sha1 = "ef558acab8de25206cd713906d74e56930eb69f2";
      };
    }

    {
      name = "deep_extend___deep_extend_0.4.2.tgz";
      path = fetchurl {
        name = "deep_extend___deep_extend_0.4.2.tgz";
        url  = "https://registry.yarnpkg.com/deep-extend/-/deep-extend-0.4.2.tgz";
        sha1 = "48b699c27e334bf89f10892be432f6e4c7d34a7f";
      };
    }

    {
      name = "deep_is___deep_is_0.1.3.tgz";
      path = fetchurl {
        name = "deep_is___deep_is_0.1.3.tgz";
        url  = "https://registry.yarnpkg.com/deep-is/-/deep-is-0.1.3.tgz";
        sha1 = "b369d6fb5dbc13eecf524f91b070feedc357cf34";
      };
    }

    {
      name = "defaults___defaults_1.0.3.tgz";
      path = fetchurl {
        name = "defaults___defaults_1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/defaults/-/defaults-1.0.3.tgz";
        sha1 = "c656051e9817d9ff08ed881477f3fe4019f3ef7d";
      };
    }

    {
      name = "define_properties___define_properties_1.1.2.tgz";
      path = fetchurl {
        name = "define_properties___define_properties_1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/define-properties/-/define-properties-1.1.2.tgz";
        sha1 = "83a73f2fea569898fb737193c8f873caf6d45c94";
      };
    }

    {
      name = "define_property___define_property_0.2.5.tgz";
      path = fetchurl {
        name = "define_property___define_property_0.2.5.tgz";
        url  = "https://registry.yarnpkg.com/define-property/-/define-property-0.2.5.tgz";
        sha1 = "c35b1ef918ec3c990f9a5bc57be04aacec5c8116";
      };
    }

    {
      name = "define_property___define_property_1.0.0.tgz";
      path = fetchurl {
        name = "define_property___define_property_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/define-property/-/define-property-1.0.0.tgz";
        sha1 = "769ebaaf3f4a63aad3af9e8d304c9bbe79bfb0e6";
      };
    }

    {
      name = "defined___defined_1.0.0.tgz";
      path = fetchurl {
        name = "defined___defined_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/defined/-/defined-1.0.0.tgz";
        sha1 = "c98d9bcef75674188e110969151199e39b1fa693";
      };
    }

    {
      name = "degenerator___degenerator_1.0.4.tgz";
      path = fetchurl {
        name = "degenerator___degenerator_1.0.4.tgz";
        url  = "https://registry.yarnpkg.com/degenerator/-/degenerator-1.0.4.tgz";
        sha1 = "fcf490a37ece266464d9cc431ab98c5819ced095";
      };
    }

    {
      name = "del___del_2.2.2.tgz";
      path = fetchurl {
        name = "del___del_2.2.2.tgz";
        url  = "https://registry.yarnpkg.com/del/-/del-2.2.2.tgz";
        sha1 = "c12c981d067846c84bcaf862cff930d907ffd1a8";
      };
    }

    {
      name = "delayed_stream___delayed_stream_1.0.0.tgz";
      path = fetchurl {
        name = "delayed_stream___delayed_stream_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/delayed-stream/-/delayed-stream-1.0.0.tgz";
        sha1 = "df3ae199acadfb7d440aaae0b29e2272b24ec619";
      };
    }

    {
      name = "delegates___delegates_1.0.0.tgz";
      path = fetchurl {
        name = "delegates___delegates_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/delegates/-/delegates-1.0.0.tgz";
        sha1 = "84c6e159b81904fdca59a0ef44cd870d31250f9a";
      };
    }

    {
      name = "depd___depd_1.1.1.tgz";
      path = fetchurl {
        name = "depd___depd_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/depd/-/depd-1.1.1.tgz";
        sha1 = "5783b4e1c459f06fa5ca27f991f3d06e7a310359";
      };
    }

    {
      name = "depd___depd_1.0.1.tgz";
      path = fetchurl {
        name = "depd___depd_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/depd/-/depd-1.0.1.tgz";
        sha1 = "80aec64c9d6d97e65cc2a9caa93c0aa6abf73aaa";
      };
    }

    {
      name = "deprecated___deprecated_0.0.1.tgz";
      path = fetchurl {
        name = "deprecated___deprecated_0.0.1.tgz";
        url  = "https://registry.yarnpkg.com/deprecated/-/deprecated-0.0.1.tgz";
        sha1 = "f9c9af5464afa1e7a971458a8bdef2aa94d5bb19";
      };
    }

    {
      name = "deps_sort___deps_sort_2.0.0.tgz";
      path = fetchurl {
        name = "deps_sort___deps_sort_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/deps-sort/-/deps-sort-2.0.0.tgz";
        sha1 = "091724902e84658260eb910748cccd1af6e21fb5";
      };
    }

    {
      name = "des.js___des.js_1.0.0.tgz";
      path = fetchurl {
        name = "des.js___des.js_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/des.js/-/des.js-1.0.0.tgz";
        sha1 = "c074d2e2aa6a8a9a07dbd61f9a15c2cd83ec8ecc";
      };
    }

    {
      name = "destroy___destroy_1.0.4.tgz";
      path = fetchurl {
        name = "destroy___destroy_1.0.4.tgz";
        url  = "https://registry.yarnpkg.com/destroy/-/destroy-1.0.4.tgz";
        sha1 = "978857442c44749e4206613e37946205826abd80";
      };
    }

    {
      name = "detect_file___detect_file_1.0.0.tgz";
      path = fetchurl {
        name = "detect_file___detect_file_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/detect-file/-/detect-file-1.0.0.tgz";
        sha1 = "f0d66d03672a825cb1b73bdb3fe62310c8e552b7";
      };
    }

    {
      name = "detect_libc___detect_libc_1.0.3.tgz";
      path = fetchurl {
        name = "detect_libc___detect_libc_1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/detect-libc/-/detect-libc-1.0.3.tgz";
        sha1 = "fa137c4bd698edf55cd5cd02ac559f91a4c4ba9b";
      };
    }

    {
      name = "detective___detective_4.7.0.tgz";
      path = fetchurl {
        name = "detective___detective_4.7.0.tgz";
        url  = "https://registry.yarnpkg.com/detective/-/detective-4.7.0.tgz";
        sha1 = "6276e150f9e50829ad1f90ace4d9a2304188afcf";
      };
    }

    {
      name = "diff___diff_1.4.0.tgz";
      path = fetchurl {
        name = "diff___diff_1.4.0.tgz";
        url  = "https://registry.yarnpkg.com/diff/-/diff-1.4.0.tgz";
        sha1 = "7f28d2eb9ee7b15a97efd89ce63dcfdaa3ccbabf";
      };
    }

    {
      name = "diffie_hellman___diffie_hellman_5.0.2.tgz";
      path = fetchurl {
        name = "diffie_hellman___diffie_hellman_5.0.2.tgz";
        url  = "https://registry.yarnpkg.com/diffie-hellman/-/diffie-hellman-5.0.2.tgz";
        sha1 = "b5835739270cfe26acf632099fded2a07f209e5e";
      };
    }

    {
      name = "dir_glob___dir_glob_2.0.0.tgz";
      path = fetchurl {
        name = "dir_glob___dir_glob_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/dir-glob/-/dir-glob-2.0.0.tgz";
        sha1 = "0b205d2b6aef98238ca286598a8204d29d0a0034";
      };
    }

    {
      name = "domain_browser___domain_browser_1.1.7.tgz";
      path = fetchurl {
        name = "domain_browser___domain_browser_1.1.7.tgz";
        url  = "https://registry.yarnpkg.com/domain-browser/-/domain-browser-1.1.7.tgz";
        sha1 = "867aa4b093faa05f1de08c06f4d7b21fdf8698bc";
      };
    }

    {
      name = "dot_case___dot_case_1.1.2.tgz";
      path = fetchurl {
        name = "dot_case___dot_case_1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/dot-case/-/dot-case-1.1.2.tgz";
        sha1 = "1e73826900de28d6de5480bc1de31d0842b06bec";
      };
    }

    {
      name = "duplexer2___duplexer2_0.0.2.tgz";
      path = fetchurl {
        name = "duplexer2___duplexer2_0.0.2.tgz";
        url  = "https://registry.yarnpkg.com/duplexer2/-/duplexer2-0.0.2.tgz";
        sha1 = "c614dcf67e2fb14995a91711e5a617e8a60a31db";
      };
    }

    {
      name = "duplexer2___duplexer2_0.1.4.tgz";
      path = fetchurl {
        name = "duplexer2___duplexer2_0.1.4.tgz";
        url  = "https://registry.yarnpkg.com/duplexer2/-/duplexer2-0.1.4.tgz";
        sha1 = "8b12dab878c0d69e3e7891051662a32fc6bddcc1";
      };
    }

    {
      name = "duplexer___duplexer_0.1.1.tgz";
      path = fetchurl {
        name = "duplexer___duplexer_0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/duplexer/-/duplexer-0.1.1.tgz";
        sha1 = "ace6ff808c1ce66b57d1ebf97977acb02334cfc1";
      };
    }

    {
      name = "ecc_jsbn___ecc_jsbn_0.1.1.tgz";
      path = fetchurl {
        name = "ecc_jsbn___ecc_jsbn_0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/ecc-jsbn/-/ecc-jsbn-0.1.1.tgz";
        sha1 = "0fc73a9ed5f0d53c38193398523ef7e543777505";
      };
    }

    {
      name = "ee_first___ee_first_1.1.1.tgz";
      path = fetchurl {
        name = "ee_first___ee_first_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/ee-first/-/ee-first-1.1.1.tgz";
        sha1 = "590c61156b0ae2f4f0255732a158b266bc56b21d";
      };
    }

    {
      name = "ejs___ejs_2.5.7.tgz";
      path = fetchurl {
        name = "ejs___ejs_2.5.7.tgz";
        url  = "https://registry.yarnpkg.com/ejs/-/ejs-2.5.7.tgz";
        sha1 = "cc872c168880ae3c7189762fd5ffc00896c9518a";
      };
    }

    {
      name = "electron_releases___electron_releases_2.1.0.tgz";
      path = fetchurl {
        name = "electron_releases___electron_releases_2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/electron-releases/-/electron-releases-2.1.0.tgz";
        sha1 = "c5614bf811f176ce3c836e368a0625782341fd4e";
      };
    }

    {
      name = "electron_to_chromium___electron_to_chromium_1.3.30.tgz";
      path = fetchurl {
        name = "electron_to_chromium___electron_to_chromium_1.3.30.tgz";
        url  = "https://registry.yarnpkg.com/electron-to-chromium/-/electron-to-chromium-1.3.30.tgz";
        sha1 = "9666f532a64586651fc56a72513692e820d06a80";
      };
    }

    {
      name = "elliptic___elliptic_6.4.0.tgz";
      path = fetchurl {
        name = "elliptic___elliptic_6.4.0.tgz";
        url  = "https://registry.yarnpkg.com/elliptic/-/elliptic-6.4.0.tgz";
        sha1 = "cac9af8762c85836187003c8dfe193e5e2eae5df";
      };
    }

    {
      name = "emojione___emojione_2.2.7.tgz";
      path = fetchurl {
        name = "emojione___emojione_2.2.7.tgz";
        url  = "https://registry.yarnpkg.com/emojione/-/emojione-2.2.7.tgz";
        sha1 = "46457cf6b9b2f8da13ae8a2e4e547de06ee15e96";
      };
    }

    {
      name = "encodeurl___encodeurl_1.0.1.tgz";
      path = fetchurl {
        name = "encodeurl___encodeurl_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/encodeurl/-/encodeurl-1.0.1.tgz";
        sha1 = "79e3d58655346909fe6f0f45a5de68103b294d20";
      };
    }

    {
      name = "end_of_stream___end_of_stream_0.1.5.tgz";
      path = fetchurl {
        name = "end_of_stream___end_of_stream_0.1.5.tgz";
        url  = "https://registry.yarnpkg.com/end-of-stream/-/end-of-stream-0.1.5.tgz";
        sha1 = "8e177206c3c80837d85632e8b9359dfe8b2f6eaf";
      };
    }

    {
      name = "error_ex___error_ex_1.3.1.tgz";
      path = fetchurl {
        name = "error_ex___error_ex_1.3.1.tgz";
        url  = "https://registry.yarnpkg.com/error-ex/-/error-ex-1.3.1.tgz";
        sha1 = "f855a86ce61adc4e8621c3cda21e7a7612c3a8dc";
      };
    }

    {
      name = "es_abstract___es_abstract_1.10.0.tgz";
      path = fetchurl {
        name = "es_abstract___es_abstract_1.10.0.tgz";
        url  = "https://registry.yarnpkg.com/es-abstract/-/es-abstract-1.10.0.tgz";
        sha1 = "1ecb36c197842a00d8ee4c2dfd8646bb97d60864";
      };
    }

    {
      name = "es_to_primitive___es_to_primitive_1.1.1.tgz";
      path = fetchurl {
        name = "es_to_primitive___es_to_primitive_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/es-to-primitive/-/es-to-primitive-1.1.1.tgz";
        sha1 = "45355248a88979034b6792e19bb81f2b7975dd0d";
      };
    }

    {
      name = "es6_promise___es6_promise_3.0.2.tgz";
      path = fetchurl {
        name = "es6_promise___es6_promise_3.0.2.tgz";
        url  = "https://registry.yarnpkg.com/es6-promise/-/es6-promise-3.0.2.tgz";
        sha1 = "010d5858423a5f118979665f46486a95c6ee2bb6";
      };
    }

    {
      name = "escape_html___escape_html_1.0.3.tgz";
      path = fetchurl {
        name = "escape_html___escape_html_1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/escape-html/-/escape-html-1.0.3.tgz";
        sha1 = "0258eae4d3d0c0974de1c169188ef0051d1d1988";
      };
    }

    {
      name = "escape_string_regexp___escape_string_regexp_1.0.5.tgz";
      path = fetchurl {
        name = "escape_string_regexp___escape_string_regexp_1.0.5.tgz";
        url  = "https://registry.yarnpkg.com/escape-string-regexp/-/escape-string-regexp-1.0.5.tgz";
        sha1 = "1b61c0562190a8dff6ae3bb2cf0200ca130b86d4";
      };
    }

    {
      name = "escodegen___escodegen_1.9.0.tgz";
      path = fetchurl {
        name = "escodegen___escodegen_1.9.0.tgz";
        url  = "https://registry.yarnpkg.com/escodegen/-/escodegen-1.9.0.tgz";
        sha1 = "9811a2f265dc1cd3894420ee3717064b632b8852";
      };
    }

    {
      name = "esprima_fb___esprima_fb_7001.1.0_dev_harmony_fb.tgz";
      path = fetchurl {
        name = "esprima_fb___esprima_fb_7001.1.0_dev_harmony_fb.tgz";
        url  = "https://registry.yarnpkg.com/esprima-fb/-/esprima-fb-7001.1.0-dev-harmony-fb.tgz";
        sha1 = "907e20919575a667dd1b42335de00cf6646d77b3";
      };
    }

    {
      name = "esprima___esprima_3.1.3.tgz";
      path = fetchurl {
        name = "esprima___esprima_3.1.3.tgz";
        url  = "https://registry.yarnpkg.com/esprima/-/esprima-3.1.3.tgz";
        sha1 = "fdca51cee6133895e3c88d535ce49dbff62a4633";
      };
    }

    {
      name = "esprima___esprima_2.7.3.tgz";
      path = fetchurl {
        name = "esprima___esprima_2.7.3.tgz";
        url  = "https://registry.yarnpkg.com/esprima/-/esprima-2.7.3.tgz";
        sha1 = "96e3b70d5779f6ad49cd032673d1c312767ba581";
      };
    }

    {
      name = "estraverse___estraverse_4.2.0.tgz";
      path = fetchurl {
        name = "estraverse___estraverse_4.2.0.tgz";
        url  = "https://registry.yarnpkg.com/estraverse/-/estraverse-4.2.0.tgz";
        sha1 = "0dee3fed31fcd469618ce7342099fc1afa0bdb13";
      };
    }

    {
      name = "esutils___esutils_2.0.2.tgz";
      path = fetchurl {
        name = "esutils___esutils_2.0.2.tgz";
        url  = "https://registry.yarnpkg.com/esutils/-/esutils-2.0.2.tgz";
        sha1 = "0abf4f1caa5bcb1f7a9d8acc6dea4faaa04bac9b";
      };
    }

    {
      name = "etag___etag_1.8.1.tgz";
      path = fetchurl {
        name = "etag___etag_1.8.1.tgz";
        url  = "https://registry.yarnpkg.com/etag/-/etag-1.8.1.tgz";
        sha1 = "41ae2eeb65efa62268aebfea83ac7d79299b0887";
      };
    }

    {
      name = "event_stream___event_stream_3.3.4.tgz";
      path = fetchurl {
        name = "event_stream___event_stream_3.3.4.tgz";
        url  = "https://registry.yarnpkg.com/event-stream/-/event-stream-3.3.4.tgz";
        sha1 = "4ab4c9a0f5a54db9338b4c34d86bfce8f4b35571";
      };
    }

    {
      name = "event_stream___event_stream_3.3.2.tgz";
      path = fetchurl {
        name = "event_stream___event_stream_3.3.2.tgz";
        url  = "https://registry.yarnpkg.com/event-stream/-/event-stream-3.3.2.tgz";
        sha1 = "3cc310feb1f28d2f62b2a085d736a9ef566378b8";
      };
    }

    {
      name = "events___events_1.1.1.tgz";
      path = fetchurl {
        name = "events___events_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/events/-/events-1.1.1.tgz";
        sha1 = "9ebdb7635ad099c70dcc4c2a1f5004288e8bd924";
      };
    }

    {
      name = "evp_bytestokey___evp_bytestokey_1.0.3.tgz";
      path = fetchurl {
        name = "evp_bytestokey___evp_bytestokey_1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/evp_bytestokey/-/evp_bytestokey-1.0.3.tgz";
        sha1 = "7fcbdb198dc71959432efe13842684e0525acb02";
      };
    }

    {
      name = "execa___execa_0.7.0.tgz";
      path = fetchurl {
        name = "execa___execa_0.7.0.tgz";
        url  = "https://registry.yarnpkg.com/execa/-/execa-0.7.0.tgz";
        sha1 = "944becd34cc41ee32a63a9faf27ad5a65fc59777";
      };
    }

    {
      name = "exit___exit_0.1.2.tgz";
      path = fetchurl {
        name = "exit___exit_0.1.2.tgz";
        url  = "https://registry.yarnpkg.com/exit/-/exit-0.1.2.tgz";
        sha1 = "0632638f8d877cc82107d30a0fff1a17cba1cd0c";
      };
    }

    {
      name = "expand_brackets___expand_brackets_0.1.5.tgz";
      path = fetchurl {
        name = "expand_brackets___expand_brackets_0.1.5.tgz";
        url  = "https://registry.yarnpkg.com/expand-brackets/-/expand-brackets-0.1.5.tgz";
        sha1 = "df07284e342a807cd733ac5af72411e581d1177b";
      };
    }

    {
      name = "expand_brackets___expand_brackets_2.1.4.tgz";
      path = fetchurl {
        name = "expand_brackets___expand_brackets_2.1.4.tgz";
        url  = "https://registry.yarnpkg.com/expand-brackets/-/expand-brackets-2.1.4.tgz";
        sha1 = "b77735e315ce30f6b6eff0f83b04151a22449622";
      };
    }

    {
      name = "expand_range___expand_range_1.8.2.tgz";
      path = fetchurl {
        name = "expand_range___expand_range_1.8.2.tgz";
        url  = "https://registry.yarnpkg.com/expand-range/-/expand-range-1.8.2.tgz";
        sha1 = "a299effd335fe2721ebae8e257ec79644fc85337";
      };
    }

    {
      name = "expand_tilde___expand_tilde_2.0.2.tgz";
      path = fetchurl {
        name = "expand_tilde___expand_tilde_2.0.2.tgz";
        url  = "https://registry.yarnpkg.com/expand-tilde/-/expand-tilde-2.0.2.tgz";
        sha1 = "97e801aa052df02454de46b02bf621642cdc8502";
      };
    }

    {
      name = "extend_shallow___extend_shallow_2.0.1.tgz";
      path = fetchurl {
        name = "extend_shallow___extend_shallow_2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/extend-shallow/-/extend-shallow-2.0.1.tgz";
        sha1 = "51af7d614ad9a9f610ea1bafbb989d6b1c56890f";
      };
    }

    {
      name = "extend_shallow___extend_shallow_3.0.2.tgz";
      path = fetchurl {
        name = "extend_shallow___extend_shallow_3.0.2.tgz";
        url  = "https://registry.yarnpkg.com/extend-shallow/-/extend-shallow-3.0.2.tgz";
        sha1 = "26a71aaf073b39fb2127172746131c2704028db8";
      };
    }

    {
      name = "extend___extend_3.0.1.tgz";
      path = fetchurl {
        name = "extend___extend_3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/extend/-/extend-3.0.1.tgz";
        sha1 = "a755ea7bc1adfcc5a31ce7e762dbaadc5e636444";
      };
    }

    {
      name = "extend___extend_1.3.0.tgz";
      path = fetchurl {
        name = "extend___extend_1.3.0.tgz";
        url  = "https://registry.yarnpkg.com/extend/-/extend-1.3.0.tgz";
        sha1 = "d1516fb0ff5624d2ebf9123ea1dac5a1994004f8";
      };
    }

    {
      name = "extglob___extglob_0.3.2.tgz";
      path = fetchurl {
        name = "extglob___extglob_0.3.2.tgz";
        url  = "https://registry.yarnpkg.com/extglob/-/extglob-0.3.2.tgz";
        sha1 = "2e18ff3d2f49ab2765cec9023f011daa8d8349a1";
      };
    }

    {
      name = "extglob___extglob_2.0.2.tgz";
      path = fetchurl {
        name = "extglob___extglob_2.0.2.tgz";
        url  = "https://registry.yarnpkg.com/extglob/-/extglob-2.0.2.tgz";
        sha1 = "3290f46208db1b2e8eb8be0c94ed9e6ad80edbe2";
      };
    }

    {
      name = "extsprintf___extsprintf_1.3.0.tgz";
      path = fetchurl {
        name = "extsprintf___extsprintf_1.3.0.tgz";
        url  = "https://registry.yarnpkg.com/extsprintf/-/extsprintf-1.3.0.tgz";
        sha1 = "96918440e3041a7a414f8c52e3c574eb3c3e1e05";
      };
    }

    {
      name = "extsprintf___extsprintf_1.4.0.tgz";
      path = fetchurl {
        name = "extsprintf___extsprintf_1.4.0.tgz";
        url  = "https://registry.yarnpkg.com/extsprintf/-/extsprintf-1.4.0.tgz";
        sha1 = "e2689f8f356fad62cca65a3a91c5df5f9551692f";
      };
    }

    {
      name = "falafel___falafel_1.2.0.tgz";
      path = fetchurl {
        name = "falafel___falafel_1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/falafel/-/falafel-1.2.0.tgz";
        sha1 = "c18d24ef5091174a497f318cd24b026a25cddab4";
      };
    }

    {
      name = "falafel___falafel_2.1.0.tgz";
      path = fetchurl {
        name = "falafel___falafel_2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/falafel/-/falafel-2.1.0.tgz";
        sha1 = "96bb17761daba94f46d001738b3cedf3a67fe06c";
      };
    }

    {
      name = "fancy_log___fancy_log_1.3.2.tgz";
      path = fetchurl {
        name = "fancy_log___fancy_log_1.3.2.tgz";
        url  = "https://registry.yarnpkg.com/fancy-log/-/fancy-log-1.3.2.tgz";
        sha1 = "f41125e3d84f2e7d89a43d06d958c8f78be16be1";
      };
    }

    {
      name = "fast_deep_equal___fast_deep_equal_1.0.0.tgz";
      path = fetchurl {
        name = "fast_deep_equal___fast_deep_equal_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/fast-deep-equal/-/fast-deep-equal-1.0.0.tgz";
        sha1 = "96256a3bc975595eb36d82e9929d060d893439ff";
      };
    }

    {
      name = "fast_json_stable_stringify___fast_json_stable_stringify_2.0.0.tgz";
      path = fetchurl {
        name = "fast_json_stable_stringify___fast_json_stable_stringify_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/fast-json-stable-stringify/-/fast-json-stable-stringify-2.0.0.tgz";
        sha1 = "d5142c0caee6b1189f87d3a76111064f86c8bbf2";
      };
    }

    {
      name = "fast_levenshtein___fast_levenshtein_2.0.6.tgz";
      path = fetchurl {
        name = "fast_levenshtein___fast_levenshtein_2.0.6.tgz";
        url  = "https://registry.yarnpkg.com/fast-levenshtein/-/fast-levenshtein-2.0.6.tgz";
        sha1 = "3d8a5c66883a16a30ca8643e851f19baa7797917";
      };
    }

    {
      name = "file_uri_to_path___file_uri_to_path_1.0.0.tgz";
      path = fetchurl {
        name = "file_uri_to_path___file_uri_to_path_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/file-uri-to-path/-/file-uri-to-path-1.0.0.tgz";
        sha1 = "553a7b8446ff6f684359c445f1e37a05dacc33dd";
      };
    }

    {
      name = "filename_regex___filename_regex_2.0.1.tgz";
      path = fetchurl {
        name = "filename_regex___filename_regex_2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/filename-regex/-/filename-regex-2.0.1.tgz";
        sha1 = "c1c4b9bee3e09725ddb106b75c1e301fe2f18b26";
      };
    }

    {
      name = "filesize___filesize_2.0.4.tgz";
      path = fetchurl {
        name = "filesize___filesize_2.0.4.tgz";
        url  = "https://registry.yarnpkg.com/filesize/-/filesize-2.0.4.tgz";
        sha1 = "7805941c60fcdfe63f46d7ea358c59ade11c1325";
      };
    }

    {
      name = "fill_range___fill_range_2.2.3.tgz";
      path = fetchurl {
        name = "fill_range___fill_range_2.2.3.tgz";
        url  = "https://registry.yarnpkg.com/fill-range/-/fill-range-2.2.3.tgz";
        sha1 = "50b77dfd7e469bc7492470963699fe7a8485a723";
      };
    }

    {
      name = "fill_range___fill_range_4.0.0.tgz";
      path = fetchurl {
        name = "fill_range___fill_range_4.0.0.tgz";
        url  = "https://registry.yarnpkg.com/fill-range/-/fill-range-4.0.0.tgz";
        sha1 = "d544811d428f98eb06a63dc402d2403c328c38f7";
      };
    }

    {
      name = "find_index___find_index_0.1.1.tgz";
      path = fetchurl {
        name = "find_index___find_index_0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/find-index/-/find-index-0.1.1.tgz";
        sha1 = "675d358b2ca3892d795a1ab47232f8b6e2e0dde4";
      };
    }

    {
      name = "find_up___find_up_1.1.2.tgz";
      path = fetchurl {
        name = "find_up___find_up_1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/find-up/-/find-up-1.1.2.tgz";
        sha1 = "6b2e9822b1a2ce0a60ab64d610eccad53cb24d0f";
      };
    }

    {
      name = "find_up___find_up_2.1.0.tgz";
      path = fetchurl {
        name = "find_up___find_up_2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/find-up/-/find-up-2.1.0.tgz";
        sha1 = "45d1b7e506c717ddd482775a2b77920a3c0c57a7";
      };
    }

    {
      name = "findup_sync___findup_sync_2.0.0.tgz";
      path = fetchurl {
        name = "findup_sync___findup_sync_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/findup-sync/-/findup-sync-2.0.0.tgz";
        sha1 = "9326b1488c22d1a6088650a86901b2d9a90a2cbc";
      };
    }

    {
      name = "fined___fined_1.1.0.tgz";
      path = fetchurl {
        name = "fined___fined_1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/fined/-/fined-1.1.0.tgz";
        sha1 = "b37dc844b76a2f5e7081e884f7c0ae344f153476";
      };
    }

    {
      name = "first_chunk_stream___first_chunk_stream_1.0.0.tgz";
      path = fetchurl {
        name = "first_chunk_stream___first_chunk_stream_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/first-chunk-stream/-/first-chunk-stream-1.0.0.tgz";
        sha1 = "59bfb50cd905f60d7c394cd3d9acaab4e6ad934e";
      };
    }

    {
      name = "first_chunk_stream___first_chunk_stream_2.0.0.tgz";
      path = fetchurl {
        name = "first_chunk_stream___first_chunk_stream_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/first-chunk-stream/-/first-chunk-stream-2.0.0.tgz";
        sha1 = "1bdecdb8e083c0664b91945581577a43a9f31d70";
      };
    }

    {
      name = "flagged_respawn___flagged_respawn_1.0.0.tgz";
      path = fetchurl {
        name = "flagged_respawn___flagged_respawn_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/flagged-respawn/-/flagged-respawn-1.0.0.tgz";
        sha1 = "4e79ae9b2eb38bf86b3bb56bf3e0a56aa5fcabd7";
      };
    }

    {
      name = "flatten___flatten_1.0.2.tgz";
      path = fetchurl {
        name = "flatten___flatten_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/flatten/-/flatten-1.0.2.tgz";
        sha1 = "dae46a9d78fbe25292258cc1e780a41d95c03782";
      };
    }

    {
      name = "for_in___for_in_1.0.2.tgz";
      path = fetchurl {
        name = "for_in___for_in_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/for-in/-/for-in-1.0.2.tgz";
        sha1 = "81068d295a8142ec0ac726c6e2200c30fb6d5e80";
      };
    }

    {
      name = "for_own___for_own_0.1.5.tgz";
      path = fetchurl {
        name = "for_own___for_own_0.1.5.tgz";
        url  = "https://registry.yarnpkg.com/for-own/-/for-own-0.1.5.tgz";
        sha1 = "5265c681a4f294dabbf17c9509b6763aa84510ce";
      };
    }

    {
      name = "for_own___for_own_1.0.0.tgz";
      path = fetchurl {
        name = "for_own___for_own_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/for-own/-/for-own-1.0.0.tgz";
        sha1 = "c63332f415cedc4b04dbfe70cf836494c53cb44b";
      };
    }

    {
      name = "foreach___foreach_2.0.5.tgz";
      path = fetchurl {
        name = "foreach___foreach_2.0.5.tgz";
        url  = "https://registry.yarnpkg.com/foreach/-/foreach-2.0.5.tgz";
        sha1 = "0bee005018aeb260d0a3af3ae658dd0136ec1b99";
      };
    }

    {
      name = "forever_agent___forever_agent_0.6.1.tgz";
      path = fetchurl {
        name = "forever_agent___forever_agent_0.6.1.tgz";
        url  = "https://registry.yarnpkg.com/forever-agent/-/forever-agent-0.6.1.tgz";
        sha1 = "fbc71f0c41adeb37f96c577ad1ed42d8fdacca91";
      };
    }

    {
      name = "form_data___form_data_2.1.4.tgz";
      path = fetchurl {
        name = "form_data___form_data_2.1.4.tgz";
        url  = "https://registry.yarnpkg.com/form-data/-/form-data-2.1.4.tgz";
        sha1 = "33c183acf193276ecaa98143a69e94bfee1750d1";
      };
    }

    {
      name = "form_data___form_data_2.3.1.tgz";
      path = fetchurl {
        name = "form_data___form_data_2.3.1.tgz";
        url  = "https://registry.yarnpkg.com/form-data/-/form-data-2.3.1.tgz";
        sha1 = "6fb94fbd71885306d73d15cc497fe4cc4ecd44bf";
      };
    }

    {
      name = "fragment_cache___fragment_cache_0.2.1.tgz";
      path = fetchurl {
        name = "fragment_cache___fragment_cache_0.2.1.tgz";
        url  = "https://registry.yarnpkg.com/fragment-cache/-/fragment-cache-0.2.1.tgz";
        sha1 = "4290fad27f13e89be7f33799c6bc5a0abfff0d19";
      };
    }

    {
      name = "fresh___fresh_0.5.2.tgz";
      path = fetchurl {
        name = "fresh___fresh_0.5.2.tgz";
        url  = "https://registry.yarnpkg.com/fresh/-/fresh-0.5.2.tgz";
        sha1 = "3d8cadd90d976569fa835ab1f8e4b23a105605a7";
      };
    }

    {
      name = "from2_string___from2_string_1.1.0.tgz";
      path = fetchurl {
        name = "from2_string___from2_string_1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/from2-string/-/from2-string-1.1.0.tgz";
        sha1 = "18282b27d08a267cb3030cd2b8b4b0f212af752a";
      };
    }

    {
      name = "from2___from2_2.3.0.tgz";
      path = fetchurl {
        name = "from2___from2_2.3.0.tgz";
        url  = "https://registry.yarnpkg.com/from2/-/from2-2.3.0.tgz";
        sha1 = "8bfb5502bde4a4d36cfdeea007fcca21d7e382af";
      };
    }

    {
      name = "from___from_0.1.7.tgz";
      path = fetchurl {
        name = "from___from_0.1.7.tgz";
        url  = "https://registry.yarnpkg.com/from/-/from-0.1.7.tgz";
        sha1 = "83c60afc58b9c56997007ed1a768b3ab303a44fe";
      };
    }

    {
      name = "fs.realpath___fs.realpath_1.0.0.tgz";
      path = fetchurl {
        name = "fs.realpath___fs.realpath_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/fs.realpath/-/fs.realpath-1.0.0.tgz";
        sha1 = "1504ad2523158caa40db4a2787cb01411994ea4f";
      };
    }

    {
      name = "fsevents___fsevents_1.1.3.tgz";
      path = fetchurl {
        name = "fsevents___fsevents_1.1.3.tgz";
        url  = "https://registry.yarnpkg.com/fsevents/-/fsevents-1.1.3.tgz";
        sha1 = "11f82318f5fe7bb2cd22965a108e9306208216d8";
      };
    }

    {
      name = "fstream_ignore___fstream_ignore_1.0.5.tgz";
      path = fetchurl {
        name = "fstream_ignore___fstream_ignore_1.0.5.tgz";
        url  = "https://registry.yarnpkg.com/fstream-ignore/-/fstream-ignore-1.0.5.tgz";
        sha1 = "9c31dae34767018fe1d249b24dada67d092da105";
      };
    }

    {
      name = "fstream___fstream_1.0.11.tgz";
      path = fetchurl {
        name = "fstream___fstream_1.0.11.tgz";
        url  = "https://registry.yarnpkg.com/fstream/-/fstream-1.0.11.tgz";
        sha1 = "5c1fb1f117477114f0632a0eb4b71b3cb0fd3171";
      };
    }

    {
      name = "ftp___ftp_0.3.10.tgz";
      path = fetchurl {
        name = "ftp___ftp_0.3.10.tgz";
        url  = "https://registry.yarnpkg.com/ftp/-/ftp-0.3.10.tgz";
        sha1 = "9197d861ad8142f3e63d5a83bfe4c59f7330885d";
      };
    }

    {
      name = "function_bind___function_bind_1.1.1.tgz";
      path = fetchurl {
        name = "function_bind___function_bind_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/function-bind/-/function-bind-1.1.1.tgz";
        sha1 = "a56899d3ea3c9bab874bb9773b7c5ede92f4895d";
      };
    }

    {
      name = "garnish___garnish_5.2.0.tgz";
      path = fetchurl {
        name = "garnish___garnish_5.2.0.tgz";
        url  = "https://registry.yarnpkg.com/garnish/-/garnish-5.2.0.tgz";
        sha1 = "bed43659382e4b198e33c793897be7c701e65577";
      };
    }

    {
      name = "gauge___gauge_2.7.4.tgz";
      path = fetchurl {
        name = "gauge___gauge_2.7.4.tgz";
        url  = "https://registry.yarnpkg.com/gauge/-/gauge-2.7.4.tgz";
        sha1 = "2c03405c7538c39d7eb37b317022e325fb018bf7";
      };
    }

    {
      name = "gaze___gaze_0.5.2.tgz";
      path = fetchurl {
        name = "gaze___gaze_0.5.2.tgz";
        url  = "https://registry.yarnpkg.com/gaze/-/gaze-0.5.2.tgz";
        sha1 = "40b709537d24d1d45767db5a908689dfe69ac44f";
      };
    }

    {
      name = "gaze___gaze_1.1.2.tgz";
      path = fetchurl {
        name = "gaze___gaze_1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/gaze/-/gaze-1.1.2.tgz";
        sha1 = "847224677adb8870d679257ed3388fdb61e40105";
      };
    }

    {
      name = "geckodriver___geckodriver_1.10.0.tgz";
      path = fetchurl {
        name = "geckodriver___geckodriver_1.10.0.tgz";
        url  = "https://registry.yarnpkg.com/geckodriver/-/geckodriver-1.10.0.tgz";
        sha1 = "73e2f785666521d0d3a9ddc9fd5a0a5e3bf47845";
      };
    }

    {
      name = "generate_function___generate_function_2.0.0.tgz";
      path = fetchurl {
        name = "generate_function___generate_function_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/generate-function/-/generate-function-2.0.0.tgz";
        sha1 = "6858fe7c0969b7d4e9093337647ac79f60dfbe74";
      };
    }

    {
      name = "generate_object_property___generate_object_property_1.2.0.tgz";
      path = fetchurl {
        name = "generate_object_property___generate_object_property_1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/generate-object-property/-/generate-object-property-1.2.0.tgz";
        sha1 = "9c0e1c40308ce804f4783618b937fa88f99d50d0";
      };
    }

    {
      name = "get_caller_file___get_caller_file_1.0.2.tgz";
      path = fetchurl {
        name = "get_caller_file___get_caller_file_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/get-caller-file/-/get-caller-file-1.0.2.tgz";
        sha1 = "f702e63127e7e231c160a80c1554acb70d5047e5";
      };
    }

    {
      name = "get_ports___get_ports_1.0.3.tgz";
      path = fetchurl {
        name = "get_ports___get_ports_1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/get-ports/-/get-ports-1.0.3.tgz";
        sha1 = "f40bd580aca7ec0efb7b96cbfcbeb03ef894b5e8";
      };
    }

    {
      name = "get_stdin___get_stdin_4.0.1.tgz";
      path = fetchurl {
        name = "get_stdin___get_stdin_4.0.1.tgz";
        url  = "https://registry.yarnpkg.com/get-stdin/-/get-stdin-4.0.1.tgz";
        sha1 = "b968c6b0a04384324902e8bf1a5df32579a450fe";
      };
    }

    {
      name = "get_stream___get_stream_3.0.0.tgz";
      path = fetchurl {
        name = "get_stream___get_stream_3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/get-stream/-/get-stream-3.0.0.tgz";
        sha1 = "8e943d1358dc37555054ecbe2edb05aa174ede14";
      };
    }

    {
      name = "get_uri___get_uri_2.0.1.tgz";
      path = fetchurl {
        name = "get_uri___get_uri_2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/get-uri/-/get-uri-2.0.1.tgz";
        sha1 = "dbdcacacd8c608a38316869368117697a1631c59";
      };
    }

    {
      name = "get_value___get_value_2.0.6.tgz";
      path = fetchurl {
        name = "get_value___get_value_2.0.6.tgz";
        url  = "https://registry.yarnpkg.com/get-value/-/get-value-2.0.6.tgz";
        sha1 = "dc15ca1c672387ca76bd37ac0a395ba2042a2c28";
      };
    }

    {
      name = "getpass___getpass_0.1.7.tgz";
      path = fetchurl {
        name = "getpass___getpass_0.1.7.tgz";
        url  = "https://registry.yarnpkg.com/getpass/-/getpass-0.1.7.tgz";
        sha1 = "5eff8e3e684d569ae4cb2b1282604e8ba62149fa";
      };
    }

    {
      name = "glob_base___glob_base_0.3.0.tgz";
      path = fetchurl {
        name = "glob_base___glob_base_0.3.0.tgz";
        url  = "https://registry.yarnpkg.com/glob-base/-/glob-base-0.3.0.tgz";
        sha1 = "dbb164f6221b1c0b1ccf82aea328b497df0ea3c4";
      };
    }

    {
      name = "glob_parent___glob_parent_2.0.0.tgz";
      path = fetchurl {
        name = "glob_parent___glob_parent_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/glob-parent/-/glob-parent-2.0.0.tgz";
        sha1 = "81383d72db054fcccf5336daa902f182f6edbb28";
      };
    }

    {
      name = "glob_parent___glob_parent_3.1.0.tgz";
      path = fetchurl {
        name = "glob_parent___glob_parent_3.1.0.tgz";
        url  = "https://registry.yarnpkg.com/glob-parent/-/glob-parent-3.1.0.tgz";
        sha1 = "9e6af6299d8d3bd2bd40430832bd113df906c5ae";
      };
    }

    {
      name = "glob_stream___glob_stream_3.1.18.tgz";
      path = fetchurl {
        name = "glob_stream___glob_stream_3.1.18.tgz";
        url  = "https://registry.yarnpkg.com/glob-stream/-/glob-stream-3.1.18.tgz";
        sha1 = "9170a5f12b790306fdfe598f313f8f7954fd143b";
      };
    }

    {
      name = "glob_watcher___glob_watcher_0.0.6.tgz";
      path = fetchurl {
        name = "glob_watcher___glob_watcher_0.0.6.tgz";
        url  = "https://registry.yarnpkg.com/glob-watcher/-/glob-watcher-0.0.6.tgz";
        sha1 = "b95b4a8df74b39c83298b0c05c978b4d9a3b710b";
      };
    }

    {
      name = "glob2base___glob2base_0.0.12.tgz";
      path = fetchurl {
        name = "glob2base___glob2base_0.0.12.tgz";
        url  = "https://registry.yarnpkg.com/glob2base/-/glob2base-0.0.12.tgz";
        sha1 = "9d419b3e28f12e83a362164a277055922c9c0d56";
      };
    }

    {
      name = "glob___glob_4.5.3.tgz";
      path = fetchurl {
        name = "glob___glob_4.5.3.tgz";
        url  = "https://registry.yarnpkg.com/glob/-/glob-4.5.3.tgz";
        sha1 = "c6cb73d3226c1efef04de3c56d012f03377ee15f";
      };
    }

    {
      name = "glob___glob_7.0.5.tgz";
      path = fetchurl {
        name = "glob___glob_7.0.5.tgz";
        url  = "https://registry.yarnpkg.com/glob/-/glob-7.0.5.tgz";
        sha1 = "b4202a69099bbb4d292a7c1b95b6682b67ebdc95";
      };
    }

    {
      name = "glob___glob_6.0.4.tgz";
      path = fetchurl {
        name = "glob___glob_6.0.4.tgz";
        url  = "https://registry.yarnpkg.com/glob/-/glob-6.0.4.tgz";
        sha1 = "0f08860f6a155127b2fadd4f9ce24b1aab6e4d22";
      };
    }

    {
      name = "glob___glob_7.1.2.tgz";
      path = fetchurl {
        name = "glob___glob_7.1.2.tgz";
        url  = "https://registry.yarnpkg.com/glob/-/glob-7.1.2.tgz";
        sha1 = "c19c9df9a028702d678612384a6552404c636d15";
      };
    }

    {
      name = "glob___glob_3.1.21.tgz";
      path = fetchurl {
        name = "glob___glob_3.1.21.tgz";
        url  = "https://registry.yarnpkg.com/glob/-/glob-3.1.21.tgz";
        sha1 = "d29e0a055dea5138f4d07ed40e8982e83c2066cd";
      };
    }

    {
      name = "global_modules___global_modules_1.0.0.tgz";
      path = fetchurl {
        name = "global_modules___global_modules_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/global-modules/-/global-modules-1.0.0.tgz";
        sha1 = "6d770f0eb523ac78164d72b5e71a8877265cc3ea";
      };
    }

    {
      name = "global_prefix___global_prefix_1.0.2.tgz";
      path = fetchurl {
        name = "global_prefix___global_prefix_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/global-prefix/-/global-prefix-1.0.2.tgz";
        sha1 = "dbf743c6c14992593c655568cb66ed32c0122ebe";
      };
    }

    {
      name = "globby___globby_5.0.0.tgz";
      path = fetchurl {
        name = "globby___globby_5.0.0.tgz";
        url  = "https://registry.yarnpkg.com/globby/-/globby-5.0.0.tgz";
        sha1 = "ebd84667ca0dbb330b99bcfc68eac2bc54370e0d";
      };
    }

    {
      name = "globby___globby_7.1.1.tgz";
      path = fetchurl {
        name = "globby___globby_7.1.1.tgz";
        url  = "https://registry.yarnpkg.com/globby/-/globby-7.1.1.tgz";
        sha1 = "fb2ccff9401f8600945dfada97440cca972b8680";
      };
    }

    {
      name = "globule___globule_1.2.0.tgz";
      path = fetchurl {
        name = "globule___globule_1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/globule/-/globule-1.2.0.tgz";
        sha1 = "1dc49c6822dd9e8a2fa00ba2a295006e8664bd09";
      };
    }

    {
      name = "globule___globule_0.1.0.tgz";
      path = fetchurl {
        name = "globule___globule_0.1.0.tgz";
        url  = "https://registry.yarnpkg.com/globule/-/globule-0.1.0.tgz";
        sha1 = "d9c8edde1da79d125a151b79533b978676346ae5";
      };
    }

    {
      name = "glogg___glogg_1.0.0.tgz";
      path = fetchurl {
        name = "glogg___glogg_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/glogg/-/glogg-1.0.0.tgz";
        sha1 = "7fe0f199f57ac906cf512feead8f90ee4a284fc5";
      };
    }

    {
      name = "got___got_5.6.0.tgz";
      path = fetchurl {
        name = "got___got_5.6.0.tgz";
        url  = "https://registry.yarnpkg.com/got/-/got-5.6.0.tgz";
        sha1 = "bb1d7ee163b78082bbc8eb836f3f395004ea6fbf";
      };
    }

    {
      name = "graceful_fs___graceful_fs_3.0.11.tgz";
      path = fetchurl {
        name = "graceful_fs___graceful_fs_3.0.11.tgz";
        url  = "https://registry.yarnpkg.com/graceful-fs/-/graceful-fs-3.0.11.tgz";
        sha1 = "7613c778a1afea62f25c630a086d7f3acbbdd818";
      };
    }

    {
      name = "graceful_fs___graceful_fs_4.1.11.tgz";
      path = fetchurl {
        name = "graceful_fs___graceful_fs_4.1.11.tgz";
        url  = "https://registry.yarnpkg.com/graceful-fs/-/graceful-fs-4.1.11.tgz";
        sha1 = "0e8bdfe4d1ddb8854d64e04ea7c00e2a026e5658";
      };
    }

    {
      name = "graceful_fs___graceful_fs_1.2.3.tgz";
      path = fetchurl {
        name = "graceful_fs___graceful_fs_1.2.3.tgz";
        url  = "https://registry.yarnpkg.com/graceful-fs/-/graceful-fs-1.2.3.tgz";
        sha1 = "15a4806a57547cb2d2dbf27f42e89a8c3451b364";
      };
    }

    {
      name = "graceful_fs___graceful_fs_2.0.3.tgz";
      path = fetchurl {
        name = "graceful_fs___graceful_fs_2.0.3.tgz";
        url  = "https://registry.yarnpkg.com/graceful-fs/-/graceful-fs-2.0.3.tgz";
        sha1 = "7cd2cdb228a4a3f36e95efa6cc142de7d1a136d0";
      };
    }

    {
      name = "graceful_readlink___graceful_readlink_1.0.1.tgz";
      path = fetchurl {
        name = "graceful_readlink___graceful_readlink_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/graceful-readlink/-/graceful-readlink-1.0.1.tgz";
        sha1 = "4cafad76bc62f02fa039b2f94e9a3dd3a391a725";
      };
    }

    {
      name = "growl___growl_1.9.2.tgz";
      path = fetchurl {
        name = "growl___growl_1.9.2.tgz";
        url  = "https://registry.yarnpkg.com/growl/-/growl-1.9.2.tgz";
        sha1 = "0ea7743715db8d8de2c5ede1775e1b45ac85c02f";
      };
    }

    {
      name = "gulp_angular_templatecache___gulp_angular_templatecache_1.9.1.tgz";
      path = fetchurl {
        name = "gulp_angular_templatecache___gulp_angular_templatecache_1.9.1.tgz";
        url  = "https://registry.yarnpkg.com/gulp-angular-templatecache/-/gulp-angular-templatecache-1.9.1.tgz";
        sha1 = "60f631e97aaaa765d942e37042e4bfbb1a5df244";
      };
    }

    {
      name = "gulp_autoprefixer___gulp_autoprefixer_4.0.0.tgz";
      path = fetchurl {
        name = "gulp_autoprefixer___gulp_autoprefixer_4.0.0.tgz";
        url  = "https://registry.yarnpkg.com/gulp-autoprefixer/-/gulp-autoprefixer-4.0.0.tgz";
        sha1 = "e00a8c571b85d06516ac26341be90dfd9fc1eab0";
      };
    }

    {
      name = "gulp_coffee___gulp_coffee_2.3.5.tgz";
      path = fetchurl {
        name = "gulp_coffee___gulp_coffee_2.3.5.tgz";
        url  = "https://registry.yarnpkg.com/gulp-coffee/-/gulp-coffee-2.3.5.tgz";
        sha1 = "8c64e9ac884e1bab4e20b66ac7c386a816859041";
      };
    }

    {
      name = "gulp_concat___gulp_concat_2.6.0.tgz";
      path = fetchurl {
        name = "gulp_concat___gulp_concat_2.6.0.tgz";
        url  = "https://registry.yarnpkg.com/gulp-concat/-/gulp-concat-2.6.0.tgz";
        sha1 = "585cfb115411f348773131140566b6a81c69cb91";
      };
    }

    {
      name = "gulp_concat___gulp_concat_2.6.1.tgz";
      path = fetchurl {
        name = "gulp_concat___gulp_concat_2.6.1.tgz";
        url  = "https://registry.yarnpkg.com/gulp-concat/-/gulp-concat-2.6.1.tgz";
        sha1 = "633d16c95d88504628ad02665663cee5a4793353";
      };
    }

    {
      name = "gulp_cssmin___gulp_cssmin_0.1.7.tgz";
      path = fetchurl {
        name = "gulp_cssmin___gulp_cssmin_0.1.7.tgz";
        url  = "https://registry.yarnpkg.com/gulp-cssmin/-/gulp-cssmin-0.1.7.tgz";
        sha1 = "f576fe5211d107baa9401504249bf87aed1556bd";
      };
    }

    {
      name = "gulp_debug___gulp_debug_2.1.2.tgz";
      path = fetchurl {
        name = "gulp_debug___gulp_debug_2.1.2.tgz";
        url  = "https://registry.yarnpkg.com/gulp-debug/-/gulp-debug-2.1.2.tgz";
        sha1 = "2f5fe5f64bcd1f4cf189c160e080c8ad06543094";
      };
    }

    {
      name = "gulp_expect_file___gulp_expect_file_0.0.7.tgz";
      path = fetchurl {
        name = "gulp_expect_file___gulp_expect_file_0.0.7.tgz";
        url  = "https://registry.yarnpkg.com/gulp-expect-file/-/gulp-expect-file-0.0.7.tgz";
        sha1 = "913e731db0dd6f5866149ba400ad835eb34623ad";
      };
    }

    {
      name = "gulp_footer___gulp_footer_1.0.5.tgz";
      path = fetchurl {
        name = "gulp_footer___gulp_footer_1.0.5.tgz";
        url  = "https://registry.yarnpkg.com/gulp-footer/-/gulp-footer-1.0.5.tgz";
        sha1 = "e84ca777e266be7bbc2d45d2df0e7eba8dfa3e54";
      };
    }

    {
      name = "gulp_haml___gulp_haml_0.1.6.tgz";
      path = fetchurl {
        name = "gulp_haml___gulp_haml_0.1.6.tgz";
        url  = "https://registry.yarnpkg.com/gulp-haml/-/gulp-haml-0.1.6.tgz";
        sha1 = "fa41f14d47c342cebae7993f7887803866f61139";
      };
    }

    {
      name = "gulp_header___gulp_header_1.8.2.tgz";
      path = fetchurl {
        name = "gulp_header___gulp_header_1.8.2.tgz";
        url  = "https://registry.yarnpkg.com/gulp-header/-/gulp-header-1.8.2.tgz";
        sha1 = "3ab222f53719d2d03d81d9134252fe7d52425aa4";
      };
    }

    {
      name = "gulp_htmlmin___gulp_htmlmin_1.3.0.tgz";
      path = fetchurl {
        name = "gulp_htmlmin___gulp_htmlmin_1.3.0.tgz";
        url  = "https://registry.yarnpkg.com/gulp-htmlmin/-/gulp-htmlmin-1.3.0.tgz";
        sha1 = "b47fe28feed408a8ec63045d37a9c78c586be202";
      };
    }

    {
      name = "gulp_javascript_to_coffeescript___gulp_javascript_to_coffeescript_1.0.0.tgz";
      path = fetchurl {
        name = "gulp_javascript_to_coffeescript___gulp_javascript_to_coffeescript_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/gulp-javascript-to-coffeescript/-/gulp-javascript-to-coffeescript-1.0.0.tgz";
        sha1 = "119735d663a15c872b1e3f164c19df46003f7907";
      };
    }

    {
      name = "gulp_nightwatch___gulp_nightwatch_0.3.2.tgz";
      path = fetchurl {
        name = "gulp_nightwatch___gulp_nightwatch_0.3.2.tgz";
        url  = "https://registry.yarnpkg.com/gulp-nightwatch/-/gulp-nightwatch-0.3.2.tgz";
        sha1 = "4f65e534716dc8ca54009e90786b1609da01a19e";
      };
    }

    {
      name = "gulp_pipe___gulp_pipe_1.0.4.tgz";
      path = fetchurl {
        name = "gulp_pipe___gulp_pipe_1.0.4.tgz";
        url  = "https://registry.yarnpkg.com/gulp-pipe/-/gulp-pipe-1.0.4.tgz";
        sha1 = "416fa54720f04d101c142acd55d2262e9c0cad63";
      };
    }

    {
      name = "gulp_plumber___gulp_plumber_1.1.0.tgz";
      path = fetchurl {
        name = "gulp_plumber___gulp_plumber_1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/gulp-plumber/-/gulp-plumber-1.1.0.tgz";
        sha1 = "f12176c2d0422f60306c242fff6a01a394faba09";
      };
    }

    {
      name = "gulp_protractor___gulp_protractor_4.1.0.tgz";
      path = fetchurl {
        name = "gulp_protractor___gulp_protractor_4.1.0.tgz";
        url  = "https://registry.yarnpkg.com/gulp-protractor/-/gulp-protractor-4.1.0.tgz";
        sha1 = "be6589d4a35aa3a4daecd4cee8fe468aba08a8ad";
      };
    }

    {
      name = "gulp_rename___gulp_rename_1.2.2.tgz";
      path = fetchurl {
        name = "gulp_rename___gulp_rename_1.2.2.tgz";
        url  = "https://registry.yarnpkg.com/gulp-rename/-/gulp-rename-1.2.2.tgz";
        sha1 = "3ad4428763f05e2764dec1c67d868db275687817";
      };
    }

    {
      name = "gulp_rename___gulp_rename_1.1.0.tgz";
      path = fetchurl {
        name = "gulp_rename___gulp_rename_1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/gulp-rename/-/gulp-rename-1.1.0.tgz";
        sha1 = "93090aaaf4d386c07f20538a6888f15efba727a1";
      };
    }

    {
      name = "gulp_replace___gulp_replace_0.6.1.tgz";
      path = fetchurl {
        name = "gulp_replace___gulp_replace_0.6.1.tgz";
        url  = "https://registry.yarnpkg.com/gulp-replace/-/gulp-replace-0.6.1.tgz";
        sha1 = "11bf8c8fce533e33e2f6a8f2f430b955ba0be066";
      };
    }

    {
      name = "gulp_run_sequence___gulp_run_sequence_0.3.2.tgz";
      path = fetchurl {
        name = "gulp_run_sequence___gulp_run_sequence_0.3.2.tgz";
        url  = "https://registry.yarnpkg.com/gulp-run-sequence/-/gulp-run-sequence-0.3.2.tgz";
        sha1 = "54199804e28a4f28699296b4c9ef4bbeb0701332";
      };
    }

    {
      name = "gulp_sass___gulp_sass_3.1.0.tgz";
      path = fetchurl {
        name = "gulp_sass___gulp_sass_3.1.0.tgz";
        url  = "https://registry.yarnpkg.com/gulp-sass/-/gulp-sass-3.1.0.tgz";
        sha1 = "53dc4b68a1f5ddfe4424ab4c247655269a8b74b7";
      };
    }

    {
      name = "gulp_uglify___gulp_uglify_3.0.0.tgz";
      path = fetchurl {
        name = "gulp_uglify___gulp_uglify_3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/gulp-uglify/-/gulp-uglify-3.0.0.tgz";
        sha1 = "0df0331d72a0d302e3e37e109485dddf33c6d1ca";
      };
    }

    {
      name = "gulp_util___gulp_util_3.0.8.tgz";
      path = fetchurl {
        name = "gulp_util___gulp_util_3.0.8.tgz";
        url  = "https://registry.yarnpkg.com/gulp-util/-/gulp-util-3.0.8.tgz";
        sha1 = "0054e1e744502e27c04c187c3ecc505dd54bbb4f";
      };
    }

    {
      name = "gulp_util___gulp_util_3.0.7.tgz";
      path = fetchurl {
        name = "gulp_util___gulp_util_3.0.7.tgz";
        url  = "https://registry.yarnpkg.com/gulp-util/-/gulp-util-3.0.7.tgz";
        sha1 = "78925c4b8f8b49005ac01a011c557e6218941cbb";
      };
    }

    {
      name = "gulp_util___gulp_util_2.2.20.tgz";
      path = fetchurl {
        name = "gulp_util___gulp_util_2.2.20.tgz";
        url  = "https://registry.yarnpkg.com/gulp-util/-/gulp-util-2.2.20.tgz";
        sha1 = "d7146e5728910bd8f047a6b0b1e549bc22dbd64c";
      };
    }

    {
      name = "gulp_watch___gulp_watch_4.3.11.tgz";
      path = fetchurl {
        name = "gulp_watch___gulp_watch_4.3.11.tgz";
        url  = "https://registry.yarnpkg.com/gulp-watch/-/gulp-watch-4.3.11.tgz";
        sha1 = "162fc563de9fc770e91f9a7ce3955513a9a118c0";
      };
    }

    {
      name = "gulp___gulp_3.9.1.tgz";
      path = fetchurl {
        name = "gulp___gulp_3.9.1.tgz";
        url  = "https://registry.yarnpkg.com/gulp/-/gulp-3.9.1.tgz";
        sha1 = "571ce45928dd40af6514fc4011866016c13845b4";
      };
    }

    {
      name = "gulplog___gulplog_1.0.0.tgz";
      path = fetchurl {
        name = "gulplog___gulplog_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/gulplog/-/gulplog-1.0.0.tgz";
        sha1 = "e28c4d45d05ecbbed818363ce8f9c5926229ffe5";
      };
    }

    {
      name = "haml___haml_0.4.3.tgz";
      path = fetchurl {
        name = "haml___haml_0.4.3.tgz";
        url  = "https://registry.yarnpkg.com/haml/-/haml-0.4.3.tgz";
        sha1 = "f7405318f3c2edd197a48b1b8f2b2f13e0bb5378";
      };
    }

    {
      name = "hamljs___hamljs_0.6.2.tgz";
      path = fetchurl {
        name = "hamljs___hamljs_0.6.2.tgz";
        url  = "https://registry.yarnpkg.com/hamljs/-/hamljs-0.6.2.tgz";
        sha1 = "7b7116cf6dbe7278e42b3f6ef8725a33e177c8e3";
      };
    }

    {
      name = "har_schema___har_schema_1.0.5.tgz";
      path = fetchurl {
        name = "har_schema___har_schema_1.0.5.tgz";
        url  = "https://registry.yarnpkg.com/har-schema/-/har-schema-1.0.5.tgz";
        sha1 = "d263135f43307c02c602afc8fe95970c0151369e";
      };
    }

    {
      name = "har_schema___har_schema_2.0.0.tgz";
      path = fetchurl {
        name = "har_schema___har_schema_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/har-schema/-/har-schema-2.0.0.tgz";
        sha1 = "a94c2224ebcac04782a0d9035521f24735b7ec92";
      };
    }

    {
      name = "har_validator___har_validator_2.0.6.tgz";
      path = fetchurl {
        name = "har_validator___har_validator_2.0.6.tgz";
        url  = "https://registry.yarnpkg.com/har-validator/-/har-validator-2.0.6.tgz";
        sha1 = "cdcbc08188265ad119b6a5a7c8ab70eecfb5d27d";
      };
    }

    {
      name = "har_validator___har_validator_4.2.1.tgz";
      path = fetchurl {
        name = "har_validator___har_validator_4.2.1.tgz";
        url  = "https://registry.yarnpkg.com/har-validator/-/har-validator-4.2.1.tgz";
        sha1 = "33481d0f1bbff600dd203d75812a6a5fba002e2a";
      };
    }

    {
      name = "har_validator___har_validator_5.0.3.tgz";
      path = fetchurl {
        name = "har_validator___har_validator_5.0.3.tgz";
        url  = "https://registry.yarnpkg.com/har-validator/-/har-validator-5.0.3.tgz";
        sha1 = "ba402c266194f15956ef15e0fcf242993f6a7dfd";
      };
    }

    {
      name = "has_ansi___has_ansi_0.1.0.tgz";
      path = fetchurl {
        name = "has_ansi___has_ansi_0.1.0.tgz";
        url  = "https://registry.yarnpkg.com/has-ansi/-/has-ansi-0.1.0.tgz";
        sha1 = "84f265aae8c0e6a88a12d7022894b7568894c62e";
      };
    }

    {
      name = "has_ansi___has_ansi_2.0.0.tgz";
      path = fetchurl {
        name = "has_ansi___has_ansi_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/has-ansi/-/has-ansi-2.0.0.tgz";
        sha1 = "34f5049ce1ecdf2b0649af3ef24e45ed35416d91";
      };
    }

    {
      name = "has_flag___has_flag_1.0.0.tgz";
      path = fetchurl {
        name = "has_flag___has_flag_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/has-flag/-/has-flag-1.0.0.tgz";
        sha1 = "9d9e793165ce017a00f00418c43f942a7b1d11fa";
      };
    }

    {
      name = "has_flag___has_flag_2.0.0.tgz";
      path = fetchurl {
        name = "has_flag___has_flag_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/has-flag/-/has-flag-2.0.0.tgz";
        sha1 = "e8207af1cc7b30d446cc70b734b5e8be18f88d51";
      };
    }

    {
      name = "has_gulplog___has_gulplog_0.1.0.tgz";
      path = fetchurl {
        name = "has_gulplog___has_gulplog_0.1.0.tgz";
        url  = "https://registry.yarnpkg.com/has-gulplog/-/has-gulplog-0.1.0.tgz";
        sha1 = "6414c82913697da51590397dafb12f22967811ce";
      };
    }

    {
      name = "has_unicode___has_unicode_2.0.1.tgz";
      path = fetchurl {
        name = "has_unicode___has_unicode_2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/has-unicode/-/has-unicode-2.0.1.tgz";
        sha1 = "e0e6fe6a28cf51138855e086d1691e771de2a8b9";
      };
    }

    {
      name = "has_value___has_value_0.3.1.tgz";
      path = fetchurl {
        name = "has_value___has_value_0.3.1.tgz";
        url  = "https://registry.yarnpkg.com/has-value/-/has-value-0.3.1.tgz";
        sha1 = "7b1f58bada62ca827ec0a2078025654845995e1f";
      };
    }

    {
      name = "has_value___has_value_1.0.0.tgz";
      path = fetchurl {
        name = "has_value___has_value_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/has-value/-/has-value-1.0.0.tgz";
        sha1 = "18b281da585b1c5c51def24c930ed29a0be6b177";
      };
    }

    {
      name = "has_values___has_values_0.1.4.tgz";
      path = fetchurl {
        name = "has_values___has_values_0.1.4.tgz";
        url  = "https://registry.yarnpkg.com/has-values/-/has-values-0.1.4.tgz";
        sha1 = "6d61de95d91dfca9b9a02089ad384bff8f62b771";
      };
    }

    {
      name = "has_values___has_values_1.0.0.tgz";
      path = fetchurl {
        name = "has_values___has_values_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/has-values/-/has-values-1.0.0.tgz";
        sha1 = "95b0b63fec2146619a6fe57fe75628d5a39efe4f";
      };
    }

    {
      name = "has___has_1.0.1.tgz";
      path = fetchurl {
        name = "has___has_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/has/-/has-1.0.1.tgz";
        sha1 = "8461733f538b0837c9361e39a9ab9e9704dc2f28";
      };
    }

    {
      name = "hash_base___hash_base_2.0.2.tgz";
      path = fetchurl {
        name = "hash_base___hash_base_2.0.2.tgz";
        url  = "https://registry.yarnpkg.com/hash-base/-/hash-base-2.0.2.tgz";
        sha1 = "66ea1d856db4e8a5470cadf6fce23ae5244ef2e1";
      };
    }

    {
      name = "hash_base___hash_base_3.0.4.tgz";
      path = fetchurl {
        name = "hash_base___hash_base_3.0.4.tgz";
        url  = "https://registry.yarnpkg.com/hash-base/-/hash-base-3.0.4.tgz";
        sha1 = "5fc8686847ecd73499403319a6b0a3f3f6ae4918";
      };
    }

    {
      name = "hash_sum___hash_sum_1.0.2.tgz";
      path = fetchurl {
        name = "hash_sum___hash_sum_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/hash-sum/-/hash-sum-1.0.2.tgz";
        sha1 = "33b40777754c6432573c120cc3808bbd10d47f04";
      };
    }

    {
      name = "hash.js___hash.js_1.1.3.tgz";
      path = fetchurl {
        name = "hash.js___hash.js_1.1.3.tgz";
        url  = "https://registry.yarnpkg.com/hash.js/-/hash.js-1.1.3.tgz";
        sha1 = "340dedbe6290187151c1ea1d777a3448935df846";
      };
    }

    {
      name = "hat___hat_0.0.3.tgz";
      path = fetchurl {
        name = "hat___hat_0.0.3.tgz";
        url  = "https://registry.yarnpkg.com/hat/-/hat-0.0.3.tgz";
        sha1 = "bb014a9e64b3788aed8005917413d4ff3d502d8a";
      };
    }

    {
      name = "hawk___hawk_3.1.3.tgz";
      path = fetchurl {
        name = "hawk___hawk_3.1.3.tgz";
        url  = "https://registry.yarnpkg.com/hawk/-/hawk-3.1.3.tgz";
        sha1 = "078444bd7c1640b0fe540d2c9b73d59678e8e1c4";
      };
    }

    {
      name = "hawk___hawk_6.0.2.tgz";
      path = fetchurl {
        name = "hawk___hawk_6.0.2.tgz";
        url  = "https://registry.yarnpkg.com/hawk/-/hawk-6.0.2.tgz";
        sha1 = "af4d914eb065f9b5ce4d9d11c1cb2126eecc3038";
      };
    }

    {
      name = "he___he_1.0.0.tgz";
      path = fetchurl {
        name = "he___he_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/he/-/he-1.0.0.tgz";
        sha1 = "6da5b265d7f2c3b5e480749168e0e159d05728da";
      };
    }

    {
      name = "he___he_1.1.1.tgz";
      path = fetchurl {
        name = "he___he_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/he/-/he-1.1.1.tgz";
        sha1 = "93410fd21b009735151f8868c2f271f3427e23fd";
      };
    }

    {
      name = "hmac_drbg___hmac_drbg_1.0.1.tgz";
      path = fetchurl {
        name = "hmac_drbg___hmac_drbg_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/hmac-drbg/-/hmac-drbg-1.0.1.tgz";
        sha1 = "d2745701025a6c775a6c545793ed502fc0c649a1";
      };
    }

    {
      name = "hoek___hoek_2.16.3.tgz";
      path = fetchurl {
        name = "hoek___hoek_2.16.3.tgz";
        url  = "https://registry.yarnpkg.com/hoek/-/hoek-2.16.3.tgz";
        sha1 = "20bb7403d3cea398e91dc4710a8ff1b8274a25ed";
      };
    }

    {
      name = "hoek___hoek_4.2.0.tgz";
      path = fetchurl {
        name = "hoek___hoek_4.2.0.tgz";
        url  = "https://registry.yarnpkg.com/hoek/-/hoek-4.2.0.tgz";
        sha1 = "72d9d0754f7fe25ca2d01ad8f8f9a9449a89526d";
      };
    }

    {
      name = "homedir_polyfill___homedir_polyfill_1.0.1.tgz";
      path = fetchurl {
        name = "homedir_polyfill___homedir_polyfill_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/homedir-polyfill/-/homedir-polyfill-1.0.1.tgz";
        sha1 = "4c2bbc8a758998feebf5ed68580f76d46768b4bc";
      };
    }

    {
      name = "hosted_git_info___hosted_git_info_2.5.0.tgz";
      path = fetchurl {
        name = "hosted_git_info___hosted_git_info_2.5.0.tgz";
        url  = "https://registry.yarnpkg.com/hosted-git-info/-/hosted-git-info-2.5.0.tgz";
        sha1 = "6d60e34b3abbc8313062c3b798ef8d901a07af3c";
      };
    }

    {
      name = "html_comment_regex___html_comment_regex_1.1.1.tgz";
      path = fetchurl {
        name = "html_comment_regex___html_comment_regex_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/html-comment-regex/-/html-comment-regex-1.1.1.tgz";
        sha1 = "668b93776eaae55ebde8f3ad464b307a4963625e";
      };
    }

    {
      name = "html_minifier___html_minifier_1.5.0.tgz";
      path = fetchurl {
        name = "html_minifier___html_minifier_1.5.0.tgz";
        url  = "https://registry.yarnpkg.com/html-minifier/-/html-minifier-1.5.0.tgz";
        sha1 = "beb05fd9cc340945865c10f40aedf469af4b1534";
      };
    }

    {
      name = "htmlescape___htmlescape_1.1.1.tgz";
      path = fetchurl {
        name = "htmlescape___htmlescape_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/htmlescape/-/htmlescape-1.1.1.tgz";
        sha1 = "3a03edc2214bca3b66424a3e7959349509cb0351";
      };
    }

    {
      name = "http_errors___http_errors_1.6.2.tgz";
      path = fetchurl {
        name = "http_errors___http_errors_1.6.2.tgz";
        url  = "https://registry.yarnpkg.com/http-errors/-/http-errors-1.6.2.tgz";
        sha1 = "0a002cc85707192a7e7946ceedc11155f60ec736";
      };
    }

    {
      name = "http_proxy_agent___http_proxy_agent_1.0.0.tgz";
      path = fetchurl {
        name = "http_proxy_agent___http_proxy_agent_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/http-proxy-agent/-/http-proxy-agent-1.0.0.tgz";
        sha1 = "cc1ce38e453bf984a0f7702d2dd59c73d081284a";
      };
    }

    {
      name = "http_signature___http_signature_1.1.1.tgz";
      path = fetchurl {
        name = "http_signature___http_signature_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/http-signature/-/http-signature-1.1.1.tgz";
        sha1 = "df72e267066cd0ac67fb76adf8e134a8fbcf91bf";
      };
    }

    {
      name = "http_signature___http_signature_1.2.0.tgz";
      path = fetchurl {
        name = "http_signature___http_signature_1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/http-signature/-/http-signature-1.2.0.tgz";
        sha1 = "9aecd925114772f3d95b65a60abb8f7c18fbace1";
      };
    }

    {
      name = "https_browserify___https_browserify_1.0.0.tgz";
      path = fetchurl {
        name = "https_browserify___https_browserify_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/https-browserify/-/https-browserify-1.0.0.tgz";
        sha1 = "ec06c10e0a34c0f2faf199f7fd7fc78fffd03c73";
      };
    }

    {
      name = "https_proxy_agent___https_proxy_agent_1.0.0.tgz";
      path = fetchurl {
        name = "https_proxy_agent___https_proxy_agent_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/https-proxy-agent/-/https-proxy-agent-1.0.0.tgz";
        sha1 = "35f7da6c48ce4ddbfa264891ac593ee5ff8671e6";
      };
    }

    {
      name = "iconv_lite___iconv_lite_0.4.19.tgz";
      path = fetchurl {
        name = "iconv_lite___iconv_lite_0.4.19.tgz";
        url  = "https://registry.yarnpkg.com/iconv-lite/-/iconv-lite-0.4.19.tgz";
        sha1 = "f7468f60135f5e5dad3399c0a81be9a1603a082b";
      };
    }

    {
      name = "ieee754___ieee754_1.1.8.tgz";
      path = fetchurl {
        name = "ieee754___ieee754_1.1.8.tgz";
        url  = "https://registry.yarnpkg.com/ieee754/-/ieee754-1.1.8.tgz";
        sha1 = "be33d40ac10ef1926701f6f08a2d86fbfd1ad3e4";
      };
    }

    {
      name = "ignore___ignore_3.3.7.tgz";
      path = fetchurl {
        name = "ignore___ignore_3.3.7.tgz";
        url  = "https://registry.yarnpkg.com/ignore/-/ignore-3.3.7.tgz";
        sha1 = "612289bfb3c220e186a58118618d5be8c1bab021";
      };
    }

    {
      name = "immediate___immediate_3.0.6.tgz";
      path = fetchurl {
        name = "immediate___immediate_3.0.6.tgz";
        url  = "https://registry.yarnpkg.com/immediate/-/immediate-3.0.6.tgz";
        sha1 = "9db1dbd0faf8de6fbe0f5dd5e56bb606280de69b";
      };
    }

    {
      name = "in_publish___in_publish_2.0.0.tgz";
      path = fetchurl {
        name = "in_publish___in_publish_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/in-publish/-/in-publish-2.0.0.tgz";
        sha1 = "e20ff5e3a2afc2690320b6dc552682a9c7fadf51";
      };
    }

    {
      name = "indent_string___indent_string_2.1.0.tgz";
      path = fetchurl {
        name = "indent_string___indent_string_2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/indent-string/-/indent-string-2.1.0.tgz";
        sha1 = "8e2d48348742121b4a8218b7a137e9a52049dc80";
      };
    }

    {
      name = "indexes_of___indexes_of_1.0.1.tgz";
      path = fetchurl {
        name = "indexes_of___indexes_of_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/indexes-of/-/indexes-of-1.0.1.tgz";
        sha1 = "f30f716c8e2bd346c7b67d3df3915566a7c05607";
      };
    }

    {
      name = "indexof___indexof_0.0.1.tgz";
      path = fetchurl {
        name = "indexof___indexof_0.0.1.tgz";
        url  = "https://registry.yarnpkg.com/indexof/-/indexof-0.0.1.tgz";
        sha1 = "82dc336d232b9062179d05ab3293a66059fd435d";
      };
    }

    {
      name = "individual___individual_3.0.0.tgz";
      path = fetchurl {
        name = "individual___individual_3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/individual/-/individual-3.0.0.tgz";
        sha1 = "e7ca4f85f8957b018734f285750dc22ec2f9862d";
      };
    }

    {
      name = "inflight___inflight_1.0.6.tgz";
      path = fetchurl {
        name = "inflight___inflight_1.0.6.tgz";
        url  = "https://registry.yarnpkg.com/inflight/-/inflight-1.0.6.tgz";
        sha1 = "49bd6331d7d02d0c09bc910a1075ba8165b56df9";
      };
    }

    {
      name = "inherits___inherits_1.0.2.tgz";
      path = fetchurl {
        name = "inherits___inherits_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/inherits/-/inherits-1.0.2.tgz";
        sha1 = "ca4309dadee6b54cc0b8d247e8d7c7a0975bdc9b";
      };
    }

    {
      name = "inherits___inherits_2.0.3.tgz";
      path = fetchurl {
        name = "inherits___inherits_2.0.3.tgz";
        url  = "https://registry.yarnpkg.com/inherits/-/inherits-2.0.3.tgz";
        sha1 = "633c2c83e3da42a502f52466022480f4208261de";
      };
    }

    {
      name = "inherits___inherits_2.0.1.tgz";
      path = fetchurl {
        name = "inherits___inherits_2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/inherits/-/inherits-2.0.1.tgz";
        sha1 = "b17d08d326b4423e568eff719f91b0b1cbdf69f1";
      };
    }

    {
      name = "ini___ini_1.3.5.tgz";
      path = fetchurl {
        name = "ini___ini_1.3.5.tgz";
        url  = "https://registry.yarnpkg.com/ini/-/ini-1.3.5.tgz";
        sha1 = "eee25f56db1c9ec6085e0c22778083f596abf927";
      };
    }

    {
      name = "inject_lr_script___inject_lr_script_2.1.0.tgz";
      path = fetchurl {
        name = "inject_lr_script___inject_lr_script_2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/inject-lr-script/-/inject-lr-script-2.1.0.tgz";
        sha1 = "e61b5e84c118733906cbea01ec3d746698a39f65";
      };
    }

    {
      name = "inline_source_map___inline_source_map_0.5.0.tgz";
      path = fetchurl {
        name = "inline_source_map___inline_source_map_0.5.0.tgz";
        url  = "https://registry.yarnpkg.com/inline-source-map/-/inline-source-map-0.5.0.tgz";
        sha1 = "4a4c5dd8e4fb5e9b3cda60c822dfadcaee66e0af";
      };
    }

    {
      name = "inline_source_map___inline_source_map_0.6.2.tgz";
      path = fetchurl {
        name = "inline_source_map___inline_source_map_0.6.2.tgz";
        url  = "https://registry.yarnpkg.com/inline-source-map/-/inline-source-map-0.6.2.tgz";
        sha1 = "f9393471c18a79d1724f863fa38b586370ade2a5";
      };
    }

    {
      name = "insert_module_globals___insert_module_globals_7.0.1.tgz";
      path = fetchurl {
        name = "insert_module_globals___insert_module_globals_7.0.1.tgz";
        url  = "https://registry.yarnpkg.com/insert-module-globals/-/insert-module-globals-7.0.1.tgz";
        sha1 = "c03bf4e01cb086d5b5e5ace8ad0afe7889d638c3";
      };
    }

    {
      name = "internal_ip___internal_ip_1.2.0.tgz";
      path = fetchurl {
        name = "internal_ip___internal_ip_1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/internal-ip/-/internal-ip-1.2.0.tgz";
        sha1 = "ae9fbf93b984878785d50a8de1b356956058cf5c";
      };
    }

    {
      name = "interpret___interpret_1.1.0.tgz";
      path = fetchurl {
        name = "interpret___interpret_1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/interpret/-/interpret-1.1.0.tgz";
        sha1 = "7ed1b1410c6a0e0f78cf95d3b8440c63f78b8614";
      };
    }

    {
      name = "invert_kv___invert_kv_1.0.0.tgz";
      path = fetchurl {
        name = "invert_kv___invert_kv_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/invert-kv/-/invert-kv-1.0.0.tgz";
        sha1 = "104a8e4aaca6d3d8cd157a8ef8bfab2d7a3ffdb6";
      };
    }

    {
      name = "ip___ip_1.0.1.tgz";
      path = fetchurl {
        name = "ip___ip_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/ip/-/ip-1.0.1.tgz";
        sha1 = "c7e356cdea225ae71b36d70f2e71a92ba4e42590";
      };
    }

    {
      name = "ip___ip_1.1.5.tgz";
      path = fetchurl {
        name = "ip___ip_1.1.5.tgz";
        url  = "https://registry.yarnpkg.com/ip/-/ip-1.1.5.tgz";
        sha1 = "bdded70114290828c0a039e72ef25f5aaec4354a";
      };
    }

    {
      name = "irregular_plurals___irregular_plurals_1.4.0.tgz";
      path = fetchurl {
        name = "irregular_plurals___irregular_plurals_1.4.0.tgz";
        url  = "https://registry.yarnpkg.com/irregular-plurals/-/irregular-plurals-1.4.0.tgz";
        sha1 = "2ca9b033651111855412f16be5d77c62a458a766";
      };
    }

    {
      name = "is_absolute_url___is_absolute_url_2.1.0.tgz";
      path = fetchurl {
        name = "is_absolute_url___is_absolute_url_2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/is-absolute-url/-/is-absolute-url-2.1.0.tgz";
        sha1 = "50530dfb84fcc9aa7dbe7852e83a37b93b9f2aa6";
      };
    }

    {
      name = "is_absolute___is_absolute_1.0.0.tgz";
      path = fetchurl {
        name = "is_absolute___is_absolute_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-absolute/-/is-absolute-1.0.0.tgz";
        sha1 = "395e1ae84b11f26ad1795e73c17378e48a301576";
      };
    }

    {
      name = "is_accessor_descriptor___is_accessor_descriptor_0.1.6.tgz";
      path = fetchurl {
        name = "is_accessor_descriptor___is_accessor_descriptor_0.1.6.tgz";
        url  = "https://registry.yarnpkg.com/is-accessor-descriptor/-/is-accessor-descriptor-0.1.6.tgz";
        sha1 = "a9e12cb3ae8d876727eeef3843f8a0897b5c98d6";
      };
    }

    {
      name = "is_arrayish___is_arrayish_0.2.1.tgz";
      path = fetchurl {
        name = "is_arrayish___is_arrayish_0.2.1.tgz";
        url  = "https://registry.yarnpkg.com/is-arrayish/-/is-arrayish-0.2.1.tgz";
        sha1 = "77c99840527aa8ecb1a8ba697b80645a7a926a9d";
      };
    }

    {
      name = "is_binary_path___is_binary_path_1.0.1.tgz";
      path = fetchurl {
        name = "is_binary_path___is_binary_path_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/is-binary-path/-/is-binary-path-1.0.1.tgz";
        sha1 = "75f16642b480f187a711c814161fd3a4a7655898";
      };
    }

    {
      name = "is_buffer___is_buffer_1.1.6.tgz";
      path = fetchurl {
        name = "is_buffer___is_buffer_1.1.6.tgz";
        url  = "https://registry.yarnpkg.com/is-buffer/-/is-buffer-1.1.6.tgz";
        sha1 = "efaa2ea9daa0d7ab2ea13a97b2b8ad51fefbe8be";
      };
    }

    {
      name = "is_builtin_module___is_builtin_module_1.0.0.tgz";
      path = fetchurl {
        name = "is_builtin_module___is_builtin_module_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-builtin-module/-/is-builtin-module-1.0.0.tgz";
        sha1 = "540572d34f7ac3119f8f76c30cbc1b1e037affbe";
      };
    }

    {
      name = "is_callable___is_callable_1.1.3.tgz";
      path = fetchurl {
        name = "is_callable___is_callable_1.1.3.tgz";
        url  = "https://registry.yarnpkg.com/is-callable/-/is-callable-1.1.3.tgz";
        sha1 = "86eb75392805ddc33af71c92a0eedf74ee7604b2";
      };
    }

    {
      name = "is_data_descriptor___is_data_descriptor_0.1.4.tgz";
      path = fetchurl {
        name = "is_data_descriptor___is_data_descriptor_0.1.4.tgz";
        url  = "https://registry.yarnpkg.com/is-data-descriptor/-/is-data-descriptor-0.1.4.tgz";
        sha1 = "0b5ee648388e2c860282e793f1856fec3f301b56";
      };
    }

    {
      name = "is_date_object___is_date_object_1.0.1.tgz";
      path = fetchurl {
        name = "is_date_object___is_date_object_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/is-date-object/-/is-date-object-1.0.1.tgz";
        sha1 = "9aa20eb6aeebbff77fbd33e74ca01b33581d3a16";
      };
    }

    {
      name = "is_descriptor___is_descriptor_0.1.6.tgz";
      path = fetchurl {
        name = "is_descriptor___is_descriptor_0.1.6.tgz";
        url  = "https://registry.yarnpkg.com/is-descriptor/-/is-descriptor-0.1.6.tgz";
        sha1 = "366d8240dde487ca51823b1ab9f07a10a78251ca";
      };
    }

    {
      name = "is_descriptor___is_descriptor_1.0.1.tgz";
      path = fetchurl {
        name = "is_descriptor___is_descriptor_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/is-descriptor/-/is-descriptor-1.0.1.tgz";
        sha1 = "2c6023599bde2de9d5d2c8b9a9d94082036b6ef2";
      };
    }

    {
      name = "is_dotfile___is_dotfile_1.0.3.tgz";
      path = fetchurl {
        name = "is_dotfile___is_dotfile_1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/is-dotfile/-/is-dotfile-1.0.3.tgz";
        sha1 = "a6a2f32ffd2dfb04f5ca25ecd0f6b83cf798a1e1";
      };
    }

    {
      name = "is_equal_shallow___is_equal_shallow_0.1.3.tgz";
      path = fetchurl {
        name = "is_equal_shallow___is_equal_shallow_0.1.3.tgz";
        url  = "https://registry.yarnpkg.com/is-equal-shallow/-/is-equal-shallow-0.1.3.tgz";
        sha1 = "2238098fc221de0bcfa5d9eac4c45d638aa1c534";
      };
    }

    {
      name = "is_extendable___is_extendable_0.1.1.tgz";
      path = fetchurl {
        name = "is_extendable___is_extendable_0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/is-extendable/-/is-extendable-0.1.1.tgz";
        sha1 = "62b110e289a471418e3ec36a617d472e301dfc89";
      };
    }

    {
      name = "is_extendable___is_extendable_1.0.1.tgz";
      path = fetchurl {
        name = "is_extendable___is_extendable_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/is-extendable/-/is-extendable-1.0.1.tgz";
        sha1 = "a7470f9e426733d81bd81e1155264e3a3507cab4";
      };
    }

    {
      name = "is_extglob___is_extglob_1.0.0.tgz";
      path = fetchurl {
        name = "is_extglob___is_extglob_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-extglob/-/is-extglob-1.0.0.tgz";
        sha1 = "ac468177c4943405a092fc8f29760c6ffc6206c0";
      };
    }

    {
      name = "is_extglob___is_extglob_2.1.1.tgz";
      path = fetchurl {
        name = "is_extglob___is_extglob_2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/is-extglob/-/is-extglob-2.1.1.tgz";
        sha1 = "a88c02535791f02ed37c76a1b9ea9773c833f8c2";
      };
    }

    {
      name = "is_finite___is_finite_1.0.2.tgz";
      path = fetchurl {
        name = "is_finite___is_finite_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/is-finite/-/is-finite-1.0.2.tgz";
        sha1 = "cc6677695602be550ef11e8b4aa6305342b6d0aa";
      };
    }

    {
      name = "is_fullwidth_code_point___is_fullwidth_code_point_1.0.0.tgz";
      path = fetchurl {
        name = "is_fullwidth_code_point___is_fullwidth_code_point_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-fullwidth-code-point/-/is-fullwidth-code-point-1.0.0.tgz";
        sha1 = "ef9e31386f031a7f0d643af82fde50c457ef00cb";
      };
    }

    {
      name = "is_fullwidth_code_point___is_fullwidth_code_point_2.0.0.tgz";
      path = fetchurl {
        name = "is_fullwidth_code_point___is_fullwidth_code_point_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-fullwidth-code-point/-/is-fullwidth-code-point-2.0.0.tgz";
        sha1 = "a3b30a5c4f199183167aaab93beefae3ddfb654f";
      };
    }

    {
      name = "is_glob___is_glob_2.0.1.tgz";
      path = fetchurl {
        name = "is_glob___is_glob_2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/is-glob/-/is-glob-2.0.1.tgz";
        sha1 = "d096f926a3ded5600f3fdfd91198cb0888c2d863";
      };
    }

    {
      name = "is_glob___is_glob_3.1.0.tgz";
      path = fetchurl {
        name = "is_glob___is_glob_3.1.0.tgz";
        url  = "https://registry.yarnpkg.com/is-glob/-/is-glob-3.1.0.tgz";
        sha1 = "7ba5ae24217804ac70707b96922567486cc3e84a";
      };
    }

    {
      name = "is_lower_case___is_lower_case_1.1.3.tgz";
      path = fetchurl {
        name = "is_lower_case___is_lower_case_1.1.3.tgz";
        url  = "https://registry.yarnpkg.com/is-lower-case/-/is-lower-case-1.1.3.tgz";
        sha1 = "7e147be4768dc466db3bfb21cc60b31e6ad69393";
      };
    }

    {
      name = "is_my_json_valid___is_my_json_valid_2.17.1.tgz";
      path = fetchurl {
        name = "is_my_json_valid___is_my_json_valid_2.17.1.tgz";
        url  = "https://registry.yarnpkg.com/is-my-json-valid/-/is-my-json-valid-2.17.1.tgz";
        sha1 = "3da98914a70a22f0a8563ef1511a246c6fc55471";
      };
    }

    {
      name = "is_number___is_number_2.1.0.tgz";
      path = fetchurl {
        name = "is_number___is_number_2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/is-number/-/is-number-2.1.0.tgz";
        sha1 = "01fcbbb393463a548f2f466cce16dece49db908f";
      };
    }

    {
      name = "is_number___is_number_3.0.0.tgz";
      path = fetchurl {
        name = "is_number___is_number_3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-number/-/is-number-3.0.0.tgz";
        sha1 = "24fd6201a4782cf50561c810276afc7d12d71195";
      };
    }

    {
      name = "is_odd___is_odd_1.0.0.tgz";
      path = fetchurl {
        name = "is_odd___is_odd_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-odd/-/is-odd-1.0.0.tgz";
        sha1 = "3b8a932eb028b3775c39bb09e91767accdb69088";
      };
    }

    {
      name = "is_path_cwd___is_path_cwd_1.0.0.tgz";
      path = fetchurl {
        name = "is_path_cwd___is_path_cwd_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-path-cwd/-/is-path-cwd-1.0.0.tgz";
        sha1 = "d225ec23132e89edd38fda767472e62e65f1106d";
      };
    }

    {
      name = "is_path_in_cwd___is_path_in_cwd_1.0.0.tgz";
      path = fetchurl {
        name = "is_path_in_cwd___is_path_in_cwd_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-path-in-cwd/-/is-path-in-cwd-1.0.0.tgz";
        sha1 = "6477582b8214d602346094567003be8a9eac04dc";
      };
    }

    {
      name = "is_path_inside___is_path_inside_1.0.1.tgz";
      path = fetchurl {
        name = "is_path_inside___is_path_inside_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/is-path-inside/-/is-path-inside-1.0.1.tgz";
        sha1 = "8ef5b7de50437a3fdca6b4e865ef7aa55cb48036";
      };
    }

    {
      name = "is_plain_obj___is_plain_obj_1.1.0.tgz";
      path = fetchurl {
        name = "is_plain_obj___is_plain_obj_1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/is-plain-obj/-/is-plain-obj-1.1.0.tgz";
        sha1 = "71a50c8429dfca773c92a390a4a03b39fcd51d3e";
      };
    }

    {
      name = "is_plain_object___is_plain_object_2.0.4.tgz";
      path = fetchurl {
        name = "is_plain_object___is_plain_object_2.0.4.tgz";
        url  = "https://registry.yarnpkg.com/is-plain-object/-/is-plain-object-2.0.4.tgz";
        sha1 = "2c163b3fafb1b606d9d17928f05c2a1c38e07677";
      };
    }

    {
      name = "is_posix_bracket___is_posix_bracket_0.1.1.tgz";
      path = fetchurl {
        name = "is_posix_bracket___is_posix_bracket_0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/is-posix-bracket/-/is-posix-bracket-0.1.1.tgz";
        sha1 = "3334dc79774368e92f016e6fbc0a88f5cd6e6bc4";
      };
    }

    {
      name = "is_primitive___is_primitive_2.0.0.tgz";
      path = fetchurl {
        name = "is_primitive___is_primitive_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-primitive/-/is-primitive-2.0.0.tgz";
        sha1 = "207bab91638499c07b2adf240a41a87210034575";
      };
    }

    {
      name = "is_property___is_property_1.0.2.tgz";
      path = fetchurl {
        name = "is_property___is_property_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/is-property/-/is-property-1.0.2.tgz";
        sha1 = "57fe1c4e48474edd65b09911f26b1cd4095dda84";
      };
    }

    {
      name = "is_redirect___is_redirect_1.0.0.tgz";
      path = fetchurl {
        name = "is_redirect___is_redirect_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-redirect/-/is-redirect-1.0.0.tgz";
        sha1 = "1d03dded53bd8db0f30c26e4f95d36fc7c87dc24";
      };
    }

    {
      name = "is_regex___is_regex_1.0.4.tgz";
      path = fetchurl {
        name = "is_regex___is_regex_1.0.4.tgz";
        url  = "https://registry.yarnpkg.com/is-regex/-/is-regex-1.0.4.tgz";
        sha1 = "5517489b547091b0930e095654ced25ee97e9491";
      };
    }

    {
      name = "is_regexp___is_regexp_1.0.0.tgz";
      path = fetchurl {
        name = "is_regexp___is_regexp_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-regexp/-/is-regexp-1.0.0.tgz";
        sha1 = "fd2d883545c46bac5a633e7b9a09e87fa2cb5069";
      };
    }

    {
      name = "is_relative___is_relative_1.0.0.tgz";
      path = fetchurl {
        name = "is_relative___is_relative_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-relative/-/is-relative-1.0.0.tgz";
        sha1 = "a1bb6935ce8c5dba1e8b9754b9b2dcc020e2260d";
      };
    }

    {
      name = "is_require___is_require_0.0.1.tgz";
      path = fetchurl {
        name = "is_require___is_require_0.0.1.tgz";
        url  = "https://registry.yarnpkg.com/is-require/-/is-require-0.0.1.tgz";
        sha1 = "0d1e6d93e380b35386f474543fffc9a66d41825e";
      };
    }

    {
      name = "is_retry_allowed___is_retry_allowed_1.1.0.tgz";
      path = fetchurl {
        name = "is_retry_allowed___is_retry_allowed_1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/is-retry-allowed/-/is-retry-allowed-1.1.0.tgz";
        sha1 = "11a060568b67339444033d0125a61a20d564fb34";
      };
    }

    {
      name = "is_stream___is_stream_1.1.0.tgz";
      path = fetchurl {
        name = "is_stream___is_stream_1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/is-stream/-/is-stream-1.1.0.tgz";
        sha1 = "12d4a3dd4e68e0b79ceb8dbc84173ae80d91ca44";
      };
    }

    {
      name = "is_svg___is_svg_2.1.0.tgz";
      path = fetchurl {
        name = "is_svg___is_svg_2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/is-svg/-/is-svg-2.1.0.tgz";
        sha1 = "cf61090da0d9efbcab8722deba6f032208dbb0e9";
      };
    }

    {
      name = "is_symbol___is_symbol_1.0.1.tgz";
      path = fetchurl {
        name = "is_symbol___is_symbol_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/is-symbol/-/is-symbol-1.0.1.tgz";
        sha1 = "3cc59f00025194b6ab2e38dbae6689256b660572";
      };
    }

    {
      name = "is_typedarray___is_typedarray_1.0.0.tgz";
      path = fetchurl {
        name = "is_typedarray___is_typedarray_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-typedarray/-/is-typedarray-1.0.0.tgz";
        sha1 = "e479c80858df0c1b11ddda6940f96011fcda4a9a";
      };
    }

    {
      name = "is_unc_path___is_unc_path_1.0.0.tgz";
      path = fetchurl {
        name = "is_unc_path___is_unc_path_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/is-unc-path/-/is-unc-path-1.0.0.tgz";
        sha1 = "d731e8898ed090a12c352ad2eaed5095ad322c9d";
      };
    }

    {
      name = "is_upper_case___is_upper_case_1.1.2.tgz";
      path = fetchurl {
        name = "is_upper_case___is_upper_case_1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/is-upper-case/-/is-upper-case-1.1.2.tgz";
        sha1 = "8d0b1fa7e7933a1e58483600ec7d9661cbaf756f";
      };
    }

    {
      name = "is_utf8___is_utf8_0.2.1.tgz";
      path = fetchurl {
        name = "is_utf8___is_utf8_0.2.1.tgz";
        url  = "https://registry.yarnpkg.com/is-utf8/-/is-utf8-0.2.1.tgz";
        sha1 = "4b0da1442104d1b336340e80797e865cf39f7d72";
      };
    }

    {
      name = "is_windows___is_windows_1.0.1.tgz";
      path = fetchurl {
        name = "is_windows___is_windows_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/is-windows/-/is-windows-1.0.1.tgz";
        sha1 = "310db70f742d259a16a369202b51af84233310d9";
      };
    }

    {
      name = "is___is_3.2.1.tgz";
      path = fetchurl {
        name = "is___is_3.2.1.tgz";
        url  = "https://registry.yarnpkg.com/is/-/is-3.2.1.tgz";
        sha1 = "d0ac2ad55eb7b0bec926a5266f6c662aaa83dca5";
      };
    }

    {
      name = "isarray___isarray_0.0.1.tgz";
      path = fetchurl {
        name = "isarray___isarray_0.0.1.tgz";
        url  = "https://registry.yarnpkg.com/isarray/-/isarray-0.0.1.tgz";
        sha1 = "8a18acfca9a8f4177e09abfc6038939b05d1eedf";
      };
    }

    {
      name = "isarray___isarray_1.0.0.tgz";
      path = fetchurl {
        name = "isarray___isarray_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/isarray/-/isarray-1.0.0.tgz";
        sha1 = "bb935d48582cba168c06834957a54a3e07124f11";
      };
    }

    {
      name = "isexe___isexe_2.0.0.tgz";
      path = fetchurl {
        name = "isexe___isexe_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/isexe/-/isexe-2.0.0.tgz";
        sha1 = "e8fbf374dc556ff8947a10dcb0572d633f2cfa10";
      };
    }

    {
      name = "isobject___isobject_2.1.0.tgz";
      path = fetchurl {
        name = "isobject___isobject_2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/isobject/-/isobject-2.1.0.tgz";
        sha1 = "f065561096a3f1da2ef46272f815c840d87e0c89";
      };
    }

    {
      name = "isobject___isobject_3.0.1.tgz";
      path = fetchurl {
        name = "isobject___isobject_3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/isobject/-/isobject-3.0.1.tgz";
        sha1 = "4e431e92b11a9731636aa1f9c8d1ccbcfdab78df";
      };
    }

    {
      name = "isstream___isstream_0.1.2.tgz";
      path = fetchurl {
        name = "isstream___isstream_0.1.2.tgz";
        url  = "https://registry.yarnpkg.com/isstream/-/isstream-0.1.2.tgz";
        sha1 = "47e63f7af55afa6f92e1500e690eb8b8529c099a";
      };
    }

    {
      name = "istextorbinary___istextorbinary_1.0.2.tgz";
      path = fetchurl {
        name = "istextorbinary___istextorbinary_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/istextorbinary/-/istextorbinary-1.0.2.tgz";
        sha1 = "ace19354d1a9a0173efeb1084ce0f87b0ad7decf";
      };
    }

    {
      name = "jasmine_core___jasmine_core_2.8.0.tgz";
      path = fetchurl {
        name = "jasmine_core___jasmine_core_2.8.0.tgz";
        url  = "https://registry.yarnpkg.com/jasmine-core/-/jasmine-core-2.8.0.tgz";
        sha1 = "bcc979ae1f9fd05701e45e52e65d3a5d63f1a24e";
      };
    }

    {
      name = "jasmine___jasmine_2.8.0.tgz";
      path = fetchurl {
        name = "jasmine___jasmine_2.8.0.tgz";
        url  = "https://registry.yarnpkg.com/jasmine/-/jasmine-2.8.0.tgz";
        sha1 = "6b089c0a11576b1f16df11b80146d91d4e8b8a3e";
      };
    }

    {
      name = "jasminewd2___jasminewd2_2.2.0.tgz";
      path = fetchurl {
        name = "jasminewd2___jasminewd2_2.2.0.tgz";
        url  = "https://registry.yarnpkg.com/jasminewd2/-/jasminewd2-2.2.0.tgz";
        sha1 = "e37cf0b17f199cce23bea71b2039395246b4ec4e";
      };
    }

    {
      name = "js_base64___js_base64_2.4.0.tgz";
      path = fetchurl {
        name = "js_base64___js_base64_2.4.0.tgz";
        url  = "https://registry.yarnpkg.com/js-base64/-/js-base64-2.4.0.tgz";
        sha1 = "9e566fee624751a1d720c966cd6226d29d4025aa";
      };
    }

    {
      name = "js_string_escape___js_string_escape_1.0.1.tgz";
      path = fetchurl {
        name = "js_string_escape___js_string_escape_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/js-string-escape/-/js-string-escape-1.0.1.tgz";
        sha1 = "e2625badbc0d67c7533e9edc1068c587ae4137ef";
      };
    }

    {
      name = "js_yaml___js_yaml_1.0.2.tgz";
      path = fetchurl {
        name = "js_yaml___js_yaml_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/js-yaml/-/js-yaml-1.0.2.tgz";
        sha1 = "ee3f5cebdf1b62d721e573480879d12e919c80d0";
      };
    }

    {
      name = "js_yaml___js_yaml_3.7.0.tgz";
      path = fetchurl {
        name = "js_yaml___js_yaml_3.7.0.tgz";
        url  = "https://registry.yarnpkg.com/js-yaml/-/js-yaml-3.7.0.tgz";
        sha1 = "5c967ddd837a9bfdca5f2de84253abe8a1c03b80";
      };
    }

    {
      name = "js2coffee___js2coffee_2.2.0.tgz";
      path = fetchurl {
        name = "js2coffee___js2coffee_2.2.0.tgz";
        url  = "https://registry.yarnpkg.com/js2coffee/-/js2coffee-2.2.0.tgz";
        sha1 = "821aaef62bbee35a29ea8c0475e20fe9f10043c5";
      };
    }

    {
      name = "jsbn___jsbn_0.1.1.tgz";
      path = fetchurl {
        name = "jsbn___jsbn_0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/jsbn/-/jsbn-0.1.1.tgz";
        sha1 = "a5e654c2e5a2deb5f201d96cefbca80c0ef2f513";
      };
    }

    {
      name = "jsesc___jsesc_0.5.0.tgz";
      path = fetchurl {
        name = "jsesc___jsesc_0.5.0.tgz";
        url  = "https://registry.yarnpkg.com/jsesc/-/jsesc-0.5.0.tgz";
        sha1 = "e7dee66e35d6fc16f710fe91d5cf69f70f08911d";
      };
    }

    {
      name = "json_schema_traverse___json_schema_traverse_0.3.1.tgz";
      path = fetchurl {
        name = "json_schema_traverse___json_schema_traverse_0.3.1.tgz";
        url  = "https://registry.yarnpkg.com/json-schema-traverse/-/json-schema-traverse-0.3.1.tgz";
        sha1 = "349a6d44c53a51de89b40805c5d5e59b417d3340";
      };
    }

    {
      name = "json_schema___json_schema_0.2.3.tgz";
      path = fetchurl {
        name = "json_schema___json_schema_0.2.3.tgz";
        url  = "https://registry.yarnpkg.com/json-schema/-/json-schema-0.2.3.tgz";
        sha1 = "b480c892e59a2f05954ce727bd3f2a4e882f9e13";
      };
    }

    {
      name = "json_stable_stringify___json_stable_stringify_1.0.1.tgz";
      path = fetchurl {
        name = "json_stable_stringify___json_stable_stringify_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/json-stable-stringify/-/json-stable-stringify-1.0.1.tgz";
        sha1 = "9a759d39c5f2ff503fd5300646ed445f88c4f9af";
      };
    }

    {
      name = "json_stable_stringify___json_stable_stringify_0.0.1.tgz";
      path = fetchurl {
        name = "json_stable_stringify___json_stable_stringify_0.0.1.tgz";
        url  = "https://registry.yarnpkg.com/json-stable-stringify/-/json-stable-stringify-0.0.1.tgz";
        sha1 = "611c23e814db375527df851193db59dd2af27f45";
      };
    }

    {
      name = "json_stringify_safe___json_stringify_safe_5.0.1.tgz";
      path = fetchurl {
        name = "json_stringify_safe___json_stringify_safe_5.0.1.tgz";
        url  = "https://registry.yarnpkg.com/json-stringify-safe/-/json-stringify-safe-5.0.1.tgz";
        sha1 = "1296a2d58fd45f19a0f6ce01d65701e2c735b6eb";
      };
    }

    {
      name = "json3___json3_3.3.2.tgz";
      path = fetchurl {
        name = "json3___json3_3.3.2.tgz";
        url  = "https://registry.yarnpkg.com/json3/-/json3-3.3.2.tgz";
        sha1 = "3c0434743df93e2f5c42aee7b19bcb483575f4e1";
      };
    }

    {
      name = "json5___json5_0.5.1.tgz";
      path = fetchurl {
        name = "json5___json5_0.5.1.tgz";
        url  = "https://registry.yarnpkg.com/json5/-/json5-0.5.1.tgz";
        sha1 = "1eade7acc012034ad84e2396767ead9fa5495821";
      };
    }

    {
      name = "jsonify___jsonify_0.0.0.tgz";
      path = fetchurl {
        name = "jsonify___jsonify_0.0.0.tgz";
        url  = "https://registry.yarnpkg.com/jsonify/-/jsonify-0.0.0.tgz";
        sha1 = "2c74b6ee41d93ca51b7b5aaee8f503631d252a73";
      };
    }

    {
      name = "jsonparse___jsonparse_1.3.1.tgz";
      path = fetchurl {
        name = "jsonparse___jsonparse_1.3.1.tgz";
        url  = "https://registry.yarnpkg.com/jsonparse/-/jsonparse-1.3.1.tgz";
        sha1 = "3f4dae4a91fac315f71062f8521cc239f1366280";
      };
    }

    {
      name = "jsonpointer___jsonpointer_4.0.1.tgz";
      path = fetchurl {
        name = "jsonpointer___jsonpointer_4.0.1.tgz";
        url  = "https://registry.yarnpkg.com/jsonpointer/-/jsonpointer-4.0.1.tgz";
        sha1 = "4fd92cb34e0e9db3c89c8622ecf51f9b978c6cb9";
      };
    }

    {
      name = "jsprim___jsprim_1.4.1.tgz";
      path = fetchurl {
        name = "jsprim___jsprim_1.4.1.tgz";
        url  = "https://registry.yarnpkg.com/jsprim/-/jsprim-1.4.1.tgz";
        sha1 = "313e66bc1e5cc06e438bc1b7499c2e5c56acb6a2";
      };
    }

    {
      name = "jstimezonedetect___jstimezonedetect_1.0.6.tgz";
      path = fetchurl {
        name = "jstimezonedetect___jstimezonedetect_1.0.6.tgz";
        url  = "https://registry.yarnpkg.com/jstimezonedetect/-/jstimezonedetect-1.0.6.tgz";
        sha1 = "60d31fbacdbf57af71b064887ee040f1595adb52";
      };
    }

    {
      name = "jszip___jszip_3.1.5.tgz";
      path = fetchurl {
        name = "jszip___jszip_3.1.5.tgz";
        url  = "https://registry.yarnpkg.com/jszip/-/jszip-3.1.5.tgz";
        sha1 = "e3c2a6c6d706ac6e603314036d43cd40beefdf37";
      };
    }

    {
      name = "kind_of___kind_of_3.2.2.tgz";
      path = fetchurl {
        name = "kind_of___kind_of_3.2.2.tgz";
        url  = "https://registry.yarnpkg.com/kind-of/-/kind-of-3.2.2.tgz";
        sha1 = "31ea21a734bab9bbb0f32466d893aea51e4a3c64";
      };
    }

    {
      name = "kind_of___kind_of_4.0.0.tgz";
      path = fetchurl {
        name = "kind_of___kind_of_4.0.0.tgz";
        url  = "https://registry.yarnpkg.com/kind-of/-/kind-of-4.0.0.tgz";
        sha1 = "20813df3d712928b207378691a45066fae72dd57";
      };
    }

    {
      name = "kind_of___kind_of_5.1.0.tgz";
      path = fetchurl {
        name = "kind_of___kind_of_5.1.0.tgz";
        url  = "https://registry.yarnpkg.com/kind-of/-/kind-of-5.1.0.tgz";
        sha1 = "729c91e2d857b7a419a1f9aa65685c4c33f5845d";
      };
    }

    {
      name = "kind_of___kind_of_6.0.2.tgz";
      path = fetchurl {
        name = "kind_of___kind_of_6.0.2.tgz";
        url  = "https://registry.yarnpkg.com/kind-of/-/kind-of-6.0.2.tgz";
        sha1 = "01146b36a6218e64e58f3a8d66de5d7fc6f6d051";
      };
    }

    {
      name = "labeled_stream_splicer___labeled_stream_splicer_2.0.0.tgz";
      path = fetchurl {
        name = "labeled_stream_splicer___labeled_stream_splicer_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/labeled-stream-splicer/-/labeled-stream-splicer-2.0.0.tgz";
        sha1 = "a52e1d138024c00b86b1c0c91f677918b8ae0a59";
      };
    }

    {
      name = "lazy_cache___lazy_cache_1.0.4.tgz";
      path = fetchurl {
        name = "lazy_cache___lazy_cache_1.0.4.tgz";
        url  = "https://registry.yarnpkg.com/lazy-cache/-/lazy-cache-1.0.4.tgz";
        sha1 = "a1d78fc3a50474cb80845d3b3b6e1da49a446e8e";
      };
    }

    {
      name = "lazy_cache___lazy_cache_2.0.2.tgz";
      path = fetchurl {
        name = "lazy_cache___lazy_cache_2.0.2.tgz";
        url  = "https://registry.yarnpkg.com/lazy-cache/-/lazy-cache-2.0.2.tgz";
        sha1 = "b9190a4f913354694840859f8a8f7084d8822264";
      };
    }

    {
      name = "lcid___lcid_1.0.0.tgz";
      path = fetchurl {
        name = "lcid___lcid_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/lcid/-/lcid-1.0.0.tgz";
        sha1 = "308accafa0bc483a3867b4b6f2b9506251d1b835";
      };
    }

    {
      name = "levn___levn_0.3.0.tgz";
      path = fetchurl {
        name = "levn___levn_0.3.0.tgz";
        url  = "https://registry.yarnpkg.com/levn/-/levn-0.3.0.tgz";
        sha1 = "3b09924edf9f083c0490fdd4c0bc4421e04764ee";
      };
    }

    {
      name = "lexical_scope___lexical_scope_1.2.0.tgz";
      path = fetchurl {
        name = "lexical_scope___lexical_scope_1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/lexical-scope/-/lexical-scope-1.2.0.tgz";
        sha1 = "fcea5edc704a4b3a8796cdca419c3a0afaf22df4";
      };
    }

    {
      name = "lie___lie_3.1.1.tgz";
      path = fetchurl {
        name = "lie___lie_3.1.1.tgz";
        url  = "https://registry.yarnpkg.com/lie/-/lie-3.1.1.tgz";
        sha1 = "9a436b2cc7746ca59de7a41fa469b3efb76bd87e";
      };
    }

    {
      name = "liftoff___liftoff_2.5.0.tgz";
      path = fetchurl {
        name = "liftoff___liftoff_2.5.0.tgz";
        url  = "https://registry.yarnpkg.com/liftoff/-/liftoff-2.5.0.tgz";
        sha1 = "2009291bb31cea861bbf10a7c15a28caf75c31ec";
      };
    }

    {
      name = "load_json_file___load_json_file_1.1.0.tgz";
      path = fetchurl {
        name = "load_json_file___load_json_file_1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/load-json-file/-/load-json-file-1.1.0.tgz";
        sha1 = "956905708d58b4bab4c2261b04f59f31c99374c0";
      };
    }

    {
      name = "locate_path___locate_path_2.0.0.tgz";
      path = fetchurl {
        name = "locate_path___locate_path_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/locate-path/-/locate-path-2.0.0.tgz";
        sha1 = "2b568b265eec944c6d9c0de9c3dbbbca0354cd8e";
      };
    }

    {
      name = "lodash._arraycopy___lodash._arraycopy_3.0.0.tgz";
      path = fetchurl {
        name = "lodash._arraycopy___lodash._arraycopy_3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash._arraycopy/-/lodash._arraycopy-3.0.0.tgz";
        sha1 = "76e7b7c1f1fb92547374878a562ed06a3e50f6e1";
      };
    }

    {
      name = "lodash._arrayeach___lodash._arrayeach_3.0.0.tgz";
      path = fetchurl {
        name = "lodash._arrayeach___lodash._arrayeach_3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash._arrayeach/-/lodash._arrayeach-3.0.0.tgz";
        sha1 = "bab156b2a90d3f1bbd5c653403349e5e5933ef9e";
      };
    }

    {
      name = "lodash._baseassign___lodash._baseassign_3.2.0.tgz";
      path = fetchurl {
        name = "lodash._baseassign___lodash._baseassign_3.2.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash._baseassign/-/lodash._baseassign-3.2.0.tgz";
        sha1 = "8c38a099500f215ad09e59f1722fd0c52bfe0a4e";
      };
    }

    {
      name = "lodash._baseclone___lodash._baseclone_3.3.0.tgz";
      path = fetchurl {
        name = "lodash._baseclone___lodash._baseclone_3.3.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash._baseclone/-/lodash._baseclone-3.3.0.tgz";
        sha1 = "303519bf6393fe7e42f34d8b630ef7794e3542b7";
      };
    }

    {
      name = "lodash._baseclone___lodash._baseclone_4.5.7.tgz";
      path = fetchurl {
        name = "lodash._baseclone___lodash._baseclone_4.5.7.tgz";
        url  = "https://registry.yarnpkg.com/lodash._baseclone/-/lodash._baseclone-4.5.7.tgz";
        sha1 = "ce42ade08384ef5d62fa77c30f61a46e686f8434";
      };
    }

    {
      name = "lodash._basecopy___lodash._basecopy_3.0.1.tgz";
      path = fetchurl {
        name = "lodash._basecopy___lodash._basecopy_3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash._basecopy/-/lodash._basecopy-3.0.1.tgz";
        sha1 = "8da0e6a876cf344c0ad8a54882111dd3c5c7ca36";
      };
    }

    {
      name = "lodash._basecreate___lodash._basecreate_3.0.3.tgz";
      path = fetchurl {
        name = "lodash._basecreate___lodash._basecreate_3.0.3.tgz";
        url  = "https://registry.yarnpkg.com/lodash._basecreate/-/lodash._basecreate-3.0.3.tgz";
        sha1 = "1bc661614daa7fc311b7d03bf16806a0213cf821";
      };
    }

    {
      name = "lodash._basefor___lodash._basefor_3.0.3.tgz";
      path = fetchurl {
        name = "lodash._basefor___lodash._basefor_3.0.3.tgz";
        url  = "https://registry.yarnpkg.com/lodash._basefor/-/lodash._basefor-3.0.3.tgz";
        sha1 = "7550b4e9218ef09fad24343b612021c79b4c20c2";
      };
    }

    {
      name = "lodash._basetostring___lodash._basetostring_3.0.1.tgz";
      path = fetchurl {
        name = "lodash._basetostring___lodash._basetostring_3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash._basetostring/-/lodash._basetostring-3.0.1.tgz";
        sha1 = "d1861d877f824a52f669832dcaf3ee15566a07d5";
      };
    }

    {
      name = "lodash._basevalues___lodash._basevalues_3.0.0.tgz";
      path = fetchurl {
        name = "lodash._basevalues___lodash._basevalues_3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash._basevalues/-/lodash._basevalues-3.0.0.tgz";
        sha1 = "5b775762802bde3d3297503e26300820fdf661b7";
      };
    }

    {
      name = "lodash._bindcallback___lodash._bindcallback_3.0.1.tgz";
      path = fetchurl {
        name = "lodash._bindcallback___lodash._bindcallback_3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash._bindcallback/-/lodash._bindcallback-3.0.1.tgz";
        sha1 = "e531c27644cf8b57a99e17ed95b35c748789392e";
      };
    }

    {
      name = "lodash._escapehtmlchar___lodash._escapehtmlchar_2.4.1.tgz";
      path = fetchurl {
        name = "lodash._escapehtmlchar___lodash._escapehtmlchar_2.4.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash._escapehtmlchar/-/lodash._escapehtmlchar-2.4.1.tgz";
        sha1 = "df67c3bb6b7e8e1e831ab48bfa0795b92afe899d";
      };
    }

    {
      name = "lodash._escapestringchar___lodash._escapestringchar_2.4.1.tgz";
      path = fetchurl {
        name = "lodash._escapestringchar___lodash._escapestringchar_2.4.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash._escapestringchar/-/lodash._escapestringchar-2.4.1.tgz";
        sha1 = "ecfe22618a2ade50bfeea43937e51df66f0edb72";
      };
    }

    {
      name = "lodash._getnative___lodash._getnative_3.9.1.tgz";
      path = fetchurl {
        name = "lodash._getnative___lodash._getnative_3.9.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash._getnative/-/lodash._getnative-3.9.1.tgz";
        sha1 = "570bc7dede46d61cdcde687d65d3eecbaa3aaff5";
      };
    }

    {
      name = "lodash._htmlescapes___lodash._htmlescapes_2.4.1.tgz";
      path = fetchurl {
        name = "lodash._htmlescapes___lodash._htmlescapes_2.4.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash._htmlescapes/-/lodash._htmlescapes-2.4.1.tgz";
        sha1 = "32d14bf0844b6de6f8b62a051b4f67c228b624cb";
      };
    }

    {
      name = "lodash._isiterateecall___lodash._isiterateecall_3.0.9.tgz";
      path = fetchurl {
        name = "lodash._isiterateecall___lodash._isiterateecall_3.0.9.tgz";
        url  = "https://registry.yarnpkg.com/lodash._isiterateecall/-/lodash._isiterateecall-3.0.9.tgz";
        sha1 = "5203ad7ba425fae842460e696db9cf3e6aac057c";
      };
    }

    {
      name = "lodash._isnative___lodash._isnative_2.4.1.tgz";
      path = fetchurl {
        name = "lodash._isnative___lodash._isnative_2.4.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash._isnative/-/lodash._isnative-2.4.1.tgz";
        sha1 = "3ea6404b784a7be836c7b57580e1cdf79b14832c";
      };
    }

    {
      name = "lodash._objecttypes___lodash._objecttypes_2.4.1.tgz";
      path = fetchurl {
        name = "lodash._objecttypes___lodash._objecttypes_2.4.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash._objecttypes/-/lodash._objecttypes-2.4.1.tgz";
        sha1 = "7c0b7f69d98a1f76529f890b0cdb1b4dfec11c11";
      };
    }

    {
      name = "lodash._reescape___lodash._reescape_3.0.0.tgz";
      path = fetchurl {
        name = "lodash._reescape___lodash._reescape_3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash._reescape/-/lodash._reescape-3.0.0.tgz";
        sha1 = "2b1d6f5dfe07c8a355753e5f27fac7f1cde1616a";
      };
    }

    {
      name = "lodash._reevaluate___lodash._reevaluate_3.0.0.tgz";
      path = fetchurl {
        name = "lodash._reevaluate___lodash._reevaluate_3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash._reevaluate/-/lodash._reevaluate-3.0.0.tgz";
        sha1 = "58bc74c40664953ae0b124d806996daca431e2ed";
      };
    }

    {
      name = "lodash._reinterpolate___lodash._reinterpolate_2.4.1.tgz";
      path = fetchurl {
        name = "lodash._reinterpolate___lodash._reinterpolate_2.4.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash._reinterpolate/-/lodash._reinterpolate-2.4.1.tgz";
        sha1 = "4f1227aa5a8711fc632f5b07a1f4607aab8b3222";
      };
    }

    {
      name = "lodash._reinterpolate___lodash._reinterpolate_3.0.0.tgz";
      path = fetchurl {
        name = "lodash._reinterpolate___lodash._reinterpolate_3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash._reinterpolate/-/lodash._reinterpolate-3.0.0.tgz";
        sha1 = "0ccf2d89166af03b3663c796538b75ac6e114d9d";
      };
    }

    {
      name = "lodash._reunescapedhtml___lodash._reunescapedhtml_2.4.1.tgz";
      path = fetchurl {
        name = "lodash._reunescapedhtml___lodash._reunescapedhtml_2.4.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash._reunescapedhtml/-/lodash._reunescapedhtml-2.4.1.tgz";
        sha1 = "747c4fc40103eb3bb8a0976e571f7a2659e93ba7";
      };
    }

    {
      name = "lodash._root___lodash._root_3.0.1.tgz";
      path = fetchurl {
        name = "lodash._root___lodash._root_3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash._root/-/lodash._root-3.0.1.tgz";
        sha1 = "fba1c4524c19ee9a5f8136b4609f017cf4ded692";
      };
    }

    {
      name = "lodash._shimkeys___lodash._shimkeys_2.4.1.tgz";
      path = fetchurl {
        name = "lodash._shimkeys___lodash._shimkeys_2.4.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash._shimkeys/-/lodash._shimkeys-2.4.1.tgz";
        sha1 = "6e9cc9666ff081f0b5a6c978b83e242e6949d203";
      };
    }

    {
      name = "lodash._stack___lodash._stack_4.1.3.tgz";
      path = fetchurl {
        name = "lodash._stack___lodash._stack_4.1.3.tgz";
        url  = "https://registry.yarnpkg.com/lodash._stack/-/lodash._stack-4.1.3.tgz";
        sha1 = "751aa76c1b964b047e76d14fc72a093fcb5e2dd0";
      };
    }

    {
      name = "lodash.assign___lodash.assign_4.2.0.tgz";
      path = fetchurl {
        name = "lodash.assign___lodash.assign_4.2.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash.assign/-/lodash.assign-4.2.0.tgz";
        sha1 = "0d99f3ccd7a6d261d19bdaeb9245005d285808e7";
      };
    }

    {
      name = "lodash.clone___lodash.clone_3.0.3.tgz";
      path = fetchurl {
        name = "lodash.clone___lodash.clone_3.0.3.tgz";
        url  = "https://registry.yarnpkg.com/lodash.clone/-/lodash.clone-3.0.3.tgz";
        sha1 = "84688c73d32b5a90ca25616963f189252a997043";
      };
    }

    {
      name = "lodash.clonedeep___lodash.clonedeep_4.5.0.tgz";
      path = fetchurl {
        name = "lodash.clonedeep___lodash.clonedeep_4.5.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash.clonedeep/-/lodash.clonedeep-4.5.0.tgz";
        sha1 = "e23f3f9c4f8fbdde872529c1071857a086e5ccef";
      };
    }

    {
      name = "lodash.create___lodash.create_3.1.1.tgz";
      path = fetchurl {
        name = "lodash.create___lodash.create_3.1.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash.create/-/lodash.create-3.1.1.tgz";
        sha1 = "d7f2849f0dbda7e04682bb8cd72ab022461debe7";
      };
    }

    {
      name = "lodash.defaults___lodash.defaults_2.4.1.tgz";
      path = fetchurl {
        name = "lodash.defaults___lodash.defaults_2.4.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash.defaults/-/lodash.defaults-2.4.1.tgz";
        sha1 = "a7e8885f05e68851144b6e12a8f3678026bc4c54";
      };
    }

    {
      name = "lodash.defaultsdeep___lodash.defaultsdeep_4.3.2.tgz";
      path = fetchurl {
        name = "lodash.defaultsdeep___lodash.defaultsdeep_4.3.2.tgz";
        url  = "https://registry.yarnpkg.com/lodash.defaultsdeep/-/lodash.defaultsdeep-4.3.2.tgz";
        sha1 = "6c1a586e6c5647b0e64e2d798141b8836158be8a";
      };
    }

    {
      name = "lodash.escape___lodash.escape_3.2.0.tgz";
      path = fetchurl {
        name = "lodash.escape___lodash.escape_3.2.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash.escape/-/lodash.escape-3.2.0.tgz";
        sha1 = "995ee0dc18c1b48cc92effae71a10aab5b487698";
      };
    }

    {
      name = "lodash.escape___lodash.escape_2.4.1.tgz";
      path = fetchurl {
        name = "lodash.escape___lodash.escape_2.4.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash.escape/-/lodash.escape-2.4.1.tgz";
        sha1 = "2ce12c5e084db0a57dda5e5d1eeeb9f5d175a3b4";
      };
    }

    {
      name = "lodash.isarguments___lodash.isarguments_3.1.0.tgz";
      path = fetchurl {
        name = "lodash.isarguments___lodash.isarguments_3.1.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash.isarguments/-/lodash.isarguments-3.1.0.tgz";
        sha1 = "2f573d85c6a24289ff00663b491c1d338ff3458a";
      };
    }

    {
      name = "lodash.isarray___lodash.isarray_3.0.4.tgz";
      path = fetchurl {
        name = "lodash.isarray___lodash.isarray_3.0.4.tgz";
        url  = "https://registry.yarnpkg.com/lodash.isarray/-/lodash.isarray-3.0.4.tgz";
        sha1 = "79e4eb88c36a8122af86f844aa9bcd851b5fbb55";
      };
    }

    {
      name = "lodash.isobject___lodash.isobject_2.4.1.tgz";
      path = fetchurl {
        name = "lodash.isobject___lodash.isobject_2.4.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash.isobject/-/lodash.isobject-2.4.1.tgz";
        sha1 = "5a2e47fe69953f1ee631a7eba1fe64d2d06558f5";
      };
    }

    {
      name = "lodash.isplainobject___lodash.isplainobject_4.0.6.tgz";
      path = fetchurl {
        name = "lodash.isplainobject___lodash.isplainobject_4.0.6.tgz";
        url  = "https://registry.yarnpkg.com/lodash.isplainobject/-/lodash.isplainobject-4.0.6.tgz";
        sha1 = "7c526a52d89b45c45cc690b88163be0497f550cb";
      };
    }

    {
      name = "lodash.keys___lodash.keys_3.1.2.tgz";
      path = fetchurl {
        name = "lodash.keys___lodash.keys_3.1.2.tgz";
        url  = "https://registry.yarnpkg.com/lodash.keys/-/lodash.keys-3.1.2.tgz";
        sha1 = "4dbc0472b156be50a0b286855d1bd0b0c656098a";
      };
    }

    {
      name = "lodash.keys___lodash.keys_2.4.1.tgz";
      path = fetchurl {
        name = "lodash.keys___lodash.keys_2.4.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash.keys/-/lodash.keys-2.4.1.tgz";
        sha1 = "48dea46df8ff7632b10d706b8acb26591e2b3727";
      };
    }

    {
      name = "lodash.keysin___lodash.keysin_4.2.0.tgz";
      path = fetchurl {
        name = "lodash.keysin___lodash.keysin_4.2.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash.keysin/-/lodash.keysin-4.2.0.tgz";
        sha1 = "8cc3fb35c2d94acc443a1863e02fa40799ea6f28";
      };
    }

    {
      name = "lodash.memoize___lodash.memoize_4.1.2.tgz";
      path = fetchurl {
        name = "lodash.memoize___lodash.memoize_4.1.2.tgz";
        url  = "https://registry.yarnpkg.com/lodash.memoize/-/lodash.memoize-4.1.2.tgz";
        sha1 = "bcc6c49a42a2840ed997f323eada5ecd182e0bfe";
      };
    }

    {
      name = "lodash.memoize___lodash.memoize_3.0.4.tgz";
      path = fetchurl {
        name = "lodash.memoize___lodash.memoize_3.0.4.tgz";
        url  = "https://registry.yarnpkg.com/lodash.memoize/-/lodash.memoize-3.0.4.tgz";
        sha1 = "2dcbd2c287cbc0a55cc42328bd0c736150d53e3f";
      };
    }

    {
      name = "lodash.mergewith___lodash.mergewith_4.6.1.tgz";
      path = fetchurl {
        name = "lodash.mergewith___lodash.mergewith_4.6.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash.mergewith/-/lodash.mergewith-4.6.1.tgz";
        sha1 = "639057e726c3afbdb3e7d42741caa8d6e4335927";
      };
    }

    {
      name = "lodash.mergewith___lodash.mergewith_4.6.0.tgz";
      path = fetchurl {
        name = "lodash.mergewith___lodash.mergewith_4.6.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash.mergewith/-/lodash.mergewith-4.6.0.tgz";
        sha1 = "150cf0a16791f5903b8891eab154609274bdea55";
      };
    }

    {
      name = "lodash.rest___lodash.rest_4.0.5.tgz";
      path = fetchurl {
        name = "lodash.rest___lodash.rest_4.0.5.tgz";
        url  = "https://registry.yarnpkg.com/lodash.rest/-/lodash.rest-4.0.5.tgz";
        sha1 = "954ef75049262038c96d1fc98b28fdaf9f0772aa";
      };
    }

    {
      name = "lodash.restparam___lodash.restparam_3.6.1.tgz";
      path = fetchurl {
        name = "lodash.restparam___lodash.restparam_3.6.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash.restparam/-/lodash.restparam-3.6.1.tgz";
        sha1 = "936a4e309ef330a7645ed4145986c85ae5b20805";
      };
    }

    {
      name = "lodash.template___lodash.template_2.4.1.tgz";
      path = fetchurl {
        name = "lodash.template___lodash.template_2.4.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash.template/-/lodash.template-2.4.1.tgz";
        sha1 = "9e611007edf629129a974ab3c48b817b3e1cf20d";
      };
    }

    {
      name = "lodash.template___lodash.template_3.6.2.tgz";
      path = fetchurl {
        name = "lodash.template___lodash.template_3.6.2.tgz";
        url  = "https://registry.yarnpkg.com/lodash.template/-/lodash.template-3.6.2.tgz";
        sha1 = "f8cdecc6169a255be9098ae8b0c53d378931d14f";
      };
    }

    {
      name = "lodash.templatesettings___lodash.templatesettings_3.1.1.tgz";
      path = fetchurl {
        name = "lodash.templatesettings___lodash.templatesettings_3.1.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash.templatesettings/-/lodash.templatesettings-3.1.1.tgz";
        sha1 = "fb307844753b66b9f1afa54e262c745307dba8e5";
      };
    }

    {
      name = "lodash.templatesettings___lodash.templatesettings_2.4.1.tgz";
      path = fetchurl {
        name = "lodash.templatesettings___lodash.templatesettings_2.4.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash.templatesettings/-/lodash.templatesettings-2.4.1.tgz";
        sha1 = "ea76c75d11eb86d4dbe89a83893bb861929ac699";
      };
    }

    {
      name = "lodash.uniq___lodash.uniq_4.5.0.tgz";
      path = fetchurl {
        name = "lodash.uniq___lodash.uniq_4.5.0.tgz";
        url  = "https://registry.yarnpkg.com/lodash.uniq/-/lodash.uniq-4.5.0.tgz";
        sha1 = "d0225373aeb652adc1bc82e4945339a842754773";
      };
    }

    {
      name = "lodash.values___lodash.values_2.4.1.tgz";
      path = fetchurl {
        name = "lodash.values___lodash.values_2.4.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash.values/-/lodash.values-2.4.1.tgz";
        sha1 = "abf514436b3cb705001627978cbcf30b1280eea4";
      };
    }

    {
      name = "lodash___lodash_3.10.1.tgz";
      path = fetchurl {
        name = "lodash___lodash_3.10.1.tgz";
        url  = "https://registry.yarnpkg.com/lodash/-/lodash-3.10.1.tgz";
        sha1 = "5bf45e8e49ba4189e17d482789dfd15bd140b7b6";
      };
    }

    {
      name = "lodash___lodash_4.17.4.tgz";
      path = fetchurl {
        name = "lodash___lodash_4.17.4.tgz";
        url  = "https://registry.yarnpkg.com/lodash/-/lodash-4.17.4.tgz";
        sha1 = "78203a4d1c328ae1d86dca6460e369b57f4055ae";
      };
    }

    {
      name = "lodash___lodash_1.0.2.tgz";
      path = fetchurl {
        name = "lodash___lodash_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/lodash/-/lodash-1.0.2.tgz";
        sha1 = "8f57560c83b59fc270bd3d561b690043430e2551";
      };
    }

    {
      name = "lokijs___lokijs_1.5.1.tgz";
      path = fetchurl {
        name = "lokijs___lokijs_1.5.1.tgz";
        url  = "https://registry.yarnpkg.com/lokijs/-/lokijs-1.5.1.tgz";
        sha1 = "7e1b20217142ec2a68ecc5476cbb6c80fc3ffa56";
      };
    }

    {
      name = "longest___longest_1.0.1.tgz";
      path = fetchurl {
        name = "longest___longest_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/longest/-/longest-1.0.1.tgz";
        sha1 = "30a0b2da38f73770e8294a0d22e6625ed77d0097";
      };
    }

    {
      name = "loomio_angular_marked___loomio_angular_marked_1.2.4.tgz";
      path = fetchurl {
        name = "loomio_angular_marked___loomio_angular_marked_1.2.4.tgz";
        url  = "https://registry.yarnpkg.com/loomio-angular-marked/-/loomio-angular-marked-1.2.4.tgz";
        sha1 = "a8be05ca64d7eff98e1ceedd70ab8b76f0a6f411";
      };
    }

    {
      name = "router";
      path = let repo = fetchgit {
          name = "router";
          url = "git://github.com/loomio/router";
          rev = "4af3b95674216b6a415b802322f5e44b78351d06";
          sha256 = "0394a6i96gf43sijxvq1jjg50d529s849crwnayq66140qd7fymj";
        };
      in runCommandNoCC "router" {buildInputs = [gnutar];} ''
        # Set u+w because tar-fs can't unpack archives with read-only dirs
        # https://github.com/mafintosh/tar-fs/issues/79
        tar cf $out --mode u+w -C ${repo} .
      '';
    }

    {
      name = "loud_rejection___loud_rejection_1.6.0.tgz";
      path = fetchurl {
        name = "loud_rejection___loud_rejection_1.6.0.tgz";
        url  = "https://registry.yarnpkg.com/loud-rejection/-/loud-rejection-1.6.0.tgz";
        sha1 = "5b46f80147edee578870f086d04821cf998e551f";
      };
    }

    {
      name = "lower_case_first___lower_case_first_1.0.2.tgz";
      path = fetchurl {
        name = "lower_case_first___lower_case_first_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/lower-case-first/-/lower-case-first-1.0.2.tgz";
        sha1 = "e5da7c26f29a7073be02d52bac9980e5922adfa1";
      };
    }

    {
      name = "lower_case___lower_case_1.1.4.tgz";
      path = fetchurl {
        name = "lower_case___lower_case_1.1.4.tgz";
        url  = "https://registry.yarnpkg.com/lower-case/-/lower-case-1.1.4.tgz";
        sha1 = "9a2cabd1b9e8e0ae993a4bf7d5875c39c42e8eac";
      };
    }

    {
      name = "lowercase_keys___lowercase_keys_1.0.0.tgz";
      path = fetchurl {
        name = "lowercase_keys___lowercase_keys_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/lowercase-keys/-/lowercase-keys-1.0.0.tgz";
        sha1 = "4e3366b39e7f5457e35f1324bdf6f88d0bfc7306";
      };
    }

    {
      name = "lru_cache___lru_cache_2.7.3.tgz";
      path = fetchurl {
        name = "lru_cache___lru_cache_2.7.3.tgz";
        url  = "https://registry.yarnpkg.com/lru-cache/-/lru-cache-2.7.3.tgz";
        sha1 = "6d4524e8b955f95d4f5b58851ce21dd72fb4e952";
      };
    }

    {
      name = "lru_cache___lru_cache_4.1.1.tgz";
      path = fetchurl {
        name = "lru_cache___lru_cache_4.1.1.tgz";
        url  = "https://registry.yarnpkg.com/lru-cache/-/lru-cache-4.1.1.tgz";
        sha1 = "622e32e82488b49279114a4f9ecf45e7cd6bba55";
      };
    }

    {
      name = "lru_cache___lru_cache_2.6.5.tgz";
      path = fetchurl {
        name = "lru_cache___lru_cache_2.6.5.tgz";
        url  = "https://registry.yarnpkg.com/lru-cache/-/lru-cache-2.6.5.tgz";
        sha1 = "e56d6354148ede8d7707b58d143220fd08df0fd5";
      };
    }

    {
      name = "macaddress___macaddress_0.2.8.tgz";
      path = fetchurl {
        name = "macaddress___macaddress_0.2.8.tgz";
        url  = "https://registry.yarnpkg.com/macaddress/-/macaddress-0.2.8.tgz";
        sha1 = "5904dc537c39ec6dbefeae902327135fa8511f12";
      };
    }

    {
      name = "make_error_cause___make_error_cause_1.2.2.tgz";
      path = fetchurl {
        name = "make_error_cause___make_error_cause_1.2.2.tgz";
        url  = "https://registry.yarnpkg.com/make-error-cause/-/make-error-cause-1.2.2.tgz";
        sha1 = "df0388fcd0b37816dff0a5fb8108939777dcbc9d";
      };
    }

    {
      name = "make_error___make_error_1.3.2.tgz";
      path = fetchurl {
        name = "make_error___make_error_1.3.2.tgz";
        url  = "https://registry.yarnpkg.com/make-error/-/make-error-1.3.2.tgz";
        sha1 = "8762ffad2444dd8ff1f7c819629fa28e24fea1c4";
      };
    }

    {
      name = "make_iterator___make_iterator_1.0.0.tgz";
      path = fetchurl {
        name = "make_iterator___make_iterator_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/make-iterator/-/make-iterator-1.0.0.tgz";
        sha1 = "57bef5dc85d23923ba23767324d8e8f8f3d9694b";
      };
    }

    {
      name = "map_cache___map_cache_0.2.2.tgz";
      path = fetchurl {
        name = "map_cache___map_cache_0.2.2.tgz";
        url  = "https://registry.yarnpkg.com/map-cache/-/map-cache-0.2.2.tgz";
        sha1 = "c32abd0bd6525d9b051645bb4f26ac5dc98a0dbf";
      };
    }

    {
      name = "map_limit___map_limit_0.0.1.tgz";
      path = fetchurl {
        name = "map_limit___map_limit_0.0.1.tgz";
        url  = "https://registry.yarnpkg.com/map-limit/-/map-limit-0.0.1.tgz";
        sha1 = "eb7961031c0f0e8d001bf2d56fab685d58822f38";
      };
    }

    {
      name = "map_obj___map_obj_1.0.1.tgz";
      path = fetchurl {
        name = "map_obj___map_obj_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/map-obj/-/map-obj-1.0.1.tgz";
        sha1 = "d933ceb9205d82bdcf4886f6742bdc2b4dea146d";
      };
    }

    {
      name = "map_stream___map_stream_0.0.4.tgz";
      path = fetchurl {
        name = "map_stream___map_stream_0.0.4.tgz";
        url  = "https://registry.yarnpkg.com/map-stream/-/map-stream-0.0.4.tgz";
        sha1 = "5ec6de90213ef6c7b2eb9367e9ade8da4efdb68b";
      };
    }

    {
      name = "map_stream___map_stream_0.1.0.tgz";
      path = fetchurl {
        name = "map_stream___map_stream_0.1.0.tgz";
        url  = "https://registry.yarnpkg.com/map-stream/-/map-stream-0.1.0.tgz";
        sha1 = "e56aa94c4c8055a16404a0674b78f215f7c8e194";
      };
    }

    {
      name = "map_visit___map_visit_1.0.0.tgz";
      path = fetchurl {
        name = "map_visit___map_visit_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/map-visit/-/map-visit-1.0.0.tgz";
        sha1 = "ecdca8f13144e660f1b5bd41f12f3479d98dfb8f";
      };
    }

    {
      name = "marked___marked_0.3.12.tgz";
      path = fetchurl {
        name = "marked___marked_0.3.12.tgz";
        url  = "https://registry.yarnpkg.com/marked/-/marked-0.3.12.tgz";
        sha1 = "7cf25ff2252632f3fe2406bde258e94eee927519";
      };
    }

    {
      name = "math_expression_evaluator___math_expression_evaluator_1.2.17.tgz";
      path = fetchurl {
        name = "math_expression_evaluator___math_expression_evaluator_1.2.17.tgz";
        url  = "https://registry.yarnpkg.com/math-expression-evaluator/-/math-expression-evaluator-1.2.17.tgz";
        sha1 = "de819fdbcd84dccd8fae59c6aeb79615b9d266ac";
      };
    }

    {
      name = "md5.js___md5.js_1.3.4.tgz";
      path = fetchurl {
        name = "md5.js___md5.js_1.3.4.tgz";
        url  = "https://registry.yarnpkg.com/md5.js/-/md5.js-1.3.4.tgz";
        sha1 = "e9bdbde94a20a5ac18b04340fc5764d5b09d901d";
      };
    }

    {
      name = "md5___md5_2.2.1.tgz";
      path = fetchurl {
        name = "md5___md5_2.2.1.tgz";
        url  = "https://registry.yarnpkg.com/md5/-/md5-2.2.1.tgz";
        sha1 = "53ab38d5fe3c8891ba465329ea23fac0540126f9";
      };
    }

    {
      name = "mdi___mdi_2.1.19.tgz";
      path = fetchurl {
        name = "mdi___mdi_2.1.19.tgz";
        url  = "https://registry.yarnpkg.com/mdi/-/mdi-2.1.19.tgz";
        sha1 = "492bfc0c4fd0c510ebd55301cc76eb03a7a2f34b";
      };
    }

    {
      name = "mem___mem_1.1.0.tgz";
      path = fetchurl {
        name = "mem___mem_1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/mem/-/mem-1.1.0.tgz";
        sha1 = "5edd52b485ca1d900fe64895505399a0dfa45f76";
      };
    }

    {
      name = "ment.io___ment.io_0.9.23.tgz";
      path = fetchurl {
        name = "ment.io___ment.io_0.9.23.tgz";
        url  = "https://registry.yarnpkg.com/ment.io/-/ment.io-0.9.23.tgz";
        sha1 = "bb9b5d548295824a8bfc68bfdd66cbbcd1d82545";
      };
    }

    {
      name = "meow___meow_3.7.0.tgz";
      path = fetchurl {
        name = "meow___meow_3.7.0.tgz";
        url  = "https://registry.yarnpkg.com/meow/-/meow-3.7.0.tgz";
        sha1 = "72cb668b425228290abbfa856892587308a801fb";
      };
    }

    {
      name = "merge___merge_1.2.0.tgz";
      path = fetchurl {
        name = "merge___merge_1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/merge/-/merge-1.2.0.tgz";
        sha1 = "7531e39d4949c281a66b8c5a6e0265e8b05894da";
      };
    }

    {
      name = "micromatch___micromatch_2.3.11.tgz";
      path = fetchurl {
        name = "micromatch___micromatch_2.3.11.tgz";
        url  = "https://registry.yarnpkg.com/micromatch/-/micromatch-2.3.11.tgz";
        sha1 = "86677c97d1720b363431d04d0d15293bd38c1565";
      };
    }

    {
      name = "micromatch___micromatch_3.1.4.tgz";
      path = fetchurl {
        name = "micromatch___micromatch_3.1.4.tgz";
        url  = "https://registry.yarnpkg.com/micromatch/-/micromatch-3.1.4.tgz";
        sha1 = "bb812e741a41f982c854e42b421a7eac458796f4";
      };
    }

    {
      name = "miller_rabin___miller_rabin_4.0.1.tgz";
      path = fetchurl {
        name = "miller_rabin___miller_rabin_4.0.1.tgz";
        url  = "https://registry.yarnpkg.com/miller-rabin/-/miller-rabin-4.0.1.tgz";
        sha1 = "f080351c865b0dc562a8462966daa53543c78a4d";
      };
    }

    {
      name = "mime_db___mime_db_1.30.0.tgz";
      path = fetchurl {
        name = "mime_db___mime_db_1.30.0.tgz";
        url  = "https://registry.yarnpkg.com/mime-db/-/mime-db-1.30.0.tgz";
        sha1 = "74c643da2dd9d6a45399963465b26d5ca7d71f01";
      };
    }

    {
      name = "mime_types___mime_types_2.1.17.tgz";
      path = fetchurl {
        name = "mime_types___mime_types_2.1.17.tgz";
        url  = "https://registry.yarnpkg.com/mime-types/-/mime-types-2.1.17.tgz";
        sha1 = "09d7a393f03e995a79f8af857b70a9e0ab16557a";
      };
    }

    {
      name = "mime___mime_1.4.1.tgz";
      path = fetchurl {
        name = "mime___mime_1.4.1.tgz";
        url  = "https://registry.yarnpkg.com/mime/-/mime-1.4.1.tgz";
        sha1 = "121f9ebc49e3766f311a76e1fa1c8003c4b03aa6";
      };
    }

    {
      name = "mimic_fn___mimic_fn_1.2.0.tgz";
      path = fetchurl {
        name = "mimic_fn___mimic_fn_1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/mimic-fn/-/mimic-fn-1.2.0.tgz";
        sha1 = "820c86a39334640e99516928bd03fca88057d022";
      };
    }

    {
      name = "minimalistic_assert___minimalistic_assert_1.0.0.tgz";
      path = fetchurl {
        name = "minimalistic_assert___minimalistic_assert_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/minimalistic-assert/-/minimalistic-assert-1.0.0.tgz";
        sha1 = "702be2dda6b37f4836bcb3f5db56641b64a1d3d3";
      };
    }

    {
      name = "minimalistic_crypto_utils___minimalistic_crypto_utils_1.0.1.tgz";
      path = fetchurl {
        name = "minimalistic_crypto_utils___minimalistic_crypto_utils_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/minimalistic-crypto-utils/-/minimalistic-crypto-utils-1.0.1.tgz";
        sha1 = "f6c00c1c0b082246e5c4d99dfb8c7c083b2b582a";
      };
    }

    {
      name = "minimatch___minimatch_3.0.4.tgz";
      path = fetchurl {
        name = "minimatch___minimatch_3.0.4.tgz";
        url  = "https://registry.yarnpkg.com/minimatch/-/minimatch-3.0.4.tgz";
        sha1 = "5166e286457f03306064be5497e8dbb0c3d32083";
      };
    }

    {
      name = "minimatch___minimatch_3.0.3.tgz";
      path = fetchurl {
        name = "minimatch___minimatch_3.0.3.tgz";
        url  = "https://registry.yarnpkg.com/minimatch/-/minimatch-3.0.3.tgz";
        sha1 = "2a4e4090b96b2db06a9d7df01055a62a77c9b774";
      };
    }

    {
      name = "minimatch___minimatch_0.3.0.tgz";
      path = fetchurl {
        name = "minimatch___minimatch_0.3.0.tgz";
        url  = "https://registry.yarnpkg.com/minimatch/-/minimatch-0.3.0.tgz";
        sha1 = "275d8edaac4f1bb3326472089e7949c8394699dd";
      };
    }

    {
      name = "minimatch___minimatch_2.0.10.tgz";
      path = fetchurl {
        name = "minimatch___minimatch_2.0.10.tgz";
        url  = "https://registry.yarnpkg.com/minimatch/-/minimatch-2.0.10.tgz";
        sha1 = "8d087c39c6b38c001b97fca7ce6d0e1e80afbac7";
      };
    }

    {
      name = "minimatch___minimatch_0.2.14.tgz";
      path = fetchurl {
        name = "minimatch___minimatch_0.2.14.tgz";
        url  = "https://registry.yarnpkg.com/minimatch/-/minimatch-0.2.14.tgz";
        sha1 = "c74e780574f63c6f9a090e90efbe6ef53a6a756a";
      };
    }

    {
      name = "minimist___minimist_0.0.8.tgz";
      path = fetchurl {
        name = "minimist___minimist_0.0.8.tgz";
        url  = "https://registry.yarnpkg.com/minimist/-/minimist-0.0.8.tgz";
        sha1 = "857fcabfc3397d2625b8228262e86aa7a011b05d";
      };
    }

    {
      name = "minimist___minimist_0.2.0.tgz";
      path = fetchurl {
        name = "minimist___minimist_0.2.0.tgz";
        url  = "https://registry.yarnpkg.com/minimist/-/minimist-0.2.0.tgz";
        sha1 = "4dffe525dae2b864c66c2e23c6271d7afdecefce";
      };
    }

    {
      name = "minimist___minimist_1.2.0.tgz";
      path = fetchurl {
        name = "minimist___minimist_1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/minimist/-/minimist-1.2.0.tgz";
        sha1 = "a35008b20f41383eec1fb914f4cd5df79a264284";
      };
    }

    {
      name = "minimist___minimist_0.0.10.tgz";
      path = fetchurl {
        name = "minimist___minimist_0.0.10.tgz";
        url  = "https://registry.yarnpkg.com/minimist/-/minimist-0.0.10.tgz";
        sha1 = "de3f98543dbf96082be48ad1a0c7cda836301dcf";
      };
    }

    {
      name = "minipass___minipass_2.2.1.tgz";
      path = fetchurl {
        name = "minipass___minipass_2.2.1.tgz";
        url  = "https://registry.yarnpkg.com/minipass/-/minipass-2.2.1.tgz";
        sha1 = "5ada97538b1027b4cf7213432428578cb564011f";
      };
    }

    {
      name = "minizlib___minizlib_1.1.0.tgz";
      path = fetchurl {
        name = "minizlib___minizlib_1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/minizlib/-/minizlib-1.1.0.tgz";
        sha1 = "11e13658ce46bc3a70a267aac58359d1e0c29ceb";
      };
    }

    {
      name = "mixin_deep___mixin_deep_1.3.0.tgz";
      path = fetchurl {
        name = "mixin_deep___mixin_deep_1.3.0.tgz";
        url  = "https://registry.yarnpkg.com/mixin-deep/-/mixin-deep-1.3.0.tgz";
        sha1 = "47a8732ba97799457c8c1eca28f95132d7e8150a";
      };
    }

    {
      name = "mkdirp___mkdirp_0.5.1.tgz";
      path = fetchurl {
        name = "mkdirp___mkdirp_0.5.1.tgz";
        url  = "https://registry.yarnpkg.com/mkdirp/-/mkdirp-0.5.1.tgz";
        sha1 = "30057438eac6cf7f8c4767f38648d6697d75c903";
      };
    }

    {
      name = "mkpath___mkpath_1.0.0.tgz";
      path = fetchurl {
        name = "mkpath___mkpath_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/mkpath/-/mkpath-1.0.0.tgz";
        sha1 = "ebb3a977e7af1c683ae6fda12b545a6ba6c5853d";
      };
    }

    {
      name = "mocha_nightwatch___mocha_nightwatch_3.2.2.tgz";
      path = fetchurl {
        name = "mocha_nightwatch___mocha_nightwatch_3.2.2.tgz";
        url  = "https://registry.yarnpkg.com/mocha-nightwatch/-/mocha-nightwatch-3.2.2.tgz";
        sha1 = "91bcb9b3bde057dd7677c78125e491e58d66647c";
      };
    }

    {
      name = "module_deps___module_deps_4.1.1.tgz";
      path = fetchurl {
        name = "module_deps___module_deps_4.1.1.tgz";
        url  = "https://registry.yarnpkg.com/module-deps/-/module-deps-4.1.1.tgz";
        sha1 = "23215833f1da13fd606ccb8087b44852dcb821fd";
      };
    }

    {
      name = "moment_timezone___moment_timezone_0.5.14.tgz";
      path = fetchurl {
        name = "moment_timezone___moment_timezone_0.5.14.tgz";
        url  = "https://registry.yarnpkg.com/moment-timezone/-/moment-timezone-0.5.14.tgz";
        sha1 = "4eb38ff9538b80108ba467a458f3ed4268ccfcb1";
      };
    }

    {
      name = "moment___moment_2.20.1.tgz";
      path = fetchurl {
        name = "moment___moment_2.20.1.tgz";
        url  = "https://registry.yarnpkg.com/moment/-/moment-2.20.1.tgz";
        sha1 = "d6eb1a46cbcc14a2b2f9434112c1ff8907f313fd";
      };
    }

    {
      name = "ms___ms_0.7.1.tgz";
      path = fetchurl {
        name = "ms___ms_0.7.1.tgz";
        url  = "https://registry.yarnpkg.com/ms/-/ms-0.7.1.tgz";
        sha1 = "9cd13c03adbff25b65effde7ce864ee952017098";
      };
    }

    {
      name = "ms___ms_2.0.0.tgz";
      path = fetchurl {
        name = "ms___ms_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/ms/-/ms-2.0.0.tgz";
        sha1 = "5608aeadfc00be6c2901df5f9861788de0d597c8";
      };
    }

    {
      name = "multipipe___multipipe_0.1.2.tgz";
      path = fetchurl {
        name = "multipipe___multipipe_0.1.2.tgz";
        url  = "https://registry.yarnpkg.com/multipipe/-/multipipe-0.1.2.tgz";
        sha1 = "2a8f2ddf70eed564dff2d57f1e1a137d9f05078b";
      };
    }

    {
      name = "nan___nan_2.8.0.tgz";
      path = fetchurl {
        name = "nan___nan_2.8.0.tgz";
        url  = "https://registry.yarnpkg.com/nan/-/nan-2.8.0.tgz";
        sha1 = "ed715f3fe9de02b57a5e6252d90a96675e1f085a";
      };
    }

    {
      name = "nanomatch___nanomatch_1.2.6.tgz";
      path = fetchurl {
        name = "nanomatch___nanomatch_1.2.6.tgz";
        url  = "https://registry.yarnpkg.com/nanomatch/-/nanomatch-1.2.6.tgz";
        sha1 = "f27233e97c34a8706b7e781a4bc611c957a81625";
      };
    }

    {
      name = "natives___natives_1.1.1.tgz";
      path = fetchurl {
        name = "natives___natives_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/natives/-/natives-1.1.1.tgz";
        sha1 = "011acce1f7cbd87f7ba6b3093d6cd9392be1c574";
      };
    }

    {
      name = "ncname___ncname_1.0.0.tgz";
      path = fetchurl {
        name = "ncname___ncname_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/ncname/-/ncname-1.0.0.tgz";
        sha1 = "5b57ad18b1ca092864ef62b0b1ed8194f383b71c";
      };
    }

    {
      name = "netmask___netmask_1.0.6.tgz";
      path = fetchurl {
        name = "netmask___netmask_1.0.6.tgz";
        url  = "https://registry.yarnpkg.com/netmask/-/netmask-1.0.6.tgz";
        sha1 = "20297e89d86f6f6400f250d9f4f6b4c1945fcd35";
      };
    }

    {
      name = "ng_annotate___ng_annotate_1.2.2.tgz";
      path = fetchurl {
        name = "ng_annotate___ng_annotate_1.2.2.tgz";
        url  = "https://registry.yarnpkg.com/ng-annotate/-/ng-annotate-1.2.2.tgz";
        sha1 = "dc3fc51ba0b2f8b385dbe047f4da06f580a1fd61";
      };
    }

    {
      name = "nightwatch___nightwatch_0.9.19.tgz";
      path = fetchurl {
        name = "nightwatch___nightwatch_0.9.19.tgz";
        url  = "https://registry.yarnpkg.com/nightwatch/-/nightwatch-0.9.19.tgz";
        sha1 = "4bd9757273d30b845f04847a98b71be9bb7c4b3b";
      };
    }

    {
      name = "node_gyp___node_gyp_3.6.2.tgz";
      path = fetchurl {
        name = "node_gyp___node_gyp_3.6.2.tgz";
        url  = "https://registry.yarnpkg.com/node-gyp/-/node-gyp-3.6.2.tgz";
        sha1 = "9bfbe54562286284838e750eac05295853fa1c60";
      };
    }

    {
      name = "node_pre_gyp___node_pre_gyp_0.6.39.tgz";
      path = fetchurl {
        name = "node_pre_gyp___node_pre_gyp_0.6.39.tgz";
        url  = "https://registry.yarnpkg.com/node-pre-gyp/-/node-pre-gyp-0.6.39.tgz";
        sha1 = "c00e96860b23c0e1420ac7befc5044e1d78d8649";
      };
    }

    {
      name = "node_sass___node_sass_4.7.2.tgz";
      path = fetchurl {
        name = "node_sass___node_sass_4.7.2.tgz";
        url  = "https://registry.yarnpkg.com/node-sass/-/node-sass-4.7.2.tgz";
        sha1 = "9366778ba1469eb01438a9e8592f4262bcb6794e";
      };
    }

    {
      name = "node_status_codes___node_status_codes_1.0.0.tgz";
      path = fetchurl {
        name = "node_status_codes___node_status_codes_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/node-status-codes/-/node-status-codes-1.0.0.tgz";
        sha1 = "5ae5541d024645d32a58fcddc9ceecea7ae3ac2f";
      };
    }

    {
      name = "node_yaml_config___node_yaml_config_0.0.3.tgz";
      path = fetchurl {
        name = "node_yaml_config___node_yaml_config_0.0.3.tgz";
        url  = "https://registry.yarnpkg.com/node-yaml-config/-/node-yaml-config-0.0.3.tgz";
        sha1 = "a794481e3772802e62a5f158c7c7bfffcc63d8f6";
      };
    }

    {
      name = "node.extend___node.extend_1.1.6.tgz";
      path = fetchurl {
        name = "node.extend___node.extend_1.1.6.tgz";
        url  = "https://registry.yarnpkg.com/node.extend/-/node.extend-1.1.6.tgz";
        sha1 = "a7b882c82d6c93a4863a5504bd5de8ec86258b96";
      };
    }

    {
      name = "nopt___nopt_3.0.6.tgz";
      path = fetchurl {
        name = "nopt___nopt_3.0.6.tgz";
        url  = "https://registry.yarnpkg.com/nopt/-/nopt-3.0.6.tgz";
        sha1 = "c6465dbf08abcd4db359317f79ac68a646b28ff9";
      };
    }

    {
      name = "nopt___nopt_4.0.1.tgz";
      path = fetchurl {
        name = "nopt___nopt_4.0.1.tgz";
        url  = "https://registry.yarnpkg.com/nopt/-/nopt-4.0.1.tgz";
        sha1 = "d0d4685afd5415193c8c7505602d0d17cd64474d";
      };
    }

    {
      name = "normalize_package_data___normalize_package_data_2.4.0.tgz";
      path = fetchurl {
        name = "normalize_package_data___normalize_package_data_2.4.0.tgz";
        url  = "https://registry.yarnpkg.com/normalize-package-data/-/normalize-package-data-2.4.0.tgz";
        sha1 = "12f95a307d58352075a04907b84ac8be98ac012f";
      };
    }

    {
      name = "normalize_path___normalize_path_2.1.1.tgz";
      path = fetchurl {
        name = "normalize_path___normalize_path_2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/normalize-path/-/normalize-path-2.1.1.tgz";
        sha1 = "1ab28b556e198363a8c1a6f7e6fa20137fe6aed9";
      };
    }

    {
      name = "normalize_range___normalize_range_0.1.2.tgz";
      path = fetchurl {
        name = "normalize_range___normalize_range_0.1.2.tgz";
        url  = "https://registry.yarnpkg.com/normalize-range/-/normalize-range-0.1.2.tgz";
        sha1 = "2d10c06bdfd312ea9777695a4d28439456b75942";
      };
    }

    {
      name = "normalize_url___normalize_url_1.9.1.tgz";
      path = fetchurl {
        name = "normalize_url___normalize_url_1.9.1.tgz";
        url  = "https://registry.yarnpkg.com/normalize-url/-/normalize-url-1.9.1.tgz";
        sha1 = "2cc0d66b31ea23036458436e3620d85954c66c3c";
      };
    }

    {
      name = "npm_run_path___npm_run_path_2.0.2.tgz";
      path = fetchurl {
        name = "npm_run_path___npm_run_path_2.0.2.tgz";
        url  = "https://registry.yarnpkg.com/npm-run-path/-/npm-run-path-2.0.2.tgz";
        sha1 = "35a9232dfa35d7067b4cb2ddf2357b1871536c5f";
      };
    }

    {
      name = "npmlog___npmlog_4.1.2.tgz";
      path = fetchurl {
        name = "npmlog___npmlog_4.1.2.tgz";
        url  = "https://registry.yarnpkg.com/npmlog/-/npmlog-4.1.2.tgz";
        sha1 = "08a7f2a8bf734604779a9efa4ad5cc717abb954b";
      };
    }

    {
      name = "num2fraction___num2fraction_1.2.2.tgz";
      path = fetchurl {
        name = "num2fraction___num2fraction_1.2.2.tgz";
        url  = "https://registry.yarnpkg.com/num2fraction/-/num2fraction-1.2.2.tgz";
        sha1 = "6f682b6a027a4e9ddfa4564cd2589d1d4e669ede";
      };
    }

    {
      name = "number_is_nan___number_is_nan_1.0.1.tgz";
      path = fetchurl {
        name = "number_is_nan___number_is_nan_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/number-is-nan/-/number-is-nan-1.0.1.tgz";
        sha1 = "097b602b53422a522c1afb8790318336941a011d";
      };
    }

    {
      name = "oauth_sign___oauth_sign_0.8.2.tgz";
      path = fetchurl {
        name = "oauth_sign___oauth_sign_0.8.2.tgz";
        url  = "https://registry.yarnpkg.com/oauth-sign/-/oauth-sign-0.8.2.tgz";
        sha1 = "46a6ab7f0aead8deae9ec0565780b7d4efeb9d43";
      };
    }

    {
      name = "object_assign___object_assign_4.1.1.tgz";
      path = fetchurl {
        name = "object_assign___object_assign_4.1.1.tgz";
        url  = "https://registry.yarnpkg.com/object-assign/-/object-assign-4.1.1.tgz";
        sha1 = "2109adc7965887cfc05cbbd442cac8bfbb360863";
      };
    }

    {
      name = "object_assign___object_assign_3.0.0.tgz";
      path = fetchurl {
        name = "object_assign___object_assign_3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/object-assign/-/object-assign-3.0.0.tgz";
        sha1 = "9bedd5ca0897949bca47e7ff408062d549f587f2";
      };
    }

    {
      name = "object_copy___object_copy_0.1.0.tgz";
      path = fetchurl {
        name = "object_copy___object_copy_0.1.0.tgz";
        url  = "https://registry.yarnpkg.com/object-copy/-/object-copy-0.1.0.tgz";
        sha1 = "7e7d858b781bd7c991a41ba975ed3812754e998c";
      };
    }

    {
      name = "object_keys___object_keys_1.0.11.tgz";
      path = fetchurl {
        name = "object_keys___object_keys_1.0.11.tgz";
        url  = "https://registry.yarnpkg.com/object-keys/-/object-keys-1.0.11.tgz";
        sha1 = "c54601778ad560f1142ce0e01bcca8b56d13426d";
      };
    }

    {
      name = "object_visit___object_visit_1.0.1.tgz";
      path = fetchurl {
        name = "object_visit___object_visit_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/object-visit/-/object-visit-1.0.1.tgz";
        sha1 = "f79c4493af0c5377b59fe39d395e41042dd045bb";
      };
    }

    {
      name = "object.defaults___object.defaults_1.1.0.tgz";
      path = fetchurl {
        name = "object.defaults___object.defaults_1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/object.defaults/-/object.defaults-1.1.0.tgz";
        sha1 = "3a7f868334b407dea06da16d88d5cd29e435fecf";
      };
    }

    {
      name = "object.map___object.map_1.0.0.tgz";
      path = fetchurl {
        name = "object.map___object.map_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/object.map/-/object.map-1.0.0.tgz";
        sha1 = "92aef871cd6dcbced31fe29c0921db8395624597";
      };
    }

    {
      name = "object.omit___object.omit_2.0.1.tgz";
      path = fetchurl {
        name = "object.omit___object.omit_2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/object.omit/-/object.omit-2.0.1.tgz";
        sha1 = "1a9c744829f39dbb858c76ca3579ae2a54ebd1fa";
      };
    }

    {
      name = "object.pick___object.pick_1.3.0.tgz";
      path = fetchurl {
        name = "object.pick___object.pick_1.3.0.tgz";
        url  = "https://registry.yarnpkg.com/object.pick/-/object.pick-1.3.0.tgz";
        sha1 = "87a10ac4c1694bd2e1cbf53591a66141fb5dd747";
      };
    }

    {
      name = "on_finished___on_finished_2.3.0.tgz";
      path = fetchurl {
        name = "on_finished___on_finished_2.3.0.tgz";
        url  = "https://registry.yarnpkg.com/on-finished/-/on-finished-2.3.0.tgz";
        sha1 = "20f1336481b083cd75337992a16971aa2d906947";
      };
    }

    {
      name = "on_headers___on_headers_1.0.1.tgz";
      path = fetchurl {
        name = "on_headers___on_headers_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/on-headers/-/on-headers-1.0.1.tgz";
        sha1 = "928f5d0f470d49342651ea6794b0857c100693f7";
      };
    }

    {
      name = "once___once_1.4.0.tgz";
      path = fetchurl {
        name = "once___once_1.4.0.tgz";
        url  = "https://registry.yarnpkg.com/once/-/once-1.4.0.tgz";
        sha1 = "583b1aa775961d4b113ac17d9c50baef9dd76bd1";
      };
    }

    {
      name = "once___once_1.3.3.tgz";
      path = fetchurl {
        name = "once___once_1.3.3.tgz";
        url  = "https://registry.yarnpkg.com/once/-/once-1.3.3.tgz";
        sha1 = "b2e261557ce4c314ec8304f3fa82663e4297ca20";
      };
    }

    {
      name = "opn___opn_3.0.3.tgz";
      path = fetchurl {
        name = "opn___opn_3.0.3.tgz";
        url  = "https://registry.yarnpkg.com/opn/-/opn-3.0.3.tgz";
        sha1 = "b6d99e7399f78d65c3baaffef1fb288e9b85243a";
      };
    }

    {
      name = "optimist___optimist_0.6.1.tgz";
      path = fetchurl {
        name = "optimist___optimist_0.6.1.tgz";
        url  = "https://registry.yarnpkg.com/optimist/-/optimist-0.6.1.tgz";
        sha1 = "da3ea74686fa21a19a111c326e90eb15a0196686";
      };
    }

    {
      name = "optionator___optionator_0.8.2.tgz";
      path = fetchurl {
        name = "optionator___optionator_0.8.2.tgz";
        url  = "https://registry.yarnpkg.com/optionator/-/optionator-0.8.2.tgz";
        sha1 = "364c5e409d3f4d6301d6c0b4c05bba50180aeb64";
      };
    }

    {
      name = "options___options_0.0.6.tgz";
      path = fetchurl {
        name = "options___options_0.0.6.tgz";
        url  = "https://registry.yarnpkg.com/options/-/options-0.0.6.tgz";
        sha1 = "ec22d312806bb53e731773e7cdaefcf1c643128f";
      };
    }

    {
      name = "orchestrator___orchestrator_0.3.8.tgz";
      path = fetchurl {
        name = "orchestrator___orchestrator_0.3.8.tgz";
        url  = "https://registry.yarnpkg.com/orchestrator/-/orchestrator-0.3.8.tgz";
        sha1 = "14e7e9e2764f7315fbac184e506c7aa6df94ad7e";
      };
    }

    {
      name = "ordered_ast_traverse___ordered_ast_traverse_1.1.1.tgz";
      path = fetchurl {
        name = "ordered_ast_traverse___ordered_ast_traverse_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/ordered-ast-traverse/-/ordered-ast-traverse-1.1.1.tgz";
        sha1 = "6843a170bc0eee8b520cc8ddc1ddd3aa30fa057c";
      };
    }

    {
      name = "ordered_esprima_props___ordered_esprima_props_1.1.0.tgz";
      path = fetchurl {
        name = "ordered_esprima_props___ordered_esprima_props_1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/ordered-esprima-props/-/ordered-esprima-props-1.1.0.tgz";
        sha1 = "a9827086df5f010aa60e9bd02b6e0335cea2ffcb";
      };
    }

    {
      name = "ordered_read_streams___ordered_read_streams_0.1.0.tgz";
      path = fetchurl {
        name = "ordered_read_streams___ordered_read_streams_0.1.0.tgz";
        url  = "https://registry.yarnpkg.com/ordered-read-streams/-/ordered-read-streams-0.1.0.tgz";
        sha1 = "fd565a9af8eb4473ba69b6ed8a34352cb552f126";
      };
    }

    {
      name = "os_browserify___os_browserify_0.3.0.tgz";
      path = fetchurl {
        name = "os_browserify___os_browserify_0.3.0.tgz";
        url  = "https://registry.yarnpkg.com/os-browserify/-/os-browserify-0.3.0.tgz";
        sha1 = "854373c7f5c2315914fc9bfc6bd8238fdda1ec27";
      };
    }

    {
      name = "os_homedir___os_homedir_1.0.2.tgz";
      path = fetchurl {
        name = "os_homedir___os_homedir_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/os-homedir/-/os-homedir-1.0.2.tgz";
        sha1 = "ffbc4988336e0e833de0c168c7ef152121aa7fb3";
      };
    }

    {
      name = "os_locale___os_locale_1.4.0.tgz";
      path = fetchurl {
        name = "os_locale___os_locale_1.4.0.tgz";
        url  = "https://registry.yarnpkg.com/os-locale/-/os-locale-1.4.0.tgz";
        sha1 = "20f9f17ae29ed345e8bde583b13d2009803c14d9";
      };
    }

    {
      name = "os_locale___os_locale_2.1.0.tgz";
      path = fetchurl {
        name = "os_locale___os_locale_2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/os-locale/-/os-locale-2.1.0.tgz";
        sha1 = "42bc2900a6b5b8bd17376c8e882b65afccf24bf2";
      };
    }

    {
      name = "os_tmpdir___os_tmpdir_1.0.2.tgz";
      path = fetchurl {
        name = "os_tmpdir___os_tmpdir_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/os-tmpdir/-/os-tmpdir-1.0.2.tgz";
        sha1 = "bbe67406c79aa85c5cfec766fe5734555dfa1274";
      };
    }

    {
      name = "osenv___osenv_0.1.4.tgz";
      path = fetchurl {
        name = "osenv___osenv_0.1.4.tgz";
        url  = "https://registry.yarnpkg.com/osenv/-/osenv-0.1.4.tgz";
        sha1 = "42fe6d5953df06c8064be6f176c3d05aaaa34644";
      };
    }

    {
      name = "outpipe___outpipe_1.1.1.tgz";
      path = fetchurl {
        name = "outpipe___outpipe_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/outpipe/-/outpipe-1.1.1.tgz";
        sha1 = "50cf8616365e87e031e29a5ec9339a3da4725fa2";
      };
    }

    {
      name = "p_finally___p_finally_1.0.0.tgz";
      path = fetchurl {
        name = "p_finally___p_finally_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/p-finally/-/p-finally-1.0.0.tgz";
        sha1 = "3fbcfb15b899a44123b34b6dcc18b724336a2cae";
      };
    }

    {
      name = "p_limit___p_limit_1.2.0.tgz";
      path = fetchurl {
        name = "p_limit___p_limit_1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/p-limit/-/p-limit-1.2.0.tgz";
        sha1 = "0e92b6bedcb59f022c13d0f1949dc82d15909f1c";
      };
    }

    {
      name = "p_locate___p_locate_2.0.0.tgz";
      path = fetchurl {
        name = "p_locate___p_locate_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/p-locate/-/p-locate-2.0.0.tgz";
        sha1 = "20a0103b222a70c8fd39cc2e580680f3dde5ec43";
      };
    }

    {
      name = "p_try___p_try_1.0.0.tgz";
      path = fetchurl {
        name = "p_try___p_try_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/p-try/-/p-try-1.0.0.tgz";
        sha1 = "cbc79cdbaf8fd4228e13f621f2b1a237c1b207b3";
      };
    }

    {
      name = "pac_proxy_agent___pac_proxy_agent_1.1.0.tgz";
      path = fetchurl {
        name = "pac_proxy_agent___pac_proxy_agent_1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/pac-proxy-agent/-/pac-proxy-agent-1.1.0.tgz";
        sha1 = "34a385dfdf61d2f0ecace08858c745d3e791fd4d";
      };
    }

    {
      name = "pac_resolver___pac_resolver_2.0.0.tgz";
      path = fetchurl {
        name = "pac_resolver___pac_resolver_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/pac-resolver/-/pac-resolver-2.0.0.tgz";
        sha1 = "99b88d2f193fbdeefc1c9a529c1f3260ab5277cd";
      };
    }

    {
      name = "pad_left___pad_left_2.1.0.tgz";
      path = fetchurl {
        name = "pad_left___pad_left_2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/pad-left/-/pad-left-2.1.0.tgz";
        sha1 = "16e6a3b2d44a8e138cb0838cc7cb403a4fc9e994";
      };
    }

    {
      name = "pad_right___pad_right_0.2.2.tgz";
      path = fetchurl {
        name = "pad_right___pad_right_0.2.2.tgz";
        url  = "https://registry.yarnpkg.com/pad-right/-/pad-right-0.2.2.tgz";
        sha1 = "6fbc924045d244f2a2a244503060d3bfc6009774";
      };
    }

    {
      name = "pako___pako_1.0.6.tgz";
      path = fetchurl {
        name = "pako___pako_1.0.6.tgz";
        url  = "https://registry.yarnpkg.com/pako/-/pako-1.0.6.tgz";
        sha1 = "0101211baa70c4bca4a0f63f2206e97b7dfaf258";
      };
    }

    {
      name = "param_case___param_case_1.1.2.tgz";
      path = fetchurl {
        name = "param_case___param_case_1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/param-case/-/param-case-1.1.2.tgz";
        sha1 = "dcb091a43c259b9228f1c341e7b6a44ea0bf9743";
      };
    }

    {
      name = "parents___parents_1.0.1.tgz";
      path = fetchurl {
        name = "parents___parents_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/parents/-/parents-1.0.1.tgz";
        sha1 = "fedd4d2bf193a77745fe71e371d73c3307d9c751";
      };
    }

    {
      name = "parse_asn1___parse_asn1_5.1.0.tgz";
      path = fetchurl {
        name = "parse_asn1___parse_asn1_5.1.0.tgz";
        url  = "https://registry.yarnpkg.com/parse-asn1/-/parse-asn1-5.1.0.tgz";
        sha1 = "37c4f9b7ed3ab65c74817b5f2480937fbf97c712";
      };
    }

    {
      name = "parse_filepath___parse_filepath_1.0.2.tgz";
      path = fetchurl {
        name = "parse_filepath___parse_filepath_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/parse-filepath/-/parse-filepath-1.0.2.tgz";
        sha1 = "a632127f53aaf3d15876f5872f3ffac763d6c891";
      };
    }

    {
      name = "parse_glob___parse_glob_3.0.4.tgz";
      path = fetchurl {
        name = "parse_glob___parse_glob_3.0.4.tgz";
        url  = "https://registry.yarnpkg.com/parse-glob/-/parse-glob-3.0.4.tgz";
        sha1 = "b2c376cfb11f35513badd173ef0bb6e3a388391c";
      };
    }

    {
      name = "parse_json___parse_json_2.2.0.tgz";
      path = fetchurl {
        name = "parse_json___parse_json_2.2.0.tgz";
        url  = "https://registry.yarnpkg.com/parse-json/-/parse-json-2.2.0.tgz";
        sha1 = "f480f40434ef80741f8469099f8dea18f55a4dc9";
      };
    }

    {
      name = "parse_ms___parse_ms_1.0.1.tgz";
      path = fetchurl {
        name = "parse_ms___parse_ms_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/parse-ms/-/parse-ms-1.0.1.tgz";
        sha1 = "56346d4749d78f23430ca0c713850aef91aa361d";
      };
    }

    {
      name = "parse_passwd___parse_passwd_1.0.0.tgz";
      path = fetchurl {
        name = "parse_passwd___parse_passwd_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/parse-passwd/-/parse-passwd-1.0.0.tgz";
        sha1 = "6d5b934a456993b23d37f40a382d6f1666a8e5c6";
      };
    }

    {
      name = "parseurl___parseurl_1.3.2.tgz";
      path = fetchurl {
        name = "parseurl___parseurl_1.3.2.tgz";
        url  = "https://registry.yarnpkg.com/parseurl/-/parseurl-1.3.2.tgz";
        sha1 = "fc289d4ed8993119460c156253262cdc8de65bf3";
      };
    }

    {
      name = "pascal_case___pascal_case_1.1.2.tgz";
      path = fetchurl {
        name = "pascal_case___pascal_case_1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/pascal-case/-/pascal-case-1.1.2.tgz";
        sha1 = "3e5d64a20043830a7c49344c2d74b41be0c9c99b";
      };
    }

    {
      name = "pascalcase___pascalcase_0.1.1.tgz";
      path = fetchurl {
        name = "pascalcase___pascalcase_0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/pascalcase/-/pascalcase-0.1.1.tgz";
        sha1 = "b363e55e8006ca6fe21784d2db22bd15d7917f14";
      };
    }

    {
      name = "path_browserify___path_browserify_0.0.0.tgz";
      path = fetchurl {
        name = "path_browserify___path_browserify_0.0.0.tgz";
        url  = "https://registry.yarnpkg.com/path-browserify/-/path-browserify-0.0.0.tgz";
        sha1 = "a0b870729aae214005b7d5032ec2cbbb0fb4451a";
      };
    }

    {
      name = "path_case___path_case_1.1.2.tgz";
      path = fetchurl {
        name = "path_case___path_case_1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/path-case/-/path-case-1.1.2.tgz";
        sha1 = "50ce6ba0d3bed3dd0b5c2a9c4553697434409514";
      };
    }

    {
      name = "path_dirname___path_dirname_1.0.2.tgz";
      path = fetchurl {
        name = "path_dirname___path_dirname_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/path-dirname/-/path-dirname-1.0.2.tgz";
        sha1 = "cc33d24d525e099a5388c0336c6e32b9160609e0";
      };
    }

    {
      name = "path_exists___path_exists_2.1.0.tgz";
      path = fetchurl {
        name = "path_exists___path_exists_2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/path-exists/-/path-exists-2.1.0.tgz";
        sha1 = "0feb6c64f0fc518d9a754dd5efb62c7022761f4b";
      };
    }

    {
      name = "path_exists___path_exists_3.0.0.tgz";
      path = fetchurl {
        name = "path_exists___path_exists_3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/path-exists/-/path-exists-3.0.0.tgz";
        sha1 = "ce0ebeaa5f78cb18925ea7d810d7b59b010fd515";
      };
    }

    {
      name = "path_is_absolute___path_is_absolute_1.0.1.tgz";
      path = fetchurl {
        name = "path_is_absolute___path_is_absolute_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/path-is-absolute/-/path-is-absolute-1.0.1.tgz";
        sha1 = "174b9268735534ffbc7ace6bf53a5a9e1b5c5f5f";
      };
    }

    {
      name = "path_is_inside___path_is_inside_1.0.2.tgz";
      path = fetchurl {
        name = "path_is_inside___path_is_inside_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/path-is-inside/-/path-is-inside-1.0.2.tgz";
        sha1 = "365417dede44430d1c11af61027facf074bdfc53";
      };
    }

    {
      name = "path_key___path_key_2.0.1.tgz";
      path = fetchurl {
        name = "path_key___path_key_2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/path-key/-/path-key-2.0.1.tgz";
        sha1 = "411cadb574c5a140d3a4b1910d40d80cc9f40b40";
      };
    }

    {
      name = "path_parse___path_parse_1.0.5.tgz";
      path = fetchurl {
        name = "path_parse___path_parse_1.0.5.tgz";
        url  = "https://registry.yarnpkg.com/path-parse/-/path-parse-1.0.5.tgz";
        sha1 = "3c1adf871ea9cd6c9431b6ea2bd74a0ff055c4c1";
      };
    }

    {
      name = "path_platform___path_platform_0.11.15.tgz";
      path = fetchurl {
        name = "path_platform___path_platform_0.11.15.tgz";
        url  = "https://registry.yarnpkg.com/path-platform/-/path-platform-0.11.15.tgz";
        sha1 = "e864217f74c36850f0852b78dc7bf7d4a5721bf2";
      };
    }

    {
      name = "path_root_regex___path_root_regex_0.1.2.tgz";
      path = fetchurl {
        name = "path_root_regex___path_root_regex_0.1.2.tgz";
        url  = "https://registry.yarnpkg.com/path-root-regex/-/path-root-regex-0.1.2.tgz";
        sha1 = "bfccdc8df5b12dc52c8b43ec38d18d72c04ba96d";
      };
    }

    {
      name = "path_root___path_root_0.1.1.tgz";
      path = fetchurl {
        name = "path_root___path_root_0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/path-root/-/path-root-0.1.1.tgz";
        sha1 = "9a4a6814cac1c0cd73360a95f32083c8ea4745b7";
      };
    }

    {
      name = "path_type___path_type_1.1.0.tgz";
      path = fetchurl {
        name = "path_type___path_type_1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/path-type/-/path-type-1.1.0.tgz";
        sha1 = "59c44f7ee491da704da415da5a4070ba4f8fe441";
      };
    }

    {
      name = "path_type___path_type_3.0.0.tgz";
      path = fetchurl {
        name = "path_type___path_type_3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/path-type/-/path-type-3.0.0.tgz";
        sha1 = "cef31dc8e0a1a3bb0d105c0cd97cf3bf47f4e36f";
      };
    }

    {
      name = "pause_stream___pause_stream_0.0.11.tgz";
      path = fetchurl {
        name = "pause_stream___pause_stream_0.0.11.tgz";
        url  = "https://registry.yarnpkg.com/pause-stream/-/pause-stream-0.0.11.tgz";
        sha1 = "fe5a34b0cbce12b5aa6a2b403ee2e73b602f1445";
      };
    }

    {
      name = "pbkdf2___pbkdf2_3.0.14.tgz";
      path = fetchurl {
        name = "pbkdf2___pbkdf2_3.0.14.tgz";
        url  = "https://registry.yarnpkg.com/pbkdf2/-/pbkdf2-3.0.14.tgz";
        sha1 = "a35e13c64799b06ce15320f459c230e68e73bade";
      };
    }

    {
      name = "pem___pem_1.12.3.tgz";
      path = fetchurl {
        name = "pem___pem_1.12.3.tgz";
        url  = "https://registry.yarnpkg.com/pem/-/pem-1.12.3.tgz";
        sha1 = "b1fb5c8b79da8d18146c27fee79b0d4ddf9905b3";
      };
    }

    {
      name = "performance_now___performance_now_0.2.0.tgz";
      path = fetchurl {
        name = "performance_now___performance_now_0.2.0.tgz";
        url  = "https://registry.yarnpkg.com/performance-now/-/performance-now-0.2.0.tgz";
        sha1 = "33ef30c5c77d4ea21c5a53869d91b56d8f2555e5";
      };
    }

    {
      name = "performance_now___performance_now_2.1.0.tgz";
      path = fetchurl {
        name = "performance_now___performance_now_2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/performance-now/-/performance-now-2.1.0.tgz";
        sha1 = "6309f4e0e5fa913ec1c69307ae364b4b377c9e7b";
      };
    }

    {
      name = "pify___pify_2.3.0.tgz";
      path = fetchurl {
        name = "pify___pify_2.3.0.tgz";
        url  = "https://registry.yarnpkg.com/pify/-/pify-2.3.0.tgz";
        sha1 = "ed141a6ac043a849ea588498e7dca8b15330e90c";
      };
    }

    {
      name = "pify___pify_3.0.0.tgz";
      path = fetchurl {
        name = "pify___pify_3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/pify/-/pify-3.0.0.tgz";
        sha1 = "e5a4acd2c101fdf3d9a4d07f0dbc4db49dd28176";
      };
    }

    {
      name = "pinkie_promise___pinkie_promise_2.0.1.tgz";
      path = fetchurl {
        name = "pinkie_promise___pinkie_promise_2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/pinkie-promise/-/pinkie-promise-2.0.1.tgz";
        sha1 = "2135d6dfa7a358c069ac9b178776288228450ffa";
      };
    }

    {
      name = "pinkie___pinkie_2.0.4.tgz";
      path = fetchurl {
        name = "pinkie___pinkie_2.0.4.tgz";
        url  = "https://registry.yarnpkg.com/pinkie/-/pinkie-2.0.4.tgz";
        sha1 = "72556b80cfa0d48a974e80e77248e80ed4f7f870";
      };
    }

    {
      name = "plur___plur_1.0.0.tgz";
      path = fetchurl {
        name = "plur___plur_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/plur/-/plur-1.0.0.tgz";
        sha1 = "db85c6814f5e5e5a3b49efc28d604fec62975156";
      };
    }

    {
      name = "plur___plur_2.1.2.tgz";
      path = fetchurl {
        name = "plur___plur_2.1.2.tgz";
        url  = "https://registry.yarnpkg.com/plur/-/plur-2.1.2.tgz";
        sha1 = "7482452c1a0f508e3e344eaec312c91c29dc655a";
      };
    }

    {
      name = "posix_character_classes___posix_character_classes_0.1.1.tgz";
      path = fetchurl {
        name = "posix_character_classes___posix_character_classes_0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/posix-character-classes/-/posix-character-classes-0.1.1.tgz";
        sha1 = "01eac0fe3b5af71a2a6c02feabb8c1fef7e00eab";
      };
    }

    {
      name = "postcss_calc___postcss_calc_5.3.1.tgz";
      path = fetchurl {
        name = "postcss_calc___postcss_calc_5.3.1.tgz";
        url  = "https://registry.yarnpkg.com/postcss-calc/-/postcss-calc-5.3.1.tgz";
        sha1 = "77bae7ca928ad85716e2fda42f261bf7c1d65b5e";
      };
    }

    {
      name = "postcss_colormin___postcss_colormin_2.2.2.tgz";
      path = fetchurl {
        name = "postcss_colormin___postcss_colormin_2.2.2.tgz";
        url  = "https://registry.yarnpkg.com/postcss-colormin/-/postcss-colormin-2.2.2.tgz";
        sha1 = "6631417d5f0e909a3d7ec26b24c8a8d1e4f96e4b";
      };
    }

    {
      name = "postcss_convert_values___postcss_convert_values_2.6.1.tgz";
      path = fetchurl {
        name = "postcss_convert_values___postcss_convert_values_2.6.1.tgz";
        url  = "https://registry.yarnpkg.com/postcss-convert-values/-/postcss-convert-values-2.6.1.tgz";
        sha1 = "bbd8593c5c1fd2e3d1c322bb925dcae8dae4d62d";
      };
    }

    {
      name = "postcss_discard_comments___postcss_discard_comments_2.0.4.tgz";
      path = fetchurl {
        name = "postcss_discard_comments___postcss_discard_comments_2.0.4.tgz";
        url  = "https://registry.yarnpkg.com/postcss-discard-comments/-/postcss-discard-comments-2.0.4.tgz";
        sha1 = "befe89fafd5b3dace5ccce51b76b81514be00e3d";
      };
    }

    {
      name = "postcss_discard_duplicates___postcss_discard_duplicates_2.1.0.tgz";
      path = fetchurl {
        name = "postcss_discard_duplicates___postcss_discard_duplicates_2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/postcss-discard-duplicates/-/postcss-discard-duplicates-2.1.0.tgz";
        sha1 = "b9abf27b88ac188158a5eb12abcae20263b91932";
      };
    }

    {
      name = "postcss_discard_empty___postcss_discard_empty_2.1.0.tgz";
      path = fetchurl {
        name = "postcss_discard_empty___postcss_discard_empty_2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/postcss-discard-empty/-/postcss-discard-empty-2.1.0.tgz";
        sha1 = "d2b4bd9d5ced5ebd8dcade7640c7d7cd7f4f92b5";
      };
    }

    {
      name = "postcss_discard_overridden___postcss_discard_overridden_0.1.1.tgz";
      path = fetchurl {
        name = "postcss_discard_overridden___postcss_discard_overridden_0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/postcss-discard-overridden/-/postcss-discard-overridden-0.1.1.tgz";
        sha1 = "8b1eaf554f686fb288cd874c55667b0aa3668d58";
      };
    }

    {
      name = "postcss_discard_unused___postcss_discard_unused_2.2.3.tgz";
      path = fetchurl {
        name = "postcss_discard_unused___postcss_discard_unused_2.2.3.tgz";
        url  = "https://registry.yarnpkg.com/postcss-discard-unused/-/postcss-discard-unused-2.2.3.tgz";
        sha1 = "bce30b2cc591ffc634322b5fb3464b6d934f4433";
      };
    }

    {
      name = "postcss_filter_plugins___postcss_filter_plugins_2.0.2.tgz";
      path = fetchurl {
        name = "postcss_filter_plugins___postcss_filter_plugins_2.0.2.tgz";
        url  = "https://registry.yarnpkg.com/postcss-filter-plugins/-/postcss-filter-plugins-2.0.2.tgz";
        sha1 = "6d85862534d735ac420e4a85806e1f5d4286d84c";
      };
    }

    {
      name = "postcss_merge_idents___postcss_merge_idents_2.1.7.tgz";
      path = fetchurl {
        name = "postcss_merge_idents___postcss_merge_idents_2.1.7.tgz";
        url  = "https://registry.yarnpkg.com/postcss-merge-idents/-/postcss-merge-idents-2.1.7.tgz";
        sha1 = "4c5530313c08e1d5b3bbf3d2bbc747e278eea270";
      };
    }

    {
      name = "postcss_merge_longhand___postcss_merge_longhand_2.0.2.tgz";
      path = fetchurl {
        name = "postcss_merge_longhand___postcss_merge_longhand_2.0.2.tgz";
        url  = "https://registry.yarnpkg.com/postcss-merge-longhand/-/postcss-merge-longhand-2.0.2.tgz";
        sha1 = "23d90cd127b0a77994915332739034a1a4f3d658";
      };
    }

    {
      name = "postcss_merge_rules___postcss_merge_rules_2.1.2.tgz";
      path = fetchurl {
        name = "postcss_merge_rules___postcss_merge_rules_2.1.2.tgz";
        url  = "https://registry.yarnpkg.com/postcss-merge-rules/-/postcss-merge-rules-2.1.2.tgz";
        sha1 = "d1df5dfaa7b1acc3be553f0e9e10e87c61b5f721";
      };
    }

    {
      name = "postcss_message_helpers___postcss_message_helpers_2.0.0.tgz";
      path = fetchurl {
        name = "postcss_message_helpers___postcss_message_helpers_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/postcss-message-helpers/-/postcss-message-helpers-2.0.0.tgz";
        sha1 = "a4f2f4fab6e4fe002f0aed000478cdf52f9ba60e";
      };
    }

    {
      name = "postcss_minify_font_values___postcss_minify_font_values_1.0.5.tgz";
      path = fetchurl {
        name = "postcss_minify_font_values___postcss_minify_font_values_1.0.5.tgz";
        url  = "https://registry.yarnpkg.com/postcss-minify-font-values/-/postcss-minify-font-values-1.0.5.tgz";
        sha1 = "4b58edb56641eba7c8474ab3526cafd7bbdecb69";
      };
    }

    {
      name = "postcss_minify_gradients___postcss_minify_gradients_1.0.5.tgz";
      path = fetchurl {
        name = "postcss_minify_gradients___postcss_minify_gradients_1.0.5.tgz";
        url  = "https://registry.yarnpkg.com/postcss-minify-gradients/-/postcss-minify-gradients-1.0.5.tgz";
        sha1 = "5dbda11373703f83cfb4a3ea3881d8d75ff5e6e1";
      };
    }

    {
      name = "postcss_minify_params___postcss_minify_params_1.2.2.tgz";
      path = fetchurl {
        name = "postcss_minify_params___postcss_minify_params_1.2.2.tgz";
        url  = "https://registry.yarnpkg.com/postcss-minify-params/-/postcss-minify-params-1.2.2.tgz";
        sha1 = "ad2ce071373b943b3d930a3fa59a358c28d6f1f3";
      };
    }

    {
      name = "postcss_minify_selectors___postcss_minify_selectors_2.1.1.tgz";
      path = fetchurl {
        name = "postcss_minify_selectors___postcss_minify_selectors_2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/postcss-minify-selectors/-/postcss-minify-selectors-2.1.1.tgz";
        sha1 = "b2c6a98c0072cf91b932d1a496508114311735bf";
      };
    }

    {
      name = "postcss_normalize_charset___postcss_normalize_charset_1.1.1.tgz";
      path = fetchurl {
        name = "postcss_normalize_charset___postcss_normalize_charset_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/postcss-normalize-charset/-/postcss-normalize-charset-1.1.1.tgz";
        sha1 = "ef9ee71212d7fe759c78ed162f61ed62b5cb93f1";
      };
    }

    {
      name = "postcss_normalize_url___postcss_normalize_url_3.0.8.tgz";
      path = fetchurl {
        name = "postcss_normalize_url___postcss_normalize_url_3.0.8.tgz";
        url  = "https://registry.yarnpkg.com/postcss-normalize-url/-/postcss-normalize-url-3.0.8.tgz";
        sha1 = "108f74b3f2fcdaf891a2ffa3ea4592279fc78222";
      };
    }

    {
      name = "postcss_ordered_values___postcss_ordered_values_2.2.3.tgz";
      path = fetchurl {
        name = "postcss_ordered_values___postcss_ordered_values_2.2.3.tgz";
        url  = "https://registry.yarnpkg.com/postcss-ordered-values/-/postcss-ordered-values-2.2.3.tgz";
        sha1 = "eec6c2a67b6c412a8db2042e77fe8da43f95c11d";
      };
    }

    {
      name = "postcss_reduce_idents___postcss_reduce_idents_2.4.0.tgz";
      path = fetchurl {
        name = "postcss_reduce_idents___postcss_reduce_idents_2.4.0.tgz";
        url  = "https://registry.yarnpkg.com/postcss-reduce-idents/-/postcss-reduce-idents-2.4.0.tgz";
        sha1 = "c2c6d20cc958284f6abfbe63f7609bf409059ad3";
      };
    }

    {
      name = "postcss_reduce_initial___postcss_reduce_initial_1.0.1.tgz";
      path = fetchurl {
        name = "postcss_reduce_initial___postcss_reduce_initial_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/postcss-reduce-initial/-/postcss-reduce-initial-1.0.1.tgz";
        sha1 = "68f80695f045d08263a879ad240df8dd64f644ea";
      };
    }

    {
      name = "postcss_reduce_transforms___postcss_reduce_transforms_1.0.4.tgz";
      path = fetchurl {
        name = "postcss_reduce_transforms___postcss_reduce_transforms_1.0.4.tgz";
        url  = "https://registry.yarnpkg.com/postcss-reduce-transforms/-/postcss-reduce-transforms-1.0.4.tgz";
        sha1 = "ff76f4d8212437b31c298a42d2e1444025771ae1";
      };
    }

    {
      name = "postcss_selector_parser___postcss_selector_parser_2.2.3.tgz";
      path = fetchurl {
        name = "postcss_selector_parser___postcss_selector_parser_2.2.3.tgz";
        url  = "https://registry.yarnpkg.com/postcss-selector-parser/-/postcss-selector-parser-2.2.3.tgz";
        sha1 = "f9437788606c3c9acee16ffe8d8b16297f27bb90";
      };
    }

    {
      name = "postcss_svgo___postcss_svgo_2.1.6.tgz";
      path = fetchurl {
        name = "postcss_svgo___postcss_svgo_2.1.6.tgz";
        url  = "https://registry.yarnpkg.com/postcss-svgo/-/postcss-svgo-2.1.6.tgz";
        sha1 = "b6df18aa613b666e133f08adb5219c2684ac108d";
      };
    }

    {
      name = "postcss_unique_selectors___postcss_unique_selectors_2.0.2.tgz";
      path = fetchurl {
        name = "postcss_unique_selectors___postcss_unique_selectors_2.0.2.tgz";
        url  = "https://registry.yarnpkg.com/postcss-unique-selectors/-/postcss-unique-selectors-2.0.2.tgz";
        sha1 = "981d57d29ddcb33e7b1dfe1fd43b8649f933ca1d";
      };
    }

    {
      name = "postcss_value_parser___postcss_value_parser_3.3.0.tgz";
      path = fetchurl {
        name = "postcss_value_parser___postcss_value_parser_3.3.0.tgz";
        url  = "https://registry.yarnpkg.com/postcss-value-parser/-/postcss-value-parser-3.3.0.tgz";
        sha1 = "87f38f9f18f774a4ab4c8a232f5c5ce8872a9d15";
      };
    }

    {
      name = "postcss_zindex___postcss_zindex_2.2.0.tgz";
      path = fetchurl {
        name = "postcss_zindex___postcss_zindex_2.2.0.tgz";
        url  = "https://registry.yarnpkg.com/postcss-zindex/-/postcss-zindex-2.2.0.tgz";
        sha1 = "d2109ddc055b91af67fc4cb3b025946639d2af22";
      };
    }

    {
      name = "postcss___postcss_5.2.18.tgz";
      path = fetchurl {
        name = "postcss___postcss_5.2.18.tgz";
        url  = "https://registry.yarnpkg.com/postcss/-/postcss-5.2.18.tgz";
        sha1 = "badfa1497d46244f6390f58b319830d9107853c5";
      };
    }

    {
      name = "postcss___postcss_6.0.14.tgz";
      path = fetchurl {
        name = "postcss___postcss_6.0.14.tgz";
        url  = "https://registry.yarnpkg.com/postcss/-/postcss-6.0.14.tgz";
        sha1 = "5534c72114739e75d0afcf017db853099f562885";
      };
    }

    {
      name = "prelude_ls___prelude_ls_1.1.2.tgz";
      path = fetchurl {
        name = "prelude_ls___prelude_ls_1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/prelude-ls/-/prelude-ls-1.1.2.tgz";
        sha1 = "21932a549f5e52ffd9a827f570e04be62a97da54";
      };
    }

    {
      name = "prepend_http___prepend_http_1.0.4.tgz";
      path = fetchurl {
        name = "prepend_http___prepend_http_1.0.4.tgz";
        url  = "https://registry.yarnpkg.com/prepend-http/-/prepend-http-1.0.4.tgz";
        sha1 = "d4f4562b0ce3696e41ac52d0e002e57a635dc6dc";
      };
    }

    {
      name = "preserve___preserve_0.2.0.tgz";
      path = fetchurl {
        name = "preserve___preserve_0.2.0.tgz";
        url  = "https://registry.yarnpkg.com/preserve/-/preserve-0.2.0.tgz";
        sha1 = "815ed1f6ebc65926f865b310c0713bcb3315ce4b";
      };
    }

    {
      name = "prettier_bytes___prettier_bytes_1.0.4.tgz";
      path = fetchurl {
        name = "prettier_bytes___prettier_bytes_1.0.4.tgz";
        url  = "https://registry.yarnpkg.com/prettier-bytes/-/prettier-bytes-1.0.4.tgz";
        sha1 = "994b02aa46f699c50b6257b5faaa7fe2557e62d6";
      };
    }

    {
      name = "pretty_hrtime___pretty_hrtime_1.0.3.tgz";
      path = fetchurl {
        name = "pretty_hrtime___pretty_hrtime_1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/pretty-hrtime/-/pretty-hrtime-1.0.3.tgz";
        sha1 = "b7e3ea42435a4c9b2759d99e0f201eb195802ee1";
      };
    }

    {
      name = "pretty_ms___pretty_ms_2.1.0.tgz";
      path = fetchurl {
        name = "pretty_ms___pretty_ms_2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/pretty-ms/-/pretty-ms-2.1.0.tgz";
        sha1 = "4257c256df3fb0b451d6affaab021884126981dc";
      };
    }

    {
      name = "private___private_0.1.8.tgz";
      path = fetchurl {
        name = "private___private_0.1.8.tgz";
        url  = "https://registry.yarnpkg.com/private/-/private-0.1.8.tgz";
        sha1 = "2381edb3689f7a53d653190060fcf822d2f368ff";
      };
    }

    {
      name = "process_nextick_args___process_nextick_args_1.0.7.tgz";
      path = fetchurl {
        name = "process_nextick_args___process_nextick_args_1.0.7.tgz";
        url  = "https://registry.yarnpkg.com/process-nextick-args/-/process-nextick-args-1.0.7.tgz";
        sha1 = "150e20b756590ad3f91093f25a4f2ad8bff30ba3";
      };
    }

    {
      name = "process_nextick_args___process_nextick_args_2.0.0.tgz";
      path = fetchurl {
        name = "process_nextick_args___process_nextick_args_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/process-nextick-args/-/process-nextick-args-2.0.0.tgz";
        sha1 = "a37d732f4271b4ab1ad070d35508e8290788ffaa";
      };
    }

    {
      name = "process___process_0.11.10.tgz";
      path = fetchurl {
        name = "process___process_0.11.10.tgz";
        url  = "https://registry.yarnpkg.com/process/-/process-0.11.10.tgz";
        sha1 = "7332300e840161bda3e69a1d1d91a7d4bc16f182";
      };
    }

    {
      name = "promise_polyfill___promise_polyfill_7.0.0.tgz";
      path = fetchurl {
        name = "promise_polyfill___promise_polyfill_7.0.0.tgz";
        url  = "https://registry.yarnpkg.com/promise-polyfill/-/promise-polyfill-7.0.0.tgz";
        sha1 = "c665b6da1f97e21c3f2f7aa0543c90209127cb15";
      };
    }

    {
      name = "promise.prototype.finally___promise.prototype.finally_3.1.0.tgz";
      path = fetchurl {
        name = "promise.prototype.finally___promise.prototype.finally_3.1.0.tgz";
        url  = "https://registry.yarnpkg.com/promise.prototype.finally/-/promise.prototype.finally-3.1.0.tgz";
        sha1 = "66f161b1643636e50e7cf201dc1b84a857f3864e";
      };
    }

    {
      name = "protractor_jasmine2_screenshot_reporter___protractor_jasmine2_screenshot_reporter_0.4.1.tgz";
      path = fetchurl {
        name = "protractor_jasmine2_screenshot_reporter___protractor_jasmine2_screenshot_reporter_0.4.1.tgz";
        url  = "https://registry.yarnpkg.com/protractor-jasmine2-screenshot-reporter/-/protractor-jasmine2-screenshot-reporter-0.4.1.tgz";
        sha1 = "82bee694e3a067ccff02b8ab9aa95f7a3d99d5a7";
      };
    }

    {
      name = "protractor_retry___protractor_retry_1.1.8.tgz";
      path = fetchurl {
        name = "protractor_retry___protractor_retry_1.1.8.tgz";
        url  = "https://registry.yarnpkg.com/protractor-retry/-/protractor-retry-1.1.8.tgz";
        sha1 = "2cd658519b8bbb7834a17beb116847003b16746f";
      };
    }

    {
      name = "protractor___protractor_5.2.2.tgz";
      path = fetchurl {
        name = "protractor___protractor_5.2.2.tgz";
        url  = "https://registry.yarnpkg.com/protractor/-/protractor-5.2.2.tgz";
        sha1 = "80eff170761455eff6e2f111088a03c438844a41";
      };
    }

    {
      name = "proxy_agent___proxy_agent_2.0.0.tgz";
      path = fetchurl {
        name = "proxy_agent___proxy_agent_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/proxy-agent/-/proxy-agent-2.0.0.tgz";
        sha1 = "57eb5347aa805d74ec681cb25649dba39c933499";
      };
    }

    {
      name = "pseudomap___pseudomap_1.0.2.tgz";
      path = fetchurl {
        name = "pseudomap___pseudomap_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/pseudomap/-/pseudomap-1.0.2.tgz";
        sha1 = "f052a28da70e618917ef0a8ac34c1ae5a68286b3";
      };
    }

    {
      name = "public_encrypt___public_encrypt_4.0.0.tgz";
      path = fetchurl {
        name = "public_encrypt___public_encrypt_4.0.0.tgz";
        url  = "https://registry.yarnpkg.com/public-encrypt/-/public-encrypt-4.0.0.tgz";
        sha1 = "39f699f3a46560dd5ebacbca693caf7c65c18cc6";
      };
    }

    {
      name = "punycode___punycode_1.3.2.tgz";
      path = fetchurl {
        name = "punycode___punycode_1.3.2.tgz";
        url  = "https://registry.yarnpkg.com/punycode/-/punycode-1.3.2.tgz";
        sha1 = "9653a036fb7c1ee42342f2325cceefea3926c48d";
      };
    }

    {
      name = "punycode___punycode_1.4.1.tgz";
      path = fetchurl {
        name = "punycode___punycode_1.4.1.tgz";
        url  = "https://registry.yarnpkg.com/punycode/-/punycode-1.4.1.tgz";
        sha1 = "c0d5a63b2718800ad8e1eb0fa5269c84dd41845e";
      };
    }

    {
      name = "q___q_1.4.1.tgz";
      path = fetchurl {
        name = "q___q_1.4.1.tgz";
        url  = "https://registry.yarnpkg.com/q/-/q-1.4.1.tgz";
        sha1 = "55705bcd93c5f3673530c2c2cbc0c2b3addc286e";
      };
    }

    {
      name = "q___q_1.5.1.tgz";
      path = fetchurl {
        name = "q___q_1.5.1.tgz";
        url  = "https://registry.yarnpkg.com/q/-/q-1.5.1.tgz";
        sha1 = "7e32f75b41381291d04611f1bf14109ac00651d7";
      };
    }

    {
      name = "qs___qs_6.3.2.tgz";
      path = fetchurl {
        name = "qs___qs_6.3.2.tgz";
        url  = "https://registry.yarnpkg.com/qs/-/qs-6.3.2.tgz";
        sha1 = "e75bd5f6e268122a2a0e0bda630b2550c166502c";
      };
    }

    {
      name = "qs___qs_6.4.0.tgz";
      path = fetchurl {
        name = "qs___qs_6.4.0.tgz";
        url  = "https://registry.yarnpkg.com/qs/-/qs-6.4.0.tgz";
        sha1 = "13e26d28ad6b0ffaa91312cd3bf708ed351e7233";
      };
    }

    {
      name = "qs___qs_6.5.1.tgz";
      path = fetchurl {
        name = "qs___qs_6.5.1.tgz";
        url  = "https://registry.yarnpkg.com/qs/-/qs-6.5.1.tgz";
        sha1 = "349cdf6eef89ec45c12d7d5eb3fc0c870343a6d8";
      };
    }

    {
      name = "query_string___query_string_4.3.4.tgz";
      path = fetchurl {
        name = "query_string___query_string_4.3.4.tgz";
        url  = "https://registry.yarnpkg.com/query-string/-/query-string-4.3.4.tgz";
        sha1 = "bbb693b9ca915c232515b228b1a02b609043dbeb";
      };
    }

    {
      name = "querystring_es3___querystring_es3_0.2.1.tgz";
      path = fetchurl {
        name = "querystring_es3___querystring_es3_0.2.1.tgz";
        url  = "https://registry.yarnpkg.com/querystring-es3/-/querystring-es3-0.2.1.tgz";
        sha1 = "9ec61f79049875707d69414596fd907a4d711e73";
      };
    }

    {
      name = "querystring___querystring_0.2.0.tgz";
      path = fetchurl {
        name = "querystring___querystring_0.2.0.tgz";
        url  = "https://registry.yarnpkg.com/querystring/-/querystring-0.2.0.tgz";
        sha1 = "b209849203bb25df820da756e747005878521620";
      };
    }

    {
      name = "randomatic___randomatic_1.1.7.tgz";
      path = fetchurl {
        name = "randomatic___randomatic_1.1.7.tgz";
        url  = "https://registry.yarnpkg.com/randomatic/-/randomatic-1.1.7.tgz";
        sha1 = "c7abe9cc8b87c0baa876b19fde83fd464797e38c";
      };
    }

    {
      name = "randombytes___randombytes_2.0.5.tgz";
      path = fetchurl {
        name = "randombytes___randombytes_2.0.5.tgz";
        url  = "https://registry.yarnpkg.com/randombytes/-/randombytes-2.0.5.tgz";
        sha1 = "dc009a246b8d09a177b4b7a0ae77bc570f4b1b79";
      };
    }

    {
      name = "randomfill___randomfill_1.0.3.tgz";
      path = fetchurl {
        name = "randomfill___randomfill_1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/randomfill/-/randomfill-1.0.3.tgz";
        sha1 = "b96b7df587f01dd91726c418f30553b1418e3d62";
      };
    }

    {
      name = "range_parser___range_parser_1.2.0.tgz";
      path = fetchurl {
        name = "range_parser___range_parser_1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/range-parser/-/range-parser-1.2.0.tgz";
        sha1 = "f49be6b487894ddc40dcc94a322f611092e00d5e";
      };
    }

    {
      name = "raven_js___raven_js_3.22.1.tgz";
      path = fetchurl {
        name = "raven_js___raven_js_3.22.1.tgz";
        url  = "https://registry.yarnpkg.com/raven-js/-/raven-js-3.22.1.tgz";
        sha1 = "1117f00dfefaa427ef6e1a7d50bbb1fb998a24da";
      };
    }

    {
      name = "raw_body___raw_body_2.3.2.tgz";
      path = fetchurl {
        name = "raw_body___raw_body_2.3.2.tgz";
        url  = "https://registry.yarnpkg.com/raw-body/-/raw-body-2.3.2.tgz";
        sha1 = "bcd60c77d3eb93cde0050295c3f379389bc88f89";
      };
    }

    {
      name = "rc___rc_1.2.2.tgz";
      path = fetchurl {
        name = "rc___rc_1.2.2.tgz";
        url  = "https://registry.yarnpkg.com/rc/-/rc-1.2.2.tgz";
        sha1 = "d8ce9cb57e8d64d9c7badd9876c7c34cbe3c7077";
      };
    }

    {
      name = "read_all_stream___read_all_stream_3.1.0.tgz";
      path = fetchurl {
        name = "read_all_stream___read_all_stream_3.1.0.tgz";
        url  = "https://registry.yarnpkg.com/read-all-stream/-/read-all-stream-3.1.0.tgz";
        sha1 = "35c3e177f2078ef789ee4bfafa4373074eaef4fa";
      };
    }

    {
      name = "read_input___read_input_0.3.1.tgz";
      path = fetchurl {
        name = "read_input___read_input_0.3.1.tgz";
        url  = "https://registry.yarnpkg.com/read-input/-/read-input-0.3.1.tgz";
        sha1 = "5b3169308013464ffda6ec92e58d2d3cea948df1";
      };
    }

    {
      name = "read_only_stream___read_only_stream_2.0.0.tgz";
      path = fetchurl {
        name = "read_only_stream___read_only_stream_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/read-only-stream/-/read-only-stream-2.0.0.tgz";
        sha1 = "2724fd6a8113d73764ac288d4386270c1dbf17f0";
      };
    }

    {
      name = "read_pkg_up___read_pkg_up_1.0.1.tgz";
      path = fetchurl {
        name = "read_pkg_up___read_pkg_up_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/read-pkg-up/-/read-pkg-up-1.0.1.tgz";
        sha1 = "9d63c13276c065918d57f002a57f40a1b643fb02";
      };
    }

    {
      name = "read_pkg___read_pkg_1.1.0.tgz";
      path = fetchurl {
        name = "read_pkg___read_pkg_1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/read-pkg/-/read-pkg-1.1.0.tgz";
        sha1 = "f5ffaa5ecd29cb31c0474bca7d756b6bb29e3f28";
      };
    }

    {
      name = "readable_stream___readable_stream_1.1.14.tgz";
      path = fetchurl {
        name = "readable_stream___readable_stream_1.1.14.tgz";
        url  = "https://registry.yarnpkg.com/readable-stream/-/readable-stream-1.1.14.tgz";
        sha1 = "7cf4c54ef648e3813084c636dd2079e166c081d9";
      };
    }

    {
      name = "readable_stream___readable_stream_2.3.4.tgz";
      path = fetchurl {
        name = "readable_stream___readable_stream_2.3.4.tgz";
        url  = "https://registry.yarnpkg.com/readable-stream/-/readable-stream-2.3.4.tgz";
        sha1 = "c946c3f47fa7d8eabc0b6150f4a12f69a4574071";
      };
    }

    {
      name = "readable_stream___readable_stream_1.0.34.tgz";
      path = fetchurl {
        name = "readable_stream___readable_stream_1.0.34.tgz";
        url  = "https://registry.yarnpkg.com/readable-stream/-/readable-stream-1.0.34.tgz";
        sha1 = "125820e34bc842d2f2aaafafe4c2916ee32c157c";
      };
    }

    {
      name = "readable_stream___readable_stream_2.3.3.tgz";
      path = fetchurl {
        name = "readable_stream___readable_stream_2.3.3.tgz";
        url  = "https://registry.yarnpkg.com/readable-stream/-/readable-stream-2.3.3.tgz";
        sha1 = "368f2512d79f9d46fdfc71349ae7878bbc1eb95c";
      };
    }

    {
      name = "readable_stream___readable_stream_2.0.6.tgz";
      path = fetchurl {
        name = "readable_stream___readable_stream_2.0.6.tgz";
        url  = "https://registry.yarnpkg.com/readable-stream/-/readable-stream-2.0.6.tgz";
        sha1 = "8f90341e68a53ccc928788dacfcd11b36eb9b78e";
      };
    }

    {
      name = "readdirp___readdirp_2.1.0.tgz";
      path = fetchurl {
        name = "readdirp___readdirp_2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/readdirp/-/readdirp-2.1.0.tgz";
        sha1 = "4ed0ad060df3073300c48440373f72d1cc642d78";
      };
    }

    {
      name = "recast___recast_0.8.8.tgz";
      path = fetchurl {
        name = "recast___recast_0.8.8.tgz";
        url  = "https://registry.yarnpkg.com/recast/-/recast-0.8.8.tgz";
        sha1 = "e14e8dad83b02d8f7827d97b1f3e264ed08d421c";
      };
    }

    {
      name = "rechoir___rechoir_0.6.2.tgz";
      path = fetchurl {
        name = "rechoir___rechoir_0.6.2.tgz";
        url  = "https://registry.yarnpkg.com/rechoir/-/rechoir-0.6.2.tgz";
        sha1 = "85204b54dba82d5742e28c96756ef43af50e3384";
      };
    }

    {
      name = "redent___redent_1.0.0.tgz";
      path = fetchurl {
        name = "redent___redent_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/redent/-/redent-1.0.0.tgz";
        sha1 = "cf916ab1fd5f1f16dfb20822dd6ec7f730c2afde";
      };
    }

    {
      name = "reduce_css_calc___reduce_css_calc_1.3.0.tgz";
      path = fetchurl {
        name = "reduce_css_calc___reduce_css_calc_1.3.0.tgz";
        url  = "https://registry.yarnpkg.com/reduce-css-calc/-/reduce-css-calc-1.3.0.tgz";
        sha1 = "747c914e049614a4c9cfbba629871ad1d2927716";
      };
    }

    {
      name = "reduce_function_call___reduce_function_call_1.0.2.tgz";
      path = fetchurl {
        name = "reduce_function_call___reduce_function_call_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/reduce-function-call/-/reduce-function-call-1.0.2.tgz";
        sha1 = "5a200bf92e0e37751752fe45b0ab330fd4b6be99";
      };
    }

    {
      name = "regenerate___regenerate_1.3.3.tgz";
      path = fetchurl {
        name = "regenerate___regenerate_1.3.3.tgz";
        url  = "https://registry.yarnpkg.com/regenerate/-/regenerate-1.3.3.tgz";
        sha1 = "0c336d3980553d755c39b586ae3b20aa49c82b7f";
      };
    }

    {
      name = "regex_cache___regex_cache_0.4.4.tgz";
      path = fetchurl {
        name = "regex_cache___regex_cache_0.4.4.tgz";
        url  = "https://registry.yarnpkg.com/regex-cache/-/regex-cache-0.4.4.tgz";
        sha1 = "75bdc58a2a1496cec48a12835bc54c8d562336dd";
      };
    }

    {
      name = "regex_not___regex_not_1.0.0.tgz";
      path = fetchurl {
        name = "regex_not___regex_not_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/regex-not/-/regex-not-1.0.0.tgz";
        sha1 = "42f83e39771622df826b02af176525d6a5f157f9";
      };
    }

    {
      name = "regexpu___regexpu_0.3.0.tgz";
      path = fetchurl {
        name = "regexpu___regexpu_0.3.0.tgz";
        url  = "https://registry.yarnpkg.com/regexpu/-/regexpu-0.3.0.tgz";
        sha1 = "8ede4b300cdaa1295c502f6a760316dea1bf9920";
      };
    }

    {
      name = "regjsgen___regjsgen_0.2.0.tgz";
      path = fetchurl {
        name = "regjsgen___regjsgen_0.2.0.tgz";
        url  = "https://registry.yarnpkg.com/regjsgen/-/regjsgen-0.2.0.tgz";
        sha1 = "6c016adeac554f75823fe37ac05b92d5a4edb1f7";
      };
    }

    {
      name = "regjsparser___regjsparser_0.1.5.tgz";
      path = fetchurl {
        name = "regjsparser___regjsparser_0.1.5.tgz";
        url  = "https://registry.yarnpkg.com/regjsparser/-/regjsparser-0.1.5.tgz";
        sha1 = "7ee8f84dc6fa792d3fd0ae228d24bd949ead205c";
      };
    }

    {
      name = "relateurl___relateurl_0.2.7.tgz";
      path = fetchurl {
        name = "relateurl___relateurl_0.2.7.tgz";
        url  = "https://registry.yarnpkg.com/relateurl/-/relateurl-0.2.7.tgz";
        sha1 = "54dbf377e51440aca90a4cd274600d3ff2d888a9";
      };
    }

    {
      name = "reload_css___reload_css_1.0.2.tgz";
      path = fetchurl {
        name = "reload_css___reload_css_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/reload-css/-/reload-css-1.0.2.tgz";
        sha1 = "6afb11162e2314feccdad6dc5fde821fd7318331";
      };
    }

    {
      name = "remove_trailing_separator___remove_trailing_separator_1.1.0.tgz";
      path = fetchurl {
        name = "remove_trailing_separator___remove_trailing_separator_1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/remove-trailing-separator/-/remove-trailing-separator-1.1.0.tgz";
        sha1 = "c24bce2a283adad5bc3f58e0d48249b92379d8ef";
      };
    }

    {
      name = "repeat_element___repeat_element_1.1.2.tgz";
      path = fetchurl {
        name = "repeat_element___repeat_element_1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/repeat-element/-/repeat-element-1.1.2.tgz";
        sha1 = "ef089a178d1483baae4d93eb98b4f9e4e11d990a";
      };
    }

    {
      name = "repeat_string___repeat_string_1.6.1.tgz";
      path = fetchurl {
        name = "repeat_string___repeat_string_1.6.1.tgz";
        url  = "https://registry.yarnpkg.com/repeat-string/-/repeat-string-1.6.1.tgz";
        sha1 = "8dcae470e1c88abc2d600fff4a776286da75e637";
      };
    }

    {
      name = "repeating___repeating_2.0.1.tgz";
      path = fetchurl {
        name = "repeating___repeating_2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/repeating/-/repeating-2.0.1.tgz";
        sha1 = "5214c53a926d3552707527fbab415dbc08d06dda";
      };
    }

    {
      name = "replace_ext___replace_ext_0.0.1.tgz";
      path = fetchurl {
        name = "replace_ext___replace_ext_0.0.1.tgz";
        url  = "https://registry.yarnpkg.com/replace-ext/-/replace-ext-0.0.1.tgz";
        sha1 = "29bbd92078a739f0bcce2b4ee41e837953522924";
      };
    }

    {
      name = "replace_ext___replace_ext_1.0.0.tgz";
      path = fetchurl {
        name = "replace_ext___replace_ext_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/replace-ext/-/replace-ext-1.0.0.tgz";
        sha1 = "de63128373fcbf7c3ccfa4de5a480c45a67958eb";
      };
    }

    {
      name = "replacestream___replacestream_4.0.3.tgz";
      path = fetchurl {
        name = "replacestream___replacestream_4.0.3.tgz";
        url  = "https://registry.yarnpkg.com/replacestream/-/replacestream-4.0.3.tgz";
        sha1 = "3ee5798092be364b1cdb1484308492cb3dff2f36";
      };
    }

    {
      name = "request___request_2.83.0.tgz";
      path = fetchurl {
        name = "request___request_2.83.0.tgz";
        url  = "https://registry.yarnpkg.com/request/-/request-2.83.0.tgz";
        sha1 = "ca0b65da02ed62935887808e6f510381034e3356";
      };
    }

    {
      name = "request___request_2.81.0.tgz";
      path = fetchurl {
        name = "request___request_2.81.0.tgz";
        url  = "https://registry.yarnpkg.com/request/-/request-2.81.0.tgz";
        sha1 = "c6928946a0e06c5f8d6f8a9333469ffda46298a0";
      };
    }

    {
      name = "request___request_2.79.0.tgz";
      path = fetchurl {
        name = "request___request_2.79.0.tgz";
        url  = "https://registry.yarnpkg.com/request/-/request-2.79.0.tgz";
        sha1 = "4dfe5bf6be8b8cdc37fcf93e04b65577722710de";
      };
    }

    {
      name = "require_directory___require_directory_2.1.1.tgz";
      path = fetchurl {
        name = "require_directory___require_directory_2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/require-directory/-/require-directory-2.1.1.tgz";
        sha1 = "8c64ad5fd30dab1c976e2344ffe7f792a6a6df42";
      };
    }

    {
      name = "require_main_filename___require_main_filename_1.0.1.tgz";
      path = fetchurl {
        name = "require_main_filename___require_main_filename_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/require-main-filename/-/require-main-filename-1.0.1.tgz";
        sha1 = "97f717b69d48784f5f526a6c5aa8ffdda055a4d1";
      };
    }

    {
      name = "requirejs___requirejs_2.3.5.tgz";
      path = fetchurl {
        name = "requirejs___requirejs_2.3.5.tgz";
        url  = "https://registry.yarnpkg.com/requirejs/-/requirejs-2.3.5.tgz";
        sha1 = "617b9acbbcb336540ef4914d790323a8d4b861b0";
      };
    }

    {
      name = "resolve_dir___resolve_dir_1.0.1.tgz";
      path = fetchurl {
        name = "resolve_dir___resolve_dir_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/resolve-dir/-/resolve-dir-1.0.1.tgz";
        sha1 = "79a40644c362be82f26effe739c9bb5382046f43";
      };
    }

    {
      name = "resolve_url___resolve_url_0.2.1.tgz";
      path = fetchurl {
        name = "resolve_url___resolve_url_0.2.1.tgz";
        url  = "https://registry.yarnpkg.com/resolve-url/-/resolve-url-0.2.1.tgz";
        sha1 = "2c637fe77c893afd2a663fe21aa9080068e2052a";
      };
    }

    {
      name = "resolve___resolve_1.1.7.tgz";
      path = fetchurl {
        name = "resolve___resolve_1.1.7.tgz";
        url  = "https://registry.yarnpkg.com/resolve/-/resolve-1.1.7.tgz";
        sha1 = "203114d82ad2c5ed9e8e0411b3932875e889e97b";
      };
    }

    {
      name = "resolve___resolve_1.5.0.tgz";
      path = fetchurl {
        name = "resolve___resolve_1.5.0.tgz";
        url  = "https://registry.yarnpkg.com/resolve/-/resolve-1.5.0.tgz";
        sha1 = "1f09acce796c9a762579f31b2c1cc4c3cddf9f36";
      };
    }

    {
      name = "resp_modifier___resp_modifier_6.0.2.tgz";
      path = fetchurl {
        name = "resp_modifier___resp_modifier_6.0.2.tgz";
        url  = "https://registry.yarnpkg.com/resp-modifier/-/resp-modifier-6.0.2.tgz";
        sha1 = "b124de5c4fbafcba541f48ffa73970f4aa456b4f";
      };
    }

    {
      name = "right_align___right_align_0.1.3.tgz";
      path = fetchurl {
        name = "right_align___right_align_0.1.3.tgz";
        url  = "https://registry.yarnpkg.com/right-align/-/right-align-0.1.3.tgz";
        sha1 = "61339b722fe6a3515689210d24e14c96148613ef";
      };
    }

    {
      name = "right_now___right_now_1.0.0.tgz";
      path = fetchurl {
        name = "right_now___right_now_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/right-now/-/right-now-1.0.0.tgz";
        sha1 = "6e89609deebd7dcdaf8daecc9aea39cf585a0918";
      };
    }

    {
      name = "rimraf___rimraf_2.6.2.tgz";
      path = fetchurl {
        name = "rimraf___rimraf_2.6.2.tgz";
        url  = "https://registry.yarnpkg.com/rimraf/-/rimraf-2.6.2.tgz";
        sha1 = "2ed8150d24a16ea8651e6d6ef0f47c4158ce7a36";
      };
    }

    {
      name = "ripemd160___ripemd160_2.0.1.tgz";
      path = fetchurl {
        name = "ripemd160___ripemd160_2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/ripemd160/-/ripemd160-2.0.1.tgz";
        sha1 = "0f4584295c53a3628af7e6d79aca21ce57d1c6e7";
      };
    }

    {
      name = "route-recognizer";
      path = let repo = fetchgit {
          name = "route-recognizer";
          url = "git://github.com/btford/route-recognizer";
          rev = "24bde1b66fb8868f2b37c1d9d13ac70152198eaf";
          sha256 = "0k48wa29011zv08npcgrh0cf40y1wg9yjb655v15dnm7m24g40qz";
        };
      in runCommandNoCC "route-recognizer" {buildInputs = [gnutar];} ''
        # Set u+w because tar-fs can't unpack archives with read-only dirs
        # https://github.com/mafintosh/tar-fs/issues/79
        tar cf $out --mode u+w -C ${repo} .
      '';
    }

    {
      name = "rsvp___rsvp_3.6.2.tgz";
      path = fetchurl {
        name = "rsvp___rsvp_3.6.2.tgz";
        url  = "https://registry.yarnpkg.com/rsvp/-/rsvp-3.6.2.tgz";
        sha1 = "2e96491599a96cde1b515d5674a8f7a91452926a";
      };
    }

    {
      name = "safe_buffer___safe_buffer_5.1.1.tgz";
      path = fetchurl {
        name = "safe_buffer___safe_buffer_5.1.1.tgz";
        url  = "https://registry.yarnpkg.com/safe-buffer/-/safe-buffer-5.1.1.tgz";
        sha1 = "893312af69b2123def71f57889001671eeb2c853";
      };
    }

    {
      name = "sass_graph___sass_graph_2.2.4.tgz";
      path = fetchurl {
        name = "sass_graph___sass_graph_2.2.4.tgz";
        url  = "https://registry.yarnpkg.com/sass-graph/-/sass-graph-2.2.4.tgz";
        sha1 = "13fbd63cd1caf0908b9fd93476ad43a51d1e0b49";
      };
    }

    {
      name = "saucelabs___saucelabs_1.3.0.tgz";
      path = fetchurl {
        name = "saucelabs___saucelabs_1.3.0.tgz";
        url  = "https://registry.yarnpkg.com/saucelabs/-/saucelabs-1.3.0.tgz";
        sha1 = "d240e8009df7fa87306ec4578a69ba3b5c424fee";
      };
    }

    {
      name = "sax___sax_0.6.1.tgz";
      path = fetchurl {
        name = "sax___sax_0.6.1.tgz";
        url  = "https://registry.yarnpkg.com/sax/-/sax-0.6.1.tgz";
        sha1 = "563b19c7c1de892e09bfc4f2fc30e3c27f0952b9";
      };
    }

    {
      name = "sax___sax_1.2.4.tgz";
      path = fetchurl {
        name = "sax___sax_1.2.4.tgz";
        url  = "https://registry.yarnpkg.com/sax/-/sax-1.2.4.tgz";
        sha1 = "2816234e2378bddc4e5354fab5caa895df7100d9";
      };
    }

    {
      name = "scss_tokenizer___scss_tokenizer_0.2.3.tgz";
      path = fetchurl {
        name = "scss_tokenizer___scss_tokenizer_0.2.3.tgz";
        url  = "https://registry.yarnpkg.com/scss-tokenizer/-/scss-tokenizer-0.2.3.tgz";
        sha1 = "8eb06db9a9723333824d3f5530641149847ce5d1";
      };
    }

    {
      name = "selenium_server_standalone_jar___selenium_server_standalone_jar_3.8.1.tgz";
      path = fetchurl {
        name = "selenium_server_standalone_jar___selenium_server_standalone_jar_3.8.1.tgz";
        url  = "https://registry.yarnpkg.com/selenium-server-standalone-jar/-/selenium-server-standalone-jar-3.8.1.tgz";
        sha1 = "24efe8a130f07a074b7c1a2ca3d6cd50c06ccb7d";
      };
    }

    {
      name = "selenium_webdriver___selenium_webdriver_3.6.0.tgz";
      path = fetchurl {
        name = "selenium_webdriver___selenium_webdriver_3.6.0.tgz";
        url  = "https://registry.yarnpkg.com/selenium-webdriver/-/selenium-webdriver-3.6.0.tgz";
        sha1 = "2ba87a1662c020b8988c981ae62cb2a01298eafc";
      };
    }

    {
      name = "selenium_webdriver___selenium_webdriver_2.53.3.tgz";
      path = fetchurl {
        name = "selenium_webdriver___selenium_webdriver_2.53.3.tgz";
        url  = "https://registry.yarnpkg.com/selenium-webdriver/-/selenium-webdriver-2.53.3.tgz";
        sha1 = "d29ff5a957dff1a1b49dc457756e4e4bfbdce085";
      };
    }

    {
      name = "semver___semver_5.4.1.tgz";
      path = fetchurl {
        name = "semver___semver_5.4.1.tgz";
        url  = "https://registry.yarnpkg.com/semver/-/semver-5.4.1.tgz";
        sha1 = "e059c09d8571f0540823733433505d3a2f00b18e";
      };
    }

    {
      name = "semver___semver_2.3.2.tgz";
      path = fetchurl {
        name = "semver___semver_2.3.2.tgz";
        url  = "https://registry.yarnpkg.com/semver/-/semver-2.3.2.tgz";
        sha1 = "b9848f25d6cf36333073ec9ef8856d42f1233e52";
      };
    }

    {
      name = "semver___semver_4.3.6.tgz";
      path = fetchurl {
        name = "semver___semver_4.3.6.tgz";
        url  = "https://registry.yarnpkg.com/semver/-/semver-4.3.6.tgz";
        sha1 = "300bc6e0e86374f7ba61068b5b1ecd57fc6532da";
      };
    }

    {
      name = "semver___semver_5.0.3.tgz";
      path = fetchurl {
        name = "semver___semver_5.0.3.tgz";
        url  = "https://registry.yarnpkg.com/semver/-/semver-5.0.3.tgz";
        sha1 = "77466de589cd5d3c95f138aa78bc569a3cb5d27a";
      };
    }

    {
      name = "semver___semver_5.3.0.tgz";
      path = fetchurl {
        name = "semver___semver_5.3.0.tgz";
        url  = "https://registry.yarnpkg.com/semver/-/semver-5.3.0.tgz";
        sha1 = "9b2ce5d3de02d17c6012ad326aa6b4d0cf54f94f";
      };
    }

    {
      name = "send___send_0.16.1.tgz";
      path = fetchurl {
        name = "send___send_0.16.1.tgz";
        url  = "https://registry.yarnpkg.com/send/-/send-0.16.1.tgz";
        sha1 = "a70e1ca21d1382c11d0d9f6231deb281080d7ab3";
      };
    }

    {
      name = "sentence_case___sentence_case_1.1.3.tgz";
      path = fetchurl {
        name = "sentence_case___sentence_case_1.1.3.tgz";
        url  = "https://registry.yarnpkg.com/sentence-case/-/sentence-case-1.1.3.tgz";
        sha1 = "8034aafc2145772d3abe1509aa42c9e1042dc139";
      };
    }

    {
      name = "sequencify___sequencify_0.0.7.tgz";
      path = fetchurl {
        name = "sequencify___sequencify_0.0.7.tgz";
        url  = "https://registry.yarnpkg.com/sequencify/-/sequencify-0.0.7.tgz";
        sha1 = "90cff19d02e07027fd767f5ead3e7b95d1e7380c";
      };
    }

    {
      name = "serve_static___serve_static_1.13.1.tgz";
      path = fetchurl {
        name = "serve_static___serve_static_1.13.1.tgz";
        url  = "https://registry.yarnpkg.com/serve-static/-/serve-static-1.13.1.tgz";
        sha1 = "4c57d53404a761d8f2e7c1e8a18a47dbf278a719";
      };
    }

    {
      name = "set_blocking___set_blocking_2.0.0.tgz";
      path = fetchurl {
        name = "set_blocking___set_blocking_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/set-blocking/-/set-blocking-2.0.0.tgz";
        sha1 = "045f9782d011ae9a6803ddd382b24392b3d890f7";
      };
    }

    {
      name = "set_getter___set_getter_0.1.0.tgz";
      path = fetchurl {
        name = "set_getter___set_getter_0.1.0.tgz";
        url  = "https://registry.yarnpkg.com/set-getter/-/set-getter-0.1.0.tgz";
        sha1 = "d769c182c9d5a51f409145f2fba82e5e86e80376";
      };
    }

    {
      name = "set_immediate_shim___set_immediate_shim_1.0.1.tgz";
      path = fetchurl {
        name = "set_immediate_shim___set_immediate_shim_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/set-immediate-shim/-/set-immediate-shim-1.0.1.tgz";
        sha1 = "4b2b1b27eb808a9f8dcc481a58e5e56f599f3f61";
      };
    }

    {
      name = "set_value___set_value_0.4.3.tgz";
      path = fetchurl {
        name = "set_value___set_value_0.4.3.tgz";
        url  = "https://registry.yarnpkg.com/set-value/-/set-value-0.4.3.tgz";
        sha1 = "7db08f9d3d22dc7f78e53af3c3bf4666ecdfccf1";
      };
    }

    {
      name = "set_value___set_value_2.0.0.tgz";
      path = fetchurl {
        name = "set_value___set_value_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/set-value/-/set-value-2.0.0.tgz";
        sha1 = "71ae4a88f0feefbbf52d1ea604f3fb315ebb6274";
      };
    }

    {
      name = "setprototypeof___setprototypeof_1.0.3.tgz";
      path = fetchurl {
        name = "setprototypeof___setprototypeof_1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/setprototypeof/-/setprototypeof-1.0.3.tgz";
        sha1 = "66567e37043eeb4f04d91bd658c0cbefb55b8e04";
      };
    }

    {
      name = "sha.js___sha.js_2.4.9.tgz";
      path = fetchurl {
        name = "sha.js___sha.js_2.4.9.tgz";
        url  = "https://registry.yarnpkg.com/sha.js/-/sha.js-2.4.9.tgz";
        sha1 = "98f64880474b74f4a38b8da9d3c0f2d104633e7d";
      };
    }

    {
      name = "shasum___shasum_1.0.2.tgz";
      path = fetchurl {
        name = "shasum___shasum_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/shasum/-/shasum-1.0.2.tgz";
        sha1 = "e7012310d8f417f4deb5712150e5678b87ae565f";
      };
    }

    {
      name = "shebang_command___shebang_command_1.2.0.tgz";
      path = fetchurl {
        name = "shebang_command___shebang_command_1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/shebang-command/-/shebang-command-1.2.0.tgz";
        sha1 = "44aac65b695b03398968c39f363fee5deafdf1ea";
      };
    }

    {
      name = "shebang_regex___shebang_regex_1.0.0.tgz";
      path = fetchurl {
        name = "shebang_regex___shebang_regex_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/shebang-regex/-/shebang-regex-1.0.0.tgz";
        sha1 = "da42f49740c0b42db2ca9728571cb190c98efea3";
      };
    }

    {
      name = "shell_quote___shell_quote_1.6.1.tgz";
      path = fetchurl {
        name = "shell_quote___shell_quote_1.6.1.tgz";
        url  = "https://registry.yarnpkg.com/shell-quote/-/shell-quote-1.6.1.tgz";
        sha1 = "f4781949cce402697127430ea3b3c5476f481767";
      };
    }

    {
      name = "sigmund___sigmund_1.0.1.tgz";
      path = fetchurl {
        name = "sigmund___sigmund_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/sigmund/-/sigmund-1.0.1.tgz";
        sha1 = "3ff21f198cad2175f9f3b781853fd94d0d19b590";
      };
    }

    {
      name = "signal_exit___signal_exit_3.0.2.tgz";
      path = fetchurl {
        name = "signal_exit___signal_exit_3.0.2.tgz";
        url  = "https://registry.yarnpkg.com/signal-exit/-/signal-exit-3.0.2.tgz";
        sha1 = "b5fdc08f1287ea1178628e415e25132b73646c6d";
      };
    }

    {
      name = "simple_fmt___simple_fmt_0.1.0.tgz";
      path = fetchurl {
        name = "simple_fmt___simple_fmt_0.1.0.tgz";
        url  = "https://registry.yarnpkg.com/simple-fmt/-/simple-fmt-0.1.0.tgz";
        sha1 = "191bf566a59e6530482cb25ab53b4a8dc85c3a6b";
      };
    }

    {
      name = "simple_html_index___simple_html_index_1.5.0.tgz";
      path = fetchurl {
        name = "simple_html_index___simple_html_index_1.5.0.tgz";
        url  = "https://registry.yarnpkg.com/simple-html-index/-/simple-html-index-1.5.0.tgz";
        sha1 = "2c93eeaebac001d8a135fc0022bd4ade8f58996f";
      };
    }

    {
      name = "simple_is___simple_is_0.2.0.tgz";
      path = fetchurl {
        name = "simple_is___simple_is_0.2.0.tgz";
        url  = "https://registry.yarnpkg.com/simple-is/-/simple-is-0.2.0.tgz";
        sha1 = "2abb75aade39deb5cc815ce10e6191164850baf0";
      };
    }

    {
      name = "slash___slash_1.0.0.tgz";
      path = fetchurl {
        name = "slash___slash_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/slash/-/slash-1.0.0.tgz";
        sha1 = "c41f2f6c39fc16d1cd17ad4b5d896114ae470d55";
      };
    }

    {
      name = "smart_buffer___smart_buffer_1.1.15.tgz";
      path = fetchurl {
        name = "smart_buffer___smart_buffer_1.1.15.tgz";
        url  = "https://registry.yarnpkg.com/smart-buffer/-/smart-buffer-1.1.15.tgz";
        sha1 = "7f114b5b65fab3e2a35aa775bb12f0d1c649bf16";
      };
    }

    {
      name = "snake_case___snake_case_1.1.2.tgz";
      path = fetchurl {
        name = "snake_case___snake_case_1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/snake-case/-/snake-case-1.1.2.tgz";
        sha1 = "0c2f25e305158d9a18d3d977066187fef8a5a66a";
      };
    }

    {
      name = "snapdragon_node___snapdragon_node_2.1.1.tgz";
      path = fetchurl {
        name = "snapdragon_node___snapdragon_node_2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/snapdragon-node/-/snapdragon-node-2.1.1.tgz";
        sha1 = "6c175f86ff14bdb0724563e8f3c1b021a286853b";
      };
    }

    {
      name = "snapdragon_util___snapdragon_util_3.0.1.tgz";
      path = fetchurl {
        name = "snapdragon_util___snapdragon_util_3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/snapdragon-util/-/snapdragon-util-3.0.1.tgz";
        sha1 = "f956479486f2acd79700693f6f7b805e45ab56e2";
      };
    }

    {
      name = "snapdragon___snapdragon_0.8.1.tgz";
      path = fetchurl {
        name = "snapdragon___snapdragon_0.8.1.tgz";
        url  = "https://registry.yarnpkg.com/snapdragon/-/snapdragon-0.8.1.tgz";
        sha1 = "e12b5487faded3e3dea0ac91e9400bf75b401370";
      };
    }

    {
      name = "sntp___sntp_1.0.9.tgz";
      path = fetchurl {
        name = "sntp___sntp_1.0.9.tgz";
        url  = "https://registry.yarnpkg.com/sntp/-/sntp-1.0.9.tgz";
        sha1 = "6541184cc90aeea6c6e7b35e2659082443c66198";
      };
    }

    {
      name = "sntp___sntp_2.1.0.tgz";
      path = fetchurl {
        name = "sntp___sntp_2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/sntp/-/sntp-2.1.0.tgz";
        sha1 = "2c6cec14fedc2222739caf9b5c3d85d1cc5a2cc8";
      };
    }

    {
      name = "socks_proxy_agent___socks_proxy_agent_2.1.1.tgz";
      path = fetchurl {
        name = "socks_proxy_agent___socks_proxy_agent_2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/socks-proxy-agent/-/socks-proxy-agent-2.1.1.tgz";
        sha1 = "86ebb07193258637870e13b7bd99f26c663df3d3";
      };
    }

    {
      name = "socks___socks_1.1.10.tgz";
      path = fetchurl {
        name = "socks___socks_1.1.10.tgz";
        url  = "https://registry.yarnpkg.com/socks/-/socks-1.1.10.tgz";
        sha1 = "5b8b7fc7c8f341c53ed056e929b7bf4de8ba7b5a";
      };
    }

    {
      name = "sort_keys___sort_keys_1.1.2.tgz";
      path = fetchurl {
        name = "sort_keys___sort_keys_1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/sort-keys/-/sort-keys-1.1.2.tgz";
        sha1 = "441b6d4d346798f1b4e49e8920adfba0e543f9ad";
      };
    }

    {
      name = "source_map_resolve___source_map_resolve_0.5.1.tgz";
      path = fetchurl {
        name = "source_map_resolve___source_map_resolve_0.5.1.tgz";
        url  = "https://registry.yarnpkg.com/source-map-resolve/-/source-map-resolve-0.5.1.tgz";
        sha1 = "7ad0f593f2281598e854df80f19aae4b92d7a11a";
      };
    }

    {
      name = "source_map_support___source_map_support_0.4.18.tgz";
      path = fetchurl {
        name = "source_map_support___source_map_support_0.4.18.tgz";
        url  = "https://registry.yarnpkg.com/source-map-support/-/source-map-support-0.4.18.tgz";
        sha1 = "0286a6de8be42641338594e97ccea75f0a2c585f";
      };
    }

    {
      name = "source_map_url___source_map_url_0.4.0.tgz";
      path = fetchurl {
        name = "source_map_url___source_map_url_0.4.0.tgz";
        url  = "https://registry.yarnpkg.com/source-map-url/-/source-map-url-0.4.0.tgz";
        sha1 = "3e935d7ddd73631b97659956d55128e87b5084a3";
      };
    }

    {
      name = "source_map___source_map_0.1.32.tgz";
      path = fetchurl {
        name = "source_map___source_map_0.1.32.tgz";
        url  = "https://registry.yarnpkg.com/source-map/-/source-map-0.1.32.tgz";
        sha1 = "c8b6c167797ba4740a8ea33252162ff08591b266";
      };
    }

    {
      name = "source_map___source_map_0.4.4.tgz";
      path = fetchurl {
        name = "source_map___source_map_0.4.4.tgz";
        url  = "https://registry.yarnpkg.com/source-map/-/source-map-0.4.4.tgz";
        sha1 = "eba4f5da9c0dc999de68032d8b4f76173652036b";
      };
    }

    {
      name = "source_map___source_map_0.5.7.tgz";
      path = fetchurl {
        name = "source_map___source_map_0.5.7.tgz";
        url  = "https://registry.yarnpkg.com/source-map/-/source-map-0.5.7.tgz";
        sha1 = "8a039d2d1021d22d1ea14c80d8ea468ba2ef3fcc";
      };
    }

    {
      name = "source_map___source_map_0.6.1.tgz";
      path = fetchurl {
        name = "source_map___source_map_0.6.1.tgz";
        url  = "https://registry.yarnpkg.com/source-map/-/source-map-0.6.1.tgz";
        sha1 = "74722af32e9614e9c287a8d0bbde48b5e2f1a263";
      };
    }

    {
      name = "sparkles___sparkles_1.0.0.tgz";
      path = fetchurl {
        name = "sparkles___sparkles_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/sparkles/-/sparkles-1.0.0.tgz";
        sha1 = "1acbbfb592436d10bbe8f785b7cc6f82815012c3";
      };
    }

    {
      name = "spdx_correct___spdx_correct_1.0.2.tgz";
      path = fetchurl {
        name = "spdx_correct___spdx_correct_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/spdx-correct/-/spdx-correct-1.0.2.tgz";
        sha1 = "4b3073d933ff51f3912f03ac5519498a4150db40";
      };
    }

    {
      name = "spdx_expression_parse___spdx_expression_parse_1.0.4.tgz";
      path = fetchurl {
        name = "spdx_expression_parse___spdx_expression_parse_1.0.4.tgz";
        url  = "https://registry.yarnpkg.com/spdx-expression-parse/-/spdx-expression-parse-1.0.4.tgz";
        sha1 = "9bdf2f20e1f40ed447fbe273266191fced51626c";
      };
    }

    {
      name = "spdx_license_ids___spdx_license_ids_1.2.2.tgz";
      path = fetchurl {
        name = "spdx_license_ids___spdx_license_ids_1.2.2.tgz";
        url  = "https://registry.yarnpkg.com/spdx-license-ids/-/spdx-license-ids-1.2.2.tgz";
        sha1 = "c9df7a3424594ade6bd11900d596696dc06bac57";
      };
    }

    {
      name = "split_string___split_string_3.1.0.tgz";
      path = fetchurl {
        name = "split_string___split_string_3.1.0.tgz";
        url  = "https://registry.yarnpkg.com/split-string/-/split-string-3.1.0.tgz";
        sha1 = "7cb09dda3a86585705c64b39a6466038682e8fe2";
      };
    }

    {
      name = "split2___split2_0.2.1.tgz";
      path = fetchurl {
        name = "split2___split2_0.2.1.tgz";
        url  = "https://registry.yarnpkg.com/split2/-/split2-0.2.1.tgz";
        sha1 = "02ddac9adc03ec0bb78c1282ec079ca6e85ae900";
      };
    }

    {
      name = "split___split_0.3.3.tgz";
      path = fetchurl {
        name = "split___split_0.3.3.tgz";
        url  = "https://registry.yarnpkg.com/split/-/split-0.3.3.tgz";
        sha1 = "cd0eea5e63a211dfff7eb0f091c4133e2d0dd28f";
      };
    }

    {
      name = "sprintf_js___sprintf_js_1.0.3.tgz";
      path = fetchurl {
        name = "sprintf_js___sprintf_js_1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/sprintf-js/-/sprintf-js-1.0.3.tgz";
        sha1 = "04e6926f662895354f3dd015203633b857297e2c";
      };
    }

    {
      name = "sshpk___sshpk_1.13.1.tgz";
      path = fetchurl {
        name = "sshpk___sshpk_1.13.1.tgz";
        url  = "https://registry.yarnpkg.com/sshpk/-/sshpk-1.13.1.tgz";
        sha1 = "512df6da6287144316dc4c18fe1cf1d940739be3";
      };
    }

    {
      name = "stable___stable_0.1.6.tgz";
      path = fetchurl {
        name = "stable___stable_0.1.6.tgz";
        url  = "https://registry.yarnpkg.com/stable/-/stable-0.1.6.tgz";
        sha1 = "910f5d2aed7b520c6e777499c1f32e139fdecb10";
      };
    }

    {
      name = "stacked___stacked_1.1.1.tgz";
      path = fetchurl {
        name = "stacked___stacked_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/stacked/-/stacked-1.1.1.tgz";
        sha1 = "2c7fa38cc7e37a3411a77cd8e792de448f9f6975";
      };
    }

    {
      name = "static_extend___static_extend_0.1.2.tgz";
      path = fetchurl {
        name = "static_extend___static_extend_0.1.2.tgz";
        url  = "https://registry.yarnpkg.com/static-extend/-/static-extend-0.1.2.tgz";
        sha1 = "60809c39cbff55337226fd5e0b520f341f1fb5c6";
      };
    }

    {
      name = "statuses___statuses_1.4.0.tgz";
      path = fetchurl {
        name = "statuses___statuses_1.4.0.tgz";
        url  = "https://registry.yarnpkg.com/statuses/-/statuses-1.4.0.tgz";
        sha1 = "bb73d446da2796106efcc1b601a253d6c46bd087";
      };
    }

    {
      name = "statuses___statuses_1.3.1.tgz";
      path = fetchurl {
        name = "statuses___statuses_1.3.1.tgz";
        url  = "https://registry.yarnpkg.com/statuses/-/statuses-1.3.1.tgz";
        sha1 = "faf51b9eb74aaef3b3acf4ad5f61abf24cb7b93e";
      };
    }

    {
      name = "stdout_stream___stdout_stream_1.4.0.tgz";
      path = fetchurl {
        name = "stdout_stream___stdout_stream_1.4.0.tgz";
        url  = "https://registry.yarnpkg.com/stdout-stream/-/stdout-stream-1.4.0.tgz";
        sha1 = "a2c7c8587e54d9427ea9edb3ac3f2cd522df378b";
      };
    }

    {
      name = "stream_browserify___stream_browserify_2.0.1.tgz";
      path = fetchurl {
        name = "stream_browserify___stream_browserify_2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/stream-browserify/-/stream-browserify-2.0.1.tgz";
        sha1 = "66266ee5f9bdb9940a4e4514cafb43bb71e5c9db";
      };
    }

    {
      name = "stream_combiner2___stream_combiner2_1.1.1.tgz";
      path = fetchurl {
        name = "stream_combiner2___stream_combiner2_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/stream-combiner2/-/stream-combiner2-1.1.1.tgz";
        sha1 = "fb4d8a1420ea362764e21ad4780397bebcb41cbe";
      };
    }

    {
      name = "stream_combiner___stream_combiner_0.0.4.tgz";
      path = fetchurl {
        name = "stream_combiner___stream_combiner_0.0.4.tgz";
        url  = "https://registry.yarnpkg.com/stream-combiner/-/stream-combiner-0.0.4.tgz";
        sha1 = "4d5e433c185261dde623ca3f44c586bcf5c4ad14";
      };
    }

    {
      name = "stream_consume___stream_consume_0.1.0.tgz";
      path = fetchurl {
        name = "stream_consume___stream_consume_0.1.0.tgz";
        url  = "https://registry.yarnpkg.com/stream-consume/-/stream-consume-0.1.0.tgz";
        sha1 = "a41ead1a6d6081ceb79f65b061901b6d8f3d1d0f";
      };
    }

    {
      name = "stream_http___stream_http_2.7.2.tgz";
      path = fetchurl {
        name = "stream_http___stream_http_2.7.2.tgz";
        url  = "https://registry.yarnpkg.com/stream-http/-/stream-http-2.7.2.tgz";
        sha1 = "40a050ec8dc3b53b33d9909415c02c0bf1abfbad";
      };
    }

    {
      name = "stream_splicer___stream_splicer_2.0.0.tgz";
      path = fetchurl {
        name = "stream_splicer___stream_splicer_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/stream-splicer/-/stream-splicer-2.0.0.tgz";
        sha1 = "1b63be438a133e4b671cc1935197600175910d83";
      };
    }

    {
      name = "strict_uri_encode___strict_uri_encode_1.1.0.tgz";
      path = fetchurl {
        name = "strict_uri_encode___strict_uri_encode_1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/strict-uri-encode/-/strict-uri-encode-1.1.0.tgz";
        sha1 = "279b225df1d582b1f54e65addd4352e18faa0713";
      };
    }

    {
      name = "string_width___string_width_1.0.2.tgz";
      path = fetchurl {
        name = "string_width___string_width_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/string-width/-/string-width-1.0.2.tgz";
        sha1 = "118bdf5b8cdc51a2a7e70d211e07e2b0b9b107d3";
      };
    }

    {
      name = "string_width___string_width_2.1.1.tgz";
      path = fetchurl {
        name = "string_width___string_width_2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/string-width/-/string-width-2.1.1.tgz";
        sha1 = "ab93f27a8dc13d28cac815c462143a6d9012ae9e";
      };
    }

    {
      name = "string.prototype.startswith___string.prototype.startswith_0.2.0.tgz";
      path = fetchurl {
        name = "string.prototype.startswith___string.prototype.startswith_0.2.0.tgz";
        url  = "https://registry.yarnpkg.com/string.prototype.startswith/-/string.prototype.startswith-0.2.0.tgz";
        sha1 = "da68982e353a4e9ac4a43b450a2045d1c445ae7b";
      };
    }

    {
      name = "string_decoder___string_decoder_0.10.31.tgz";
      path = fetchurl {
        name = "string_decoder___string_decoder_0.10.31.tgz";
        url  = "https://registry.yarnpkg.com/string_decoder/-/string_decoder-0.10.31.tgz";
        sha1 = "62e203bc41766c6c28c9fc84301dab1c5310fa94";
      };
    }

    {
      name = "string_decoder___string_decoder_1.0.3.tgz";
      path = fetchurl {
        name = "string_decoder___string_decoder_1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/string_decoder/-/string_decoder-1.0.3.tgz";
        sha1 = "0fc67d7c141825de94282dd536bec6b9bce860ab";
      };
    }

    {
      name = "stringify_object___stringify_object_2.4.0.tgz";
      path = fetchurl {
        name = "stringify_object___stringify_object_2.4.0.tgz";
        url  = "https://registry.yarnpkg.com/stringify-object/-/stringify-object-2.4.0.tgz";
        sha1 = "c62d11023eb21fe2d9b087be039a26df3b22a09d";
      };
    }

    {
      name = "stringmap___stringmap_0.2.2.tgz";
      path = fetchurl {
        name = "stringmap___stringmap_0.2.2.tgz";
        url  = "https://registry.yarnpkg.com/stringmap/-/stringmap-0.2.2.tgz";
        sha1 = "556c137b258f942b8776f5b2ef582aa069d7d1b1";
      };
    }

    {
      name = "stringset___stringset_0.2.1.tgz";
      path = fetchurl {
        name = "stringset___stringset_0.2.1.tgz";
        url  = "https://registry.yarnpkg.com/stringset/-/stringset-0.2.1.tgz";
        sha1 = "ef259c4e349344377fcd1c913dd2e848c9c042b5";
      };
    }

    {
      name = "stringstream___stringstream_0.0.5.tgz";
      path = fetchurl {
        name = "stringstream___stringstream_0.0.5.tgz";
        url  = "https://registry.yarnpkg.com/stringstream/-/stringstream-0.0.5.tgz";
        sha1 = "4e484cd4de5a0bbbee18e46307710a8a81621878";
      };
    }

    {
      name = "strip_ansi___strip_ansi_0.3.0.tgz";
      path = fetchurl {
        name = "strip_ansi___strip_ansi_0.3.0.tgz";
        url  = "https://registry.yarnpkg.com/strip-ansi/-/strip-ansi-0.3.0.tgz";
        sha1 = "25f48ea22ca79187f3174a4db8759347bb126220";
      };
    }

    {
      name = "strip_ansi___strip_ansi_3.0.1.tgz";
      path = fetchurl {
        name = "strip_ansi___strip_ansi_3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/strip-ansi/-/strip-ansi-3.0.1.tgz";
        sha1 = "6a385fb8853d952d5ff05d0e8aaf94278dc63dcf";
      };
    }

    {
      name = "strip_ansi___strip_ansi_4.0.0.tgz";
      path = fetchurl {
        name = "strip_ansi___strip_ansi_4.0.0.tgz";
        url  = "https://registry.yarnpkg.com/strip-ansi/-/strip-ansi-4.0.0.tgz";
        sha1 = "a8479022eb1ac368a871389b635262c505ee368f";
      };
    }

    {
      name = "strip_bom_stream___strip_bom_stream_2.0.0.tgz";
      path = fetchurl {
        name = "strip_bom_stream___strip_bom_stream_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/strip-bom-stream/-/strip-bom-stream-2.0.0.tgz";
        sha1 = "f87db5ef2613f6968aa545abfe1ec728b6a829ca";
      };
    }

    {
      name = "strip_bom___strip_bom_1.0.0.tgz";
      path = fetchurl {
        name = "strip_bom___strip_bom_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/strip-bom/-/strip-bom-1.0.0.tgz";
        sha1 = "85b8862f3844b5a6d5ec8467a93598173a36f794";
      };
    }

    {
      name = "strip_bom___strip_bom_2.0.0.tgz";
      path = fetchurl {
        name = "strip_bom___strip_bom_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/strip-bom/-/strip-bom-2.0.0.tgz";
        sha1 = "6219a85616520491f35788bdbf1447a99c7e6b0e";
      };
    }

    {
      name = "strip_eof___strip_eof_1.0.0.tgz";
      path = fetchurl {
        name = "strip_eof___strip_eof_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/strip-eof/-/strip-eof-1.0.0.tgz";
        sha1 = "bb43ff5598a6eb05d89b59fcd129c983313606bf";
      };
    }

    {
      name = "strip_indent___strip_indent_1.0.1.tgz";
      path = fetchurl {
        name = "strip_indent___strip_indent_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/strip-indent/-/strip-indent-1.0.1.tgz";
        sha1 = "0c7962a6adefa7bbd4ac366460a638552ae1a0a2";
      };
    }

    {
      name = "strip_json_comments___strip_json_comments_2.0.1.tgz";
      path = fetchurl {
        name = "strip_json_comments___strip_json_comments_2.0.1.tgz";
        url  = "https://registry.yarnpkg.com/strip-json-comments/-/strip-json-comments-2.0.1.tgz";
        sha1 = "3c531942e908c2697c0ec344858c286c7ca0a60a";
      };
    }

    {
      name = "subarg___subarg_1.0.0.tgz";
      path = fetchurl {
        name = "subarg___subarg_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/subarg/-/subarg-1.0.0.tgz";
        sha1 = "f62cf17581e996b48fc965699f54c06ae268b8d2";
      };
    }

    {
      name = "supports_color___supports_color_1.3.1.tgz";
      path = fetchurl {
        name = "supports_color___supports_color_1.3.1.tgz";
        url  = "https://registry.yarnpkg.com/supports-color/-/supports-color-1.3.1.tgz";
        sha1 = "15758df09d8ff3b4acc307539fabe27095e1042d";
      };
    }

    {
      name = "supports_color___supports_color_3.1.2.tgz";
      path = fetchurl {
        name = "supports_color___supports_color_3.1.2.tgz";
        url  = "https://registry.yarnpkg.com/supports-color/-/supports-color-3.1.2.tgz";
        sha1 = "72a262894d9d408b956ca05ff37b2ed8a6e2a2d5";
      };
    }

    {
      name = "supports_color___supports_color_0.2.0.tgz";
      path = fetchurl {
        name = "supports_color___supports_color_0.2.0.tgz";
        url  = "https://registry.yarnpkg.com/supports-color/-/supports-color-0.2.0.tgz";
        sha1 = "d92de2694eb3f67323973d7ae3d8b55b4c22190a";
      };
    }

    {
      name = "supports_color___supports_color_2.0.0.tgz";
      path = fetchurl {
        name = "supports_color___supports_color_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/supports-color/-/supports-color-2.0.0.tgz";
        sha1 = "535d045ce6b6363fa40117084629995e9df324c7";
      };
    }

    {
      name = "supports_color___supports_color_3.2.3.tgz";
      path = fetchurl {
        name = "supports_color___supports_color_3.2.3.tgz";
        url  = "https://registry.yarnpkg.com/supports-color/-/supports-color-3.2.3.tgz";
        sha1 = "65ac0504b3954171d8a64946b2ae3cbb8a5f54f6";
      };
    }

    {
      name = "supports_color___supports_color_4.5.0.tgz";
      path = fetchurl {
        name = "supports_color___supports_color_4.5.0.tgz";
        url  = "https://registry.yarnpkg.com/supports-color/-/supports-color-4.5.0.tgz";
        sha1 = "be7a0de484dec5c5cddf8b3d59125044912f635b";
      };
    }

    {
      name = "svg.js___svg.js_2.6.3.tgz";
      path = fetchurl {
        name = "svg.js___svg.js_2.6.3.tgz";
        url  = "https://registry.yarnpkg.com/svg.js/-/svg.js-2.6.3.tgz";
        sha1 = "ac07c61f54ada2745548800307bb45b4b3b519eb";
      };
    }

    {
      name = "svgo___svgo_0.7.2.tgz";
      path = fetchurl {
        name = "svgo___svgo_0.7.2.tgz";
        url  = "https://registry.yarnpkg.com/svgo/-/svgo-0.7.2.tgz";
        sha1 = "9f5772413952135c6fefbf40afe6a4faa88b4bb5";
      };
    }

    {
      name = "swap_case___swap_case_1.1.2.tgz";
      path = fetchurl {
        name = "swap_case___swap_case_1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/swap-case/-/swap-case-1.1.2.tgz";
        sha1 = "c39203a4587385fad3c850a0bd1bcafa081974e3";
      };
    }

    {
      name = "syntax_error___syntax_error_1.3.0.tgz";
      path = fetchurl {
        name = "syntax_error___syntax_error_1.3.0.tgz";
        url  = "https://registry.yarnpkg.com/syntax-error/-/syntax-error-1.3.0.tgz";
        sha1 = "1ed9266c4d40be75dc55bf9bb1cb77062bb96ca1";
      };
    }

    {
      name = "tar_pack___tar_pack_3.4.1.tgz";
      path = fetchurl {
        name = "tar_pack___tar_pack_3.4.1.tgz";
        url  = "https://registry.yarnpkg.com/tar-pack/-/tar-pack-3.4.1.tgz";
        sha1 = "e1dbc03a9b9d3ba07e896ad027317eb679a10a1f";
      };
    }

    {
      name = "tar___tar_4.0.2.tgz";
      path = fetchurl {
        name = "tar___tar_4.0.2.tgz";
        url  = "https://registry.yarnpkg.com/tar/-/tar-4.0.2.tgz";
        sha1 = "e8e22bf3eec330e5c616d415a698395e294e8fad";
      };
    }

    {
      name = "tar___tar_2.2.1.tgz";
      path = fetchurl {
        name = "tar___tar_2.2.1.tgz";
        url  = "https://registry.yarnpkg.com/tar/-/tar-2.2.1.tgz";
        sha1 = "8e4d2a256c0e2185c6b18ad694aec968b83cb1d1";
      };
    }

    {
      name = "temp_write___temp_write_0.1.1.tgz";
      path = fetchurl {
        name = "temp_write___temp_write_0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/temp-write/-/temp-write-0.1.1.tgz";
        sha1 = "0b6467838dd77fbf7f62a0c93da879732ffda932";
      };
    }

    {
      name = "tempfile___tempfile_0.1.3.tgz";
      path = fetchurl {
        name = "tempfile___tempfile_0.1.3.tgz";
        url  = "https://registry.yarnpkg.com/tempfile/-/tempfile-0.1.3.tgz";
        sha1 = "7d6b710047339d39f847327a056dadf183103010";
      };
    }

    {
      name = "term_color___term_color_1.0.1.tgz";
      path = fetchurl {
        name = "term_color___term_color_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/term-color/-/term-color-1.0.1.tgz";
        sha1 = "38e192553a473e35e41604ff5199846bf8117a3a";
      };
    }

    {
      name = "textextensions___textextensions_1.0.2.tgz";
      path = fetchurl {
        name = "textextensions___textextensions_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/textextensions/-/textextensions-1.0.2.tgz";
        sha1 = "65486393ee1f2bb039a60cbba05b0b68bd9501d2";
      };
    }

    {
      name = "through2___through2_0.5.1.tgz";
      path = fetchurl {
        name = "through2___through2_0.5.1.tgz";
        url  = "https://registry.yarnpkg.com/through2/-/through2-0.5.1.tgz";
        sha1 = "dfdd012eb9c700e2323fd334f38ac622ab372da7";
      };
    }

    {
      name = "through2___through2_0.6.5.tgz";
      path = fetchurl {
        name = "through2___through2_0.6.5.tgz";
        url  = "https://registry.yarnpkg.com/through2/-/through2-0.6.5.tgz";
        sha1 = "41ab9c67b29d57209071410e1d7a7a968cd3ad48";
      };
    }

    {
      name = "through2___through2_1.1.1.tgz";
      path = fetchurl {
        name = "through2___through2_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/through2/-/through2-1.1.1.tgz";
        sha1 = "0847cbc4449f3405574dbdccd9bb841b83ac3545";
      };
    }

    {
      name = "through2___through2_2.0.3.tgz";
      path = fetchurl {
        name = "through2___through2_2.0.3.tgz";
        url  = "https://registry.yarnpkg.com/through2/-/through2-2.0.3.tgz";
        sha1 = "0004569b37c7c74ba39c43f3ced78d1ad94140be";
      };
    }

    {
      name = "through___through_2.3.8.tgz";
      path = fetchurl {
        name = "through___through_2.3.8.tgz";
        url  = "https://registry.yarnpkg.com/through/-/through-2.3.8.tgz";
        sha1 = "0dd4c9ffaabc357960b1b724115d7e0e86a2e1f5";
      };
    }

    {
      name = "thunkify___thunkify_2.1.2.tgz";
      path = fetchurl {
        name = "thunkify___thunkify_2.1.2.tgz";
        url  = "https://registry.yarnpkg.com/thunkify/-/thunkify-2.1.2.tgz";
        sha1 = "faa0e9d230c51acc95ca13a361ac05ca7e04553d";
      };
    }

    {
      name = "tildify___tildify_1.2.0.tgz";
      path = fetchurl {
        name = "tildify___tildify_1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/tildify/-/tildify-1.2.0.tgz";
        sha1 = "dcec03f55dca9b7aa3e5b04f21817eb56e63588a";
      };
    }

    {
      name = "time_stamp___time_stamp_1.1.0.tgz";
      path = fetchurl {
        name = "time_stamp___time_stamp_1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/time-stamp/-/time-stamp-1.1.0.tgz";
        sha1 = "764a5a11af50561921b133f3b44e618687e0f5c3";
      };
    }

    {
      name = "timed_out___timed_out_2.0.0.tgz";
      path = fetchurl {
        name = "timed_out___timed_out_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/timed-out/-/timed-out-2.0.0.tgz";
        sha1 = "f38b0ae81d3747d628001f41dafc652ace671c0a";
      };
    }

    {
      name = "timers_browserify___timers_browserify_1.4.2.tgz";
      path = fetchurl {
        name = "timers_browserify___timers_browserify_1.4.2.tgz";
        url  = "https://registry.yarnpkg.com/timers-browserify/-/timers-browserify-1.4.2.tgz";
        sha1 = "c9c58b575be8407375cb5e2462dacee74359f41d";
      };
    }

    {
      name = "title_case___title_case_1.1.2.tgz";
      path = fetchurl {
        name = "title_case___title_case_1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/title-case/-/title-case-1.1.2.tgz";
        sha1 = "fae4a6ae546bfa22d083a0eea910a40d12ed4f5a";
      };
    }

    {
      name = "tmp___tmp_0.0.24.tgz";
      path = fetchurl {
        name = "tmp___tmp_0.0.24.tgz";
        url  = "https://registry.yarnpkg.com/tmp/-/tmp-0.0.24.tgz";
        sha1 = "d6a5e198d14a9835cc6f2d7c3d9e302428c8cf12";
      };
    }

    {
      name = "tmp___tmp_0.0.30.tgz";
      path = fetchurl {
        name = "tmp___tmp_0.0.30.tgz";
        url  = "https://registry.yarnpkg.com/tmp/-/tmp-0.0.30.tgz";
        sha1 = "72419d4a8be7d6ce75148fd8b324e593a711c2ed";
      };
    }

    {
      name = "to_arraybuffer___to_arraybuffer_1.0.1.tgz";
      path = fetchurl {
        name = "to_arraybuffer___to_arraybuffer_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/to-arraybuffer/-/to-arraybuffer-1.0.1.tgz";
        sha1 = "7d229b1fcc637e466ca081180836a7aabff83f43";
      };
    }

    {
      name = "to_object_path___to_object_path_0.3.0.tgz";
      path = fetchurl {
        name = "to_object_path___to_object_path_0.3.0.tgz";
        url  = "https://registry.yarnpkg.com/to-object-path/-/to-object-path-0.3.0.tgz";
        sha1 = "297588b7b0e7e0ac08e04e672f85c1f4999e17af";
      };
    }

    {
      name = "to_regex_range___to_regex_range_2.1.1.tgz";
      path = fetchurl {
        name = "to_regex_range___to_regex_range_2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/to-regex-range/-/to-regex-range-2.1.1.tgz";
        sha1 = "7c80c17b9dfebe599e27367e0d4dd5590141db38";
      };
    }

    {
      name = "to_regex___to_regex_3.0.1.tgz";
      path = fetchurl {
        name = "to_regex___to_regex_3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/to-regex/-/to-regex-3.0.1.tgz";
        sha1 = "15358bee4a2c83bd76377ba1dc049d0f18837aae";
      };
    }

    {
      name = "tough_cookie___tough_cookie_2.3.3.tgz";
      path = fetchurl {
        name = "tough_cookie___tough_cookie_2.3.3.tgz";
        url  = "https://registry.yarnpkg.com/tough-cookie/-/tough-cookie-2.3.3.tgz";
        sha1 = "0b618a5565b6dea90bf3425d04d55edc475a7561";
      };
    }

    {
      name = "traceur___traceur_0.0.72.tgz";
      path = fetchurl {
        name = "traceur___traceur_0.0.72.tgz";
        url  = "https://registry.yarnpkg.com/traceur/-/traceur-0.0.72.tgz";
        sha1 = "3ecb5af5c259bf0e0bef900beaa565a4e28573b9";
      };
    }

    {
      name = "trim_newlines___trim_newlines_1.0.0.tgz";
      path = fetchurl {
        name = "trim_newlines___trim_newlines_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/trim-newlines/-/trim-newlines-1.0.0.tgz";
        sha1 = "5887966bb582a4503a41eb524f7d35011815a613";
      };
    }

    {
      name = "true_case_path___true_case_path_1.0.2.tgz";
      path = fetchurl {
        name = "true_case_path___true_case_path_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/true-case-path/-/true-case-path-1.0.2.tgz";
        sha1 = "7ec91130924766c7f573be3020c34f8fdfd00d62";
      };
    }

    {
      name = "tryit___tryit_1.0.3.tgz";
      path = fetchurl {
        name = "tryit___tryit_1.0.3.tgz";
        url  = "https://registry.yarnpkg.com/tryit/-/tryit-1.0.3.tgz";
        sha1 = "393be730a9446fd1ead6da59a014308f36c289cb";
      };
    }

    {
      name = "tryor___tryor_0.1.2.tgz";
      path = fetchurl {
        name = "tryor___tryor_0.1.2.tgz";
        url  = "https://registry.yarnpkg.com/tryor/-/tryor-0.1.2.tgz";
        sha1 = "8145e4ca7caff40acde3ccf946e8b8bb75b4172b";
      };
    }

    {
      name = "tty_browserify___tty_browserify_0.0.0.tgz";
      path = fetchurl {
        name = "tty_browserify___tty_browserify_0.0.0.tgz";
        url  = "https://registry.yarnpkg.com/tty-browserify/-/tty-browserify-0.0.0.tgz";
        sha1 = "a157ba402da24e9bf957f9aa69d524eed42901a6";
      };
    }

    {
      name = "tunnel_agent___tunnel_agent_0.6.0.tgz";
      path = fetchurl {
        name = "tunnel_agent___tunnel_agent_0.6.0.tgz";
        url  = "https://registry.yarnpkg.com/tunnel-agent/-/tunnel-agent-0.6.0.tgz";
        sha1 = "27a5dea06b36b04a0a9966774b290868f0fc40fd";
      };
    }

    {
      name = "tunnel_agent___tunnel_agent_0.4.3.tgz";
      path = fetchurl {
        name = "tunnel_agent___tunnel_agent_0.4.3.tgz";
        url  = "https://registry.yarnpkg.com/tunnel-agent/-/tunnel-agent-0.4.3.tgz";
        sha1 = "6373db76909fe570e08d73583365ed828a74eeeb";
      };
    }

    {
      name = "tweetnacl___tweetnacl_0.14.5.tgz";
      path = fetchurl {
        name = "tweetnacl___tweetnacl_0.14.5.tgz";
        url  = "https://registry.yarnpkg.com/tweetnacl/-/tweetnacl-0.14.5.tgz";
        sha1 = "5ae68177f192d4456269d108afa93ff8743f4f64";
      };
    }

    {
      name = "type_check___type_check_0.3.2.tgz";
      path = fetchurl {
        name = "type_check___type_check_0.3.2.tgz";
        url  = "https://registry.yarnpkg.com/type-check/-/type-check-0.3.2.tgz";
        sha1 = "5884cab512cf1d355e3fb784f30804b2b520db72";
      };
    }

    {
      name = "type_detect___type_detect_0.1.1.tgz";
      path = fetchurl {
        name = "type_detect___type_detect_0.1.1.tgz";
        url  = "https://registry.yarnpkg.com/type-detect/-/type-detect-0.1.1.tgz";
        sha1 = "0ba5ec2a885640e470ea4e8505971900dac58822";
      };
    }

    {
      name = "typedarray___typedarray_0.0.6.tgz";
      path = fetchurl {
        name = "typedarray___typedarray_0.0.6.tgz";
        url  = "https://registry.yarnpkg.com/typedarray/-/typedarray-0.0.6.tgz";
        sha1 = "867ac74e3864187b1d3d47d996a78ec5c8830777";
      };
    }

    {
      name = "uglify_es___uglify_es_3.3.2.tgz";
      path = fetchurl {
        name = "uglify_es___uglify_es_3.3.2.tgz";
        url  = "https://registry.yarnpkg.com/uglify-es/-/uglify-es-3.3.2.tgz";
        sha1 = "2401df8be2a433314523753f28810793a40c5462";
      };
    }

    {
      name = "uglify_es___uglify_es_3.3.4.tgz";
      path = fetchurl {
        name = "uglify_es___uglify_es_3.3.4.tgz";
        url  = "https://registry.yarnpkg.com/uglify-es/-/uglify-es-3.3.4.tgz";
        sha1 = "2d592678791e5310456bbc95e952139e3b13167a";
      };
    }

    {
      name = "uglify_js___uglify_js_2.6.4.tgz";
      path = fetchurl {
        name = "uglify_js___uglify_js_2.6.4.tgz";
        url  = "https://registry.yarnpkg.com/uglify-js/-/uglify-js-2.6.4.tgz";
        sha1 = "65ea2fb3059c9394692f15fed87c2b36c16b9adf";
      };
    }

    {
      name = "uglify_js___uglify_js_3.3.2.tgz";
      path = fetchurl {
        name = "uglify_js___uglify_js_3.3.2.tgz";
        url  = "https://registry.yarnpkg.com/uglify-js/-/uglify-js-3.3.2.tgz";
        sha1 = "517af20aad7abe15e1e4c9aa33c0cc72aa0107ab";
      };
    }

    {
      name = "uglify_to_browserify___uglify_to_browserify_1.0.2.tgz";
      path = fetchurl {
        name = "uglify_to_browserify___uglify_to_browserify_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/uglify-to-browserify/-/uglify-to-browserify-1.0.2.tgz";
        sha1 = "6e0924d6bda6b5afe349e39a6d632850a0f882b7";
      };
    }

    {
      name = "uglifyify___uglifyify_4.0.5.tgz";
      path = fetchurl {
        name = "uglifyify___uglifyify_4.0.5.tgz";
        url  = "https://registry.yarnpkg.com/uglifyify/-/uglifyify-4.0.5.tgz";
        sha1 = "49c1fca9828c10a5a8e8d70f191a95f7ab475911";
      };
    }

    {
      name = "uid_number___uid_number_0.0.6.tgz";
      path = fetchurl {
        name = "uid_number___uid_number_0.0.6.tgz";
        url  = "https://registry.yarnpkg.com/uid-number/-/uid-number-0.0.6.tgz";
        sha1 = "0ea10e8035e8eb5b8e4449f06da1c730663baa81";
      };
    }

    {
      name = "ultron___ultron_1.0.2.tgz";
      path = fetchurl {
        name = "ultron___ultron_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/ultron/-/ultron-1.0.2.tgz";
        sha1 = "ace116ab557cd197386a4e88f4685378c8b2e4fa";
      };
    }

    {
      name = "umd___umd_3.0.1.tgz";
      path = fetchurl {
        name = "umd___umd_3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/umd/-/umd-3.0.1.tgz";
        sha1 = "8ae556e11011f63c2596708a8837259f01b3d60e";
      };
    }

    {
      name = "unc_path_regex___unc_path_regex_0.1.2.tgz";
      path = fetchurl {
        name = "unc_path_regex___unc_path_regex_0.1.2.tgz";
        url  = "https://registry.yarnpkg.com/unc-path-regex/-/unc-path-regex-0.1.2.tgz";
        sha1 = "e73dd3d7b0d7c5ed86fbac6b0ae7d8c6a69d50fa";
      };
    }

    {
      name = "underscore.string___underscore.string_2.4.0.tgz";
      path = fetchurl {
        name = "underscore.string___underscore.string_2.4.0.tgz";
        url  = "https://registry.yarnpkg.com/underscore.string/-/underscore.string-2.4.0.tgz";
        sha1 = "8cdd8fbac4e2d2ea1e7e2e8097c42f442280f85b";
      };
    }

    {
      name = "underscore___underscore_1.7.0.tgz";
      path = fetchurl {
        name = "underscore___underscore_1.7.0.tgz";
        url  = "https://registry.yarnpkg.com/underscore/-/underscore-1.7.0.tgz";
        sha1 = "6bbaf0877500d36be34ecaa584e0db9fef035209";
      };
    }

    {
      name = "union_value___union_value_1.0.0.tgz";
      path = fetchurl {
        name = "union_value___union_value_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/union-value/-/union-value-1.0.0.tgz";
        sha1 = "5c71c34cb5bad5dcebe3ea0cd08207ba5aa1aea4";
      };
    }

    {
      name = "uniq___uniq_1.0.1.tgz";
      path = fetchurl {
        name = "uniq___uniq_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/uniq/-/uniq-1.0.1.tgz";
        sha1 = "b31c5ae8254844a3a8281541ce2b04b865a734ff";
      };
    }

    {
      name = "uniqid___uniqid_4.1.1.tgz";
      path = fetchurl {
        name = "uniqid___uniqid_4.1.1.tgz";
        url  = "https://registry.yarnpkg.com/uniqid/-/uniqid-4.1.1.tgz";
        sha1 = "89220ddf6b751ae52b5f72484863528596bb84c1";
      };
    }

    {
      name = "uniqs___uniqs_2.0.0.tgz";
      path = fetchurl {
        name = "uniqs___uniqs_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/uniqs/-/uniqs-2.0.0.tgz";
        sha1 = "ffede4b36b25290696e6e165d4a59edb998e6b02";
      };
    }

    {
      name = "unique_stream___unique_stream_1.0.0.tgz";
      path = fetchurl {
        name = "unique_stream___unique_stream_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/unique-stream/-/unique-stream-1.0.0.tgz";
        sha1 = "d59a4a75427447d9aa6c91e70263f8d26a4b104b";
      };
    }

    {
      name = "unpipe___unpipe_1.0.0.tgz";
      path = fetchurl {
        name = "unpipe___unpipe_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/unpipe/-/unpipe-1.0.0.tgz";
        sha1 = "b2bf4ee8514aae6165b4817829d21b2ef49904ec";
      };
    }

    {
      name = "unset_value___unset_value_1.0.0.tgz";
      path = fetchurl {
        name = "unset_value___unset_value_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/unset-value/-/unset-value-1.0.0.tgz";
        sha1 = "8376873f7d2335179ffb1e6fc3a8ed0dfc8ab559";
      };
    }

    {
      name = "unzip_response___unzip_response_1.0.2.tgz";
      path = fetchurl {
        name = "unzip_response___unzip_response_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/unzip-response/-/unzip-response-1.0.2.tgz";
        sha1 = "b984f0877fc0a89c2c773cc1ef7b5b232b5b06fe";
      };
    }

    {
      name = "upper_case_first___upper_case_first_1.1.2.tgz";
      path = fetchurl {
        name = "upper_case_first___upper_case_first_1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/upper-case-first/-/upper-case-first-1.1.2.tgz";
        sha1 = "5d79bedcff14419518fd2edb0a0507c9b6859115";
      };
    }

    {
      name = "upper_case___upper_case_1.1.3.tgz";
      path = fetchurl {
        name = "upper_case___upper_case_1.1.3.tgz";
        url  = "https://registry.yarnpkg.com/upper-case/-/upper-case-1.1.3.tgz";
        sha1 = "f6b4501c2ec4cdd26ba78be7222961de77621598";
      };
    }

    {
      name = "urix___urix_0.1.0.tgz";
      path = fetchurl {
        name = "urix___urix_0.1.0.tgz";
        url  = "https://registry.yarnpkg.com/urix/-/urix-0.1.0.tgz";
        sha1 = "da937f7a62e21fec1fd18d49b35c2935067a6c72";
      };
    }

    {
      name = "url_parse_lax___url_parse_lax_1.0.0.tgz";
      path = fetchurl {
        name = "url_parse_lax___url_parse_lax_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/url-parse-lax/-/url-parse-lax-1.0.0.tgz";
        sha1 = "7af8f303645e9bd79a272e7a14ac68bc0609da73";
      };
    }

    {
      name = "url_trim___url_trim_1.0.0.tgz";
      path = fetchurl {
        name = "url_trim___url_trim_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/url-trim/-/url-trim-1.0.0.tgz";
        sha1 = "40057e2f164b88e5daca7269da47e6d1dd837adc";
      };
    }

    {
      name = "url___url_0.11.0.tgz";
      path = fetchurl {
        name = "url___url_0.11.0.tgz";
        url  = "https://registry.yarnpkg.com/url/-/url-0.11.0.tgz";
        sha1 = "3838e97cfc60521eb73c525a8e55bfdd9e2e28f1";
      };
    }

    {
      name = "use___use_2.0.2.tgz";
      path = fetchurl {
        name = "use___use_2.0.2.tgz";
        url  = "https://registry.yarnpkg.com/use/-/use-2.0.2.tgz";
        sha1 = "ae28a0d72f93bf22422a18a2e379993112dec8e8";
      };
    }

    {
      name = "user_home___user_home_1.1.1.tgz";
      path = fetchurl {
        name = "user_home___user_home_1.1.1.tgz";
        url  = "https://registry.yarnpkg.com/user-home/-/user-home-1.1.1.tgz";
        sha1 = "2b5be23a32b63a7c9deb8d0f28d485724a3df190";
      };
    }

    {
      name = "util_deprecate___util_deprecate_1.0.2.tgz";
      path = fetchurl {
        name = "util_deprecate___util_deprecate_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/util-deprecate/-/util-deprecate-1.0.2.tgz";
        sha1 = "450d4dc9fa70de732762fbd2d4a28981419a0ccf";
      };
    }

    {
      name = "util___util_0.10.3.tgz";
      path = fetchurl {
        name = "util___util_0.10.3.tgz";
        url  = "https://registry.yarnpkg.com/util/-/util-0.10.3.tgz";
        sha1 = "7afb1afe50805246489e3db7fe0ed379336ac0f9";
      };
    }

    {
      name = "uuid___uuid_2.0.3.tgz";
      path = fetchurl {
        name = "uuid___uuid_2.0.3.tgz";
        url  = "https://registry.yarnpkg.com/uuid/-/uuid-2.0.3.tgz";
        sha1 = "67e2e863797215530dff318e5bf9dcebfd47b21a";
      };
    }

    {
      name = "uuid___uuid_3.1.0.tgz";
      path = fetchurl {
        name = "uuid___uuid_3.1.0.tgz";
        url  = "https://registry.yarnpkg.com/uuid/-/uuid-3.1.0.tgz";
        sha1 = "3dd3d3e790abc24d7b0d3a034ffababe28ebbc04";
      };
    }

    {
      name = "uuid___uuid_1.4.2.tgz";
      path = fetchurl {
        name = "uuid___uuid_1.4.2.tgz";
        url  = "https://registry.yarnpkg.com/uuid/-/uuid-1.4.2.tgz";
        sha1 = "453019f686966a6df83cdc5244e7c990ecc332fc";
      };
    }

    {
      name = "v8flags___v8flags_2.1.1.tgz";
      path = fetchurl {
        name = "v8flags___v8flags_2.1.1.tgz";
        url  = "https://registry.yarnpkg.com/v8flags/-/v8flags-2.1.1.tgz";
        sha1 = "aab1a1fa30d45f88dd321148875ac02c0b55e5b4";
      };
    }

    {
      name = "validate_npm_package_license___validate_npm_package_license_3.0.1.tgz";
      path = fetchurl {
        name = "validate_npm_package_license___validate_npm_package_license_3.0.1.tgz";
        url  = "https://registry.yarnpkg.com/validate-npm-package-license/-/validate-npm-package-license-3.0.1.tgz";
        sha1 = "2804babe712ad3379459acfbe24746ab2c303fbc";
      };
    }

    {
      name = "vendors___vendors_1.0.1.tgz";
      path = fetchurl {
        name = "vendors___vendors_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/vendors/-/vendors-1.0.1.tgz";
        sha1 = "37ad73c8ee417fb3d580e785312307d274847f22";
      };
    }

    {
      name = "verror___verror_1.10.0.tgz";
      path = fetchurl {
        name = "verror___verror_1.10.0.tgz";
        url  = "https://registry.yarnpkg.com/verror/-/verror-1.10.0.tgz";
        sha1 = "3a105ca17053af55d6e270c1f8288682e18da400";
      };
    }

    {
      name = "vinyl_buffer___vinyl_buffer_1.0.1.tgz";
      path = fetchurl {
        name = "vinyl_buffer___vinyl_buffer_1.0.1.tgz";
        url  = "https://registry.yarnpkg.com/vinyl-buffer/-/vinyl-buffer-1.0.1.tgz";
        sha1 = "96c1a3479b8c5392542c612029013b5b27f88bbf";
      };
    }

    {
      name = "vinyl_file___vinyl_file_2.0.0.tgz";
      path = fetchurl {
        name = "vinyl_file___vinyl_file_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/vinyl-file/-/vinyl-file-2.0.0.tgz";
        sha1 = "a7ebf5ffbefda1b7d18d140fcb07b223efb6751a";
      };
    }

    {
      name = "vinyl_fs___vinyl_fs_0.3.14.tgz";
      path = fetchurl {
        name = "vinyl_fs___vinyl_fs_0.3.14.tgz";
        url  = "https://registry.yarnpkg.com/vinyl-fs/-/vinyl-fs-0.3.14.tgz";
        sha1 = "9a6851ce1cac1c1cea5fe86c0931d620c2cfa9e6";
      };
    }

    {
      name = "vinyl_source_stream___vinyl_source_stream_1.1.0.tgz";
      path = fetchurl {
        name = "vinyl_source_stream___vinyl_source_stream_1.1.0.tgz";
        url  = "https://registry.yarnpkg.com/vinyl-source-stream/-/vinyl-source-stream-1.1.0.tgz";
        sha1 = "44cbe5108205279deb0c5653c094a2887938b1ab";
      };
    }

    {
      name = "vinyl_sourcemaps_apply___vinyl_sourcemaps_apply_0.2.1.tgz";
      path = fetchurl {
        name = "vinyl_sourcemaps_apply___vinyl_sourcemaps_apply_0.2.1.tgz";
        url  = "https://registry.yarnpkg.com/vinyl-sourcemaps-apply/-/vinyl-sourcemaps-apply-0.2.1.tgz";
        sha1 = "ab6549d61d172c2b1b87be5c508d239c8ef87705";
      };
    }

    {
      name = "vinyl___vinyl_0.2.3.tgz";
      path = fetchurl {
        name = "vinyl___vinyl_0.2.3.tgz";
        url  = "https://registry.yarnpkg.com/vinyl/-/vinyl-0.2.3.tgz";
        sha1 = "bca938209582ec5a49ad538a00fa1f125e513252";
      };
    }

    {
      name = "vinyl___vinyl_0.4.6.tgz";
      path = fetchurl {
        name = "vinyl___vinyl_0.4.6.tgz";
        url  = "https://registry.yarnpkg.com/vinyl/-/vinyl-0.4.6.tgz";
        sha1 = "2f356c87a550a255461f36bbeb2a5ba8bf784847";
      };
    }

    {
      name = "vinyl___vinyl_0.5.3.tgz";
      path = fetchurl {
        name = "vinyl___vinyl_0.5.3.tgz";
        url  = "https://registry.yarnpkg.com/vinyl/-/vinyl-0.5.3.tgz";
        sha1 = "b0455b38fc5e0cf30d4325132e461970c2091cde";
      };
    }

    {
      name = "vinyl___vinyl_1.2.0.tgz";
      path = fetchurl {
        name = "vinyl___vinyl_1.2.0.tgz";
        url  = "https://registry.yarnpkg.com/vinyl/-/vinyl-1.2.0.tgz";
        sha1 = "5c88036cf565e5df05558bfc911f8656df218884";
      };
    }

    {
      name = "vinyl___vinyl_2.1.0.tgz";
      path = fetchurl {
        name = "vinyl___vinyl_2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/vinyl/-/vinyl-2.1.0.tgz";
        sha1 = "021f9c2cf951d6b939943c89eb5ee5add4fd924c";
      };
    }

    {
      name = "vm_browserify___vm_browserify_0.0.4.tgz";
      path = fetchurl {
        name = "vm_browserify___vm_browserify_0.0.4.tgz";
        url  = "https://registry.yarnpkg.com/vm-browserify/-/vm-browserify-0.0.4.tgz";
        sha1 = "5d7ea45bbef9e4a6ff65f95438e0a87c357d5a73";
      };
    }

    {
      name = "vue_hot_reload_api___vue_hot_reload_api_2.2.4.tgz";
      path = fetchurl {
        name = "vue_hot_reload_api___vue_hot_reload_api_2.2.4.tgz";
        url  = "https://registry.yarnpkg.com/vue-hot-reload-api/-/vue-hot-reload-api-2.2.4.tgz";
        sha1 = "683bd1d026c0d3b3c937d5875679e9a87ec6cd8f";
      };
    }

    {
      name = "vue_material___vue_material_0.8.1.tgz";
      path = fetchurl {
        name = "vue_material___vue_material_0.8.1.tgz";
        url  = "https://registry.yarnpkg.com/vue-material/-/vue-material-0.8.1.tgz";
        sha1 = "8f54666f52ef07b546ca0da93fbcd71574c599b2";
      };
    }

    {
      name = "vue_template_compiler___vue_template_compiler_2.5.13.tgz";
      path = fetchurl {
        name = "vue_template_compiler___vue_template_compiler_2.5.13.tgz";
        url  = "https://registry.yarnpkg.com/vue-template-compiler/-/vue-template-compiler-2.5.13.tgz";
        sha1 = "12a2aa0ecd6158ac5e5f14d294b0993f399c3d38";
      };
    }

    {
      name = "vue_template_es2015_compiler___vue_template_es2015_compiler_1.6.0.tgz";
      path = fetchurl {
        name = "vue_template_es2015_compiler___vue_template_es2015_compiler_1.6.0.tgz";
        url  = "https://registry.yarnpkg.com/vue-template-es2015-compiler/-/vue-template-es2015-compiler-1.6.0.tgz";
        sha1 = "dc42697133302ce3017524356a6c61b7b69b4a18";
      };
    }

    {
      name = "vue___vue_2.5.13.tgz";
      path = fetchurl {
        name = "vue___vue_2.5.13.tgz";
        url  = "https://registry.yarnpkg.com/vue/-/vue-2.5.13.tgz";
        sha1 = "95bd31e20efcf7a7f39239c9aa6787ce8cf578e1";
      };
    }

    {
      name = "vueify_extract_css___vueify_extract_css_0.2.0.tgz";
      path = fetchurl {
        name = "vueify_extract_css___vueify_extract_css_0.2.0.tgz";
        url  = "https://registry.yarnpkg.com/vueify-extract-css/-/vueify-extract-css-0.2.0.tgz";
        sha1 = "2451691b4269738d47ca5811fbe55191e08ec894";
      };
    }

    {
      name = "vueify___vueify_9.4.1.tgz";
      path = fetchurl {
        name = "vueify___vueify_9.4.1.tgz";
        url  = "https://registry.yarnpkg.com/vueify/-/vueify-9.4.1.tgz";
        sha1 = "d29a9775a33c4b8a8601e186a85da2ab800ca0d6";
      };
    }

    {
      name = "watchify_middleware___watchify_middleware_1.6.0.tgz";
      path = fetchurl {
        name = "watchify_middleware___watchify_middleware_1.6.0.tgz";
        url  = "https://registry.yarnpkg.com/watchify-middleware/-/watchify-middleware-1.6.0.tgz";
        sha1 = "6db6e28f0279de1ca1209ae4f1a7f063745877c4";
      };
    }

    {
      name = "watchify___watchify_3.9.0.tgz";
      path = fetchurl {
        name = "watchify___watchify_3.9.0.tgz";
        url  = "https://registry.yarnpkg.com/watchify/-/watchify-3.9.0.tgz";
        sha1 = "f075fd2e8a86acde84cedba6e5c2a0bedd523d9e";
      };
    }

    {
      name = "webdriver_js_extender___webdriver_js_extender_1.0.0.tgz";
      path = fetchurl {
        name = "webdriver_js_extender___webdriver_js_extender_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/webdriver-js-extender/-/webdriver-js-extender-1.0.0.tgz";
        sha1 = "81c533a9e33d5bfb597b4e63e2cdb25b54777515";
      };
    }

    {
      name = "webdriver_manager___webdriver_manager_12.0.6.tgz";
      path = fetchurl {
        name = "webdriver_manager___webdriver_manager_12.0.6.tgz";
        url  = "https://registry.yarnpkg.com/webdriver-manager/-/webdriver-manager-12.0.6.tgz";
        sha1 = "3df1a481977010b4cbf8c9d85c7a577828c0e70b";
      };
    }

    {
      name = "whatwg_fetch___whatwg_fetch_2.0.3.tgz";
      path = fetchurl {
        name = "whatwg_fetch___whatwg_fetch_2.0.3.tgz";
        url  = "https://registry.yarnpkg.com/whatwg-fetch/-/whatwg-fetch-2.0.3.tgz";
        sha1 = "9c84ec2dcf68187ff00bc64e1274b442176e1c84";
      };
    }

    {
      name = "whet.extend___whet.extend_0.9.9.tgz";
      path = fetchurl {
        name = "whet.extend___whet.extend_0.9.9.tgz";
        url  = "https://registry.yarnpkg.com/whet.extend/-/whet.extend-0.9.9.tgz";
        sha1 = "f877d5bf648c97e5aa542fadc16d6a259b9c11a1";
      };
    }

    {
      name = "which_module___which_module_1.0.0.tgz";
      path = fetchurl {
        name = "which_module___which_module_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/which-module/-/which-module-1.0.0.tgz";
        sha1 = "bba63ca861948994ff307736089e3b96026c2a4f";
      };
    }

    {
      name = "which_module___which_module_2.0.0.tgz";
      path = fetchurl {
        name = "which_module___which_module_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/which-module/-/which-module-2.0.0.tgz";
        sha1 = "d9ef07dce77b9902b8a3a8fa4b31c3e3f7e6e87a";
      };
    }

    {
      name = "which___which_1.3.0.tgz";
      path = fetchurl {
        name = "which___which_1.3.0.tgz";
        url  = "https://registry.yarnpkg.com/which/-/which-1.3.0.tgz";
        sha1 = "ff04bdfc010ee547d780bec38e1ac1c2777d253a";
      };
    }

    {
      name = "wide_align___wide_align_1.1.2.tgz";
      path = fetchurl {
        name = "wide_align___wide_align_1.1.2.tgz";
        url  = "https://registry.yarnpkg.com/wide-align/-/wide-align-1.1.2.tgz";
        sha1 = "571e0f1b0604636ebc0dfc21b0339bbe31341710";
      };
    }

    {
      name = "window_size___window_size_0.1.0.tgz";
      path = fetchurl {
        name = "window_size___window_size_0.1.0.tgz";
        url  = "https://registry.yarnpkg.com/window-size/-/window-size-0.1.0.tgz";
        sha1 = "5438cd2ea93b202efa3a19fe8887aee7c94f9c9d";
      };
    }

    {
      name = "wordwrap___wordwrap_0.0.2.tgz";
      path = fetchurl {
        name = "wordwrap___wordwrap_0.0.2.tgz";
        url  = "https://registry.yarnpkg.com/wordwrap/-/wordwrap-0.0.2.tgz";
        sha1 = "b79669bb42ecb409f83d583cad52ca17eaa1643f";
      };
    }

    {
      name = "wordwrap___wordwrap_0.0.3.tgz";
      path = fetchurl {
        name = "wordwrap___wordwrap_0.0.3.tgz";
        url  = "https://registry.yarnpkg.com/wordwrap/-/wordwrap-0.0.3.tgz";
        sha1 = "a3d5da6cd5c0bc0008d37234bbaf1bed63059107";
      };
    }

    {
      name = "wordwrap___wordwrap_1.0.0.tgz";
      path = fetchurl {
        name = "wordwrap___wordwrap_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/wordwrap/-/wordwrap-1.0.0.tgz";
        sha1 = "27584810891456a4171c8d0226441ade90cbcaeb";
      };
    }

    {
      name = "wrap_ansi___wrap_ansi_2.1.0.tgz";
      path = fetchurl {
        name = "wrap_ansi___wrap_ansi_2.1.0.tgz";
        url  = "https://registry.yarnpkg.com/wrap-ansi/-/wrap-ansi-2.1.0.tgz";
        sha1 = "d8fc3d284dd05794fe84973caecdd1cf824fdd85";
      };
    }

    {
      name = "wrappy___wrappy_1.0.2.tgz";
      path = fetchurl {
        name = "wrappy___wrappy_1.0.2.tgz";
        url  = "https://registry.yarnpkg.com/wrappy/-/wrappy-1.0.2.tgz";
        sha1 = "b5243d8f3ec1aa35f1364605bc0d1036e30ab69f";
      };
    }

    {
      name = "ws___ws_1.1.5.tgz";
      path = fetchurl {
        name = "ws___ws_1.1.5.tgz";
        url  = "https://registry.yarnpkg.com/ws/-/ws-1.1.5.tgz";
        sha1 = "cbd9e6e75e09fc5d2c90015f21f0c40875e0dd51";
      };
    }

    {
      name = "xml_char_classes___xml_char_classes_1.0.0.tgz";
      path = fetchurl {
        name = "xml_char_classes___xml_char_classes_1.0.0.tgz";
        url  = "https://registry.yarnpkg.com/xml-char-classes/-/xml-char-classes-1.0.0.tgz";
        sha1 = "64657848a20ffc5df583a42ad8a277b4512bbc4d";
      };
    }

    {
      name = "xml2js___xml2js_0.4.4.tgz";
      path = fetchurl {
        name = "xml2js___xml2js_0.4.4.tgz";
        url  = "https://registry.yarnpkg.com/xml2js/-/xml2js-0.4.4.tgz";
        sha1 = "3111010003008ae19240eba17497b57c729c555d";
      };
    }

    {
      name = "xml2js___xml2js_0.4.19.tgz";
      path = fetchurl {
        name = "xml2js___xml2js_0.4.19.tgz";
        url  = "https://registry.yarnpkg.com/xml2js/-/xml2js-0.4.19.tgz";
        sha1 = "686c20f213209e94abf0d1bcf1efaa291c7827a7";
      };
    }

    {
      name = "xmlbuilder___xmlbuilder_9.0.4.tgz";
      path = fetchurl {
        name = "xmlbuilder___xmlbuilder_9.0.4.tgz";
        url  = "https://registry.yarnpkg.com/xmlbuilder/-/xmlbuilder-9.0.4.tgz";
        sha1 = "519cb4ca686d005a8420d3496f3f0caeecca580f";
      };
    }

    {
      name = "xregexp___xregexp_2.0.0.tgz";
      path = fetchurl {
        name = "xregexp___xregexp_2.0.0.tgz";
        url  = "https://registry.yarnpkg.com/xregexp/-/xregexp-2.0.0.tgz";
        sha1 = "52a63e56ca0b84a7f3a5f3d61872f126ad7a5943";
      };
    }

    {
      name = "xtend___xtend_4.0.1.tgz";
      path = fetchurl {
        name = "xtend___xtend_4.0.1.tgz";
        url  = "https://registry.yarnpkg.com/xtend/-/xtend-4.0.1.tgz";
        sha1 = "a5c6d532be656e23db820efb943a1f04998d63af";
      };
    }

    {
      name = "xtend___xtend_3.0.0.tgz";
      path = fetchurl {
        name = "xtend___xtend_3.0.0.tgz";
        url  = "https://registry.yarnpkg.com/xtend/-/xtend-3.0.0.tgz";
        sha1 = "5cce7407baf642cba7becda568111c493f59665a";
      };
    }

    {
      name = "y18n___y18n_3.2.1.tgz";
      path = fetchurl {
        name = "y18n___y18n_3.2.1.tgz";
        url  = "https://registry.yarnpkg.com/y18n/-/y18n-3.2.1.tgz";
        sha1 = "6d15fba884c08679c0d77e88e7759e811e07fa41";
      };
    }

    {
      name = "yallist___yallist_2.1.2.tgz";
      path = fetchurl {
        name = "yallist___yallist_2.1.2.tgz";
        url  = "https://registry.yarnpkg.com/yallist/-/yallist-2.1.2.tgz";
        sha1 = "1c11f9218f076089a47dd512f93c6699a6a81d52";
      };
    }

    {
      name = "yallist___yallist_3.0.2.tgz";
      path = fetchurl {
        name = "yallist___yallist_3.0.2.tgz";
        url  = "https://registry.yarnpkg.com/yallist/-/yallist-3.0.2.tgz";
        sha1 = "8452b4bb7e83c7c188d8041c1a837c773d6d8bb9";
      };
    }

    {
      name = "yargs_parser___yargs_parser_5.0.0.tgz";
      path = fetchurl {
        name = "yargs_parser___yargs_parser_5.0.0.tgz";
        url  = "https://registry.yarnpkg.com/yargs-parser/-/yargs-parser-5.0.0.tgz";
        sha1 = "275ecf0d7ffe05c77e64e7c86e4cd94bf0e1228a";
      };
    }

    {
      name = "yargs_parser___yargs_parser_9.0.2.tgz";
      path = fetchurl {
        name = "yargs_parser___yargs_parser_9.0.2.tgz";
        url  = "https://registry.yarnpkg.com/yargs-parser/-/yargs-parser-9.0.2.tgz";
        sha1 = "9ccf6a43460fe4ed40a9bb68f48d43b8a68cc077";
      };
    }

    {
      name = "yargs___yargs_11.0.0.tgz";
      path = fetchurl {
        name = "yargs___yargs_11.0.0.tgz";
        url  = "https://registry.yarnpkg.com/yargs/-/yargs-11.0.0.tgz";
        sha1 = "c052931006c5eee74610e5fc0354bedfd08a201b";
      };
    }

    {
      name = "yargs___yargs_7.1.0.tgz";
      path = fetchurl {
        name = "yargs___yargs_7.1.0.tgz";
        url  = "https://registry.yarnpkg.com/yargs/-/yargs-7.1.0.tgz";
        sha1 = "6ba318eb16961727f5d284f8ea003e8d6154d0c8";
      };
    }

    {
      name = "yargs___yargs_3.10.0.tgz";
      path = fetchurl {
        name = "yargs___yargs_3.10.0.tgz";
        url  = "https://registry.yarnpkg.com/yargs/-/yargs-3.10.0.tgz";
        sha1 = "f7ee7bd857dd7c1d2d38c0e74efbd681d1431fd1";
      };
    }
  ];
}
