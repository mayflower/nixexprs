self: super: {
  automx = self.callPackage ./python/automx { };
  colorhash = self.callPackage ./python/colorhash { };
  duckling = self.callPackage ./python/duckling { };
  fbmessenger = self.callPackage ./python/fbmessenger { };
  mattermostwrapper = self.callPackage ./python/mattermostwrapper { };
  rasa-core = self.callPackage ./python/rasa-core { };
  rasa-nlu = self.callPackage ./python/rasa-nlu { };
  sklearn-crfsuite = self.callPackage ./python/sklearn-crfsuite { };
  # geopy FIXME
  pytest-xdist = super.pytest-xdist.overridePythonAttrs(old: {
    # binfmt? cpu_exec: assertion failed: (cpu == current_cpu)
    doCheck = super.pytest-xdist.system != "aarch64-linux";
  });
  hypothesis = super.hypothesis.overridePythonAttrs(old: {
    # test_cache_is_threadsafe_issue_2433_regression
    # test_can_run_with_database_in_thread
    doCheck = super.hypothesis.system != "aarch64-linux";
  });
  requests = super.requests.overridePythonAttrs(old: {
    # test_digestauth_401_count_reset_on_redirect
    # test_chunked_upload
    # test_conflicting_content_lengths
    # test_chunked_encoding_error
    # test_chunked_upload_uses_only_specified_host_header
    # test_digestauth_401_only_sent_once
    # test_fragment_not_sent_with_request
    # test_redirect_rfc1808_to_non_ascii_location
    # test_digestauth_only_on_4xx
    # test_chunked_upload_doesnt_skip_host_header
    # test_fragment_update_on_redirect
    # test_basic_response
    # test_text_response
    # test_basic
    # test_basic_waiting_server
    # test_server_closes
    # test_server_finishes_on_error
    # test_request_recovery_with_bigger_timeout
    # test_server_finishes_when_no_connections
    doCheck = super.requests.system != "aarch64-linux";
  });
  curio = super.curio.overridePythonAttrs(old: {
    # test_timeout
    doCheck = super.curio.system != "aarch64-linux";
  });
}
