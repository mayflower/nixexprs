{ filesystemFilter }: let
  ensureComma = x: if x == "" then "" else ",${x}";
in {
  node_deployed = {
    condition = excl: "node_deployed{${excl}} < time()-86400*14";
    page = false;
    summary = "{{$labels.alias}}: Last deployed on {{$labels.date}} with version {{$labels.version}}";
    description = "{{$labels.alias}}: Last deployed on {{$labels.date}} with version {{$labels.version}}";
  };
  node_down = {
    condition = excl: ''up{job="node"${ensureComma excl}} == 0'';
    summary = "{{$labels.alias}}: Node is down.";
    description = "{{$labels.alias}} has been down for more than 2 minutes.";
  };
  node_collector_failed = {
    # FIXME remove `collector!="conntrack"` as soon as
    # https://github.com/prometheus/node_exporter/issues/2491 is resolved.
    condition = excl: ''node_scrape_collector_success{job="node",collector!="conntrack"${ensureComma excl}} == 0'';
    summary = "{{$labels.alias}}: Node collector {{$labels.collector}} failed.";
    description = "{{$labels.alias}}: The collector {{$labels.collector}} of node exporter instance {{$labels.instance}} failed.";
  };
  node_systemd_service_failed = {
    condition = excl: ''node_systemd_unit_state{state="failed"${ensureComma excl}} == 1'';
    summary = "{{$labels.alias}}: Service {{$labels.name}} failed to start.";
    description = "{{$labels.alias}} failed to (re)start service {{$labels.name}}.";
  };
  node_filesystem_full_80percent = {
    condition = excl: ''sort(node_filesystem_free_bytes{${filesystemFilter}${ensureComma excl}} < node_filesystem_size_bytes{${filesystemFilter}${ensureComma excl}} * 0.2) / 1024^3'';
    time = "10m";
    summary = "{{$labels.alias}}: Filesystem is running out of space soon.";
    description = "{{$labels.alias}} device {{$labels.device}} on {{$labels.mountpoint}} got less than 20% space left on its filesystem.";
  };
  node_filesystem_full_in_7d = {
    condition = excl: ''node_filesystem_free_bytes{${filesystemFilter}${ensureComma excl}} ''
      + ''and predict_linear(node_filesystem_free_bytes{${filesystemFilter}${ensureComma excl}}[2d], 7*24*3600) <= 0'';
    time = "1h";
    summary = "{{$labels.alias}}: Filesystem is running out of space in 7 days.";
    description = "{{$labels.alias}} device {{$labels.device}} on {{$labels.mountpoint}} is running out of space in approx. 7 days";
  };
  node_filesystem_full_in_30d = {
    condition = excl: ''node_filesystem_free_bytes{${filesystemFilter}${ensureComma excl}} ''
      + ''and predict_linear(node_filesystem_free_bytes{${filesystemFilter}${ensureComma excl}}[30d], 30*24*3600) <= 0'';
    time = "1h";
    summary = "{{$labels.alias}}: Filesystem is running out of space in 30 days.";
    description = "{{$labels.alias}} device {{$labels.device}} on {{$labels.mountpoint}} is running out of space in approx. 30 days";
  };
  node_filesystem_zfs_unhealthy = {
    condition = excl: ''zfs_pool_health{${excl}} != 0'';
    summary = "{{$labels.alias}}: zpool is unhealthy.";
    description = "{{$labels.alias}} zpool {{$labels.pool}} is unhealthy in status {{$value}} [0: ONLINE, 1: DEGRADED, 2: FAULTED, 3: OFFLINE, 4: UNAVAIL, 5: REMOVED, 6: SUSPENDED]";
  };
  node_filesystem_zfs_leaked_bytes = {
    condition = excl: ''zfs_pool_leaked_bytes{${excl}} > 0'';
    summary = "{{$labels.alias}}: zpool leaked bytes.";
    description = "{{$labels.alias}} zpool {{$labels.pool}} leaked {{$value}} bytes";
  };
  node_inodes_full_in_7d = {
    condition = excl: ''node_filesystem_files_free{${filesystemFilter}${ensureComma excl}} ''
      + ''and predict_linear(node_filesystem_files_free{${filesystemFilter}${ensureComma excl}}[2d], 7*24*3600) < 0'';
    time = "1h";
    summary = "{{$labels.alias}}: Filesystem is running out of inodes in 7 days.";
    description = "{{$labels.alias}} device {{$labels.device}} on {{$labels.mountpoint}} is running out of inodes in approx. 7 days";
  };
  node_inodes_full_in_30d = {
    condition = excl: ''node_filesystem_files_free{${filesystemFilter}${ensureComma excl}} ''
      + ''and predict_linear(node_filesystem_files_free{${filesystemFilter}${ensureComma excl}}[30d], 30*24*3600) < 0'';
    time = "1h";
    summary = "{{$labels.alias}}: Filesystem is running out of inodes in 30 days.";
    description = "{{$labels.alias}} device {{$labels.device}} on {{$labels.mountpoint}} is running out of inodes in approx. 30 days";
  };
  node_filedescriptors_full_in_3h = {
    condition = excl: ''node_filefd_allocated{${excl}} ''
      + ''and predict_linear(node_filefd_allocated{${excl}}[3h], 3*3600) >= node_filefd_maximum{${excl}}'';
    time = "20m";
    summary = "{{$labels.alias}} is running out of available file descriptors in 3 hours.";
    description = "{{$labels.alias}} is running out of available file descriptors in approx. 3 hours";
  };
  node_filedescriptors_full_in_7d = {
    condition = excl: ''node_filefd_allocated{${excl}} ''
      + ''and predict_linear(node_filefd_allocated{${excl}}[7d], 7*24*3600) >= node_filefd_maximum{${excl}}'';
    time = "1h";
    summary = "{{$labels.alias}} is running out of available file descriptors in 7 days.";
    description = "{{$labels.alias}} is running out of available file descriptors in approx. 7 days";
  };
  node_load15 = {
    condition = excl: ''node_load15{${excl}} / on(alias) count(node_cpu_seconds_total{mode="system"${ensureComma excl}}) by (alias) >= 1.0'';
    time = "10m";
    summary = "{{$labels.alias}}: Running on high load: {{$value}}";
    description = "{{$labels.alias}} is running with load15 > 1 for at least 5 minutes: {{$value}}";
  };
  node_ram_using_90percent_non_zfs_nodes = {
    condition =  excl: "node_memory_MemAvailable_bytes{${excl}} < node_memory_MemTotal_bytes{${excl}} * 0.1 unless node_zfs_arc_size{${excl}}";
    time = "1h";
    summary = "{{$labels.alias}}: Using lots of RAM.";
    description = "{{$labels.alias}} is using at least 90% of its RAM for at least 1 hour.";
  };
  node_ram_using_90percent_zfs_nodes = {
    condition =  excl: "node_memory_MemAvailable_bytes{${excl}} + node_zfs_arc_size{${excl}} - node_zfs_arc_c_min{${excl}} < node_memory_MemTotal_bytes{${excl}} * 0.1";
    time = "1h";
    summary = "{{$labels.alias}}: Using lots of RAM.";
    description = "{{$labels.alias}} is using at least 90% of its RAM for at least 1 hour.";
  };
  node_swap_using_30percent = {
    condition = excl: "node_memory_SwapTotal_bytes{${excl}} - (node_memory_SwapFree_bytes{${excl}} + node_memory_SwapCached_bytes{${excl}}) > node_memory_SwapTotal_bytes{${excl}} * 0.3";
    time = "30m";
    summary = "{{$labels.alias}}: Using more than 30% of its swap.";
    description = "{{$labels.alias}} is using 30% of its swap space for at least 30 minutes.";
  };
  node_oom = {
    condition = excl: "rate(node_vmstat_oom_kill{${excl}}[1h]) > 0";
    summary = "{{$labels.alias}}: OOM killer fired";
  };
  node_visible_confluence_space = {
    condition = excl: "node_visible_confluence_space{${excl}} != 0";
    summary = "crowd prometheus cann see the {{$labels.space_name}} confluence space!";
    description = "crowd user `prometheus` can see the `{{$labels.space_name}}` confluence space.";
  };
  node_visible_jira_project = {
    condition = excl: "node_visible_jira_project{${excl}} != 0";
    summary = "crowd user `prometheus` can see the `{{$labels.project_name}}` jira project.";
    description = "crowd user `prometheus` can see the `{{$labels.project_name}}` jira project.";
  };
  node_zfs_errors = {
    condition = excl: "node_zfs_arc_l2_writes_error{${excl}} + node_zfs_arc_l2_io_error{${excl}} + node_zfs_arc_l2_writes_error{${excl}} > 0";
    summary = "{{$labels.alias}}: ZFS IO errors: {{$value}}";
    description = "{{$labels.alias}} reports: {{$value}} ZFS IO errors. Drive(s) are failing.";
  };
  node_hwmon_temp = {
    condition = excl: "node_hwmon_temp_celsius{${excl}} > node_hwmon_temp_crit_celsius{${excl}}-5";
    time = "5m";
    summary = "{{$labels.alias}}: Sensor {{$labels.sensor}}/{{$labels.chip}} temp is high: {{$value}} ";
    description = "{{$labels.alias}} reports hwmon sensor {{$labels.sensor}}/{{$labels.chip}} temperature value is nearly critical: {{$value}}";
  };
  node_conntrack_limit = {
    condition  = excl: "node_nf_conntrack_entries_limit{${excl}} - node_nf_conntrack_entries{${excl}} < 1000";
    time = "5m";
    summary = "{{$labels.alias}}: Number of tracked connections high";
    description = "{{$labels.alias}} has only {{$value}} free slots for connection tracking available.";
  };
  node_reboot = {
    condition = excl: "time() - node_boot_time_seconds{${excl}} < 300";
    summary = "{{$labels.alias}}: Reboot";
    description = "{{$labels.alias}} just rebooted.";
  };
  node_uptime = {
    condition = excl: "time() - node_boot_time_seconds{${excl}} > 2592000";
    page = false;
    summary = "{{$labels.alias}}: Uptime monster";
    description = "{{$labels.alias}} has been up for more than 30 days.";
  };
  blackbox_down = {
    condition = excl: ''min(up{job=~"blackbox.+"${ensureComma excl}}) by (source, job, instance) == 0'';
    time = "3m";
    summary = "{{$labels.instance}}: {{$labels.job}} blackbox exporter from {{$labels.source}} is down.";
  };
  blackbox_probe = {
    condition = excl: "probe_success{${excl}} == 0";
    page = false;
    summary = "{{$labels.instance}}: {{$labels.job}} probe from {{$labels.source}} has failed!";
  };
  blackbox_probe_high_latency = {
    condition = excl: "probe_duration_seconds{${excl}} > 2 and probe_success{${excl}} == 1";
    summary = "{{$labels.instance}}: {{$labels.job}} probe from {{$labels.source}} takes too long!";
    description = "{{$labels.instance}}: {{$labels.job}} probe from {{$labels.source}} is encountering high latency!";
  };
  blackbox_probe_cert_expiry = {
    condition = excl: "probe_ssl_earliest_cert_expiry{${excl}} < 7*24*3600";
    summary = "{{$labels.instance}}: TLS certificate from {{$labels.source}} is about to expire.";
    description = "{{$labels.instance}}: The TLS certificate from {{$labels.source}} will expire in less than 7 days: {{$value}}s";
  };
  unifi_devices_adopted_changed = {
    condition = excl: ''sum(abs(delta(unifipoller_site_adopted{status="ok"${ensureComma excl}}[1h]))) >= 1'';
    summary = "Unifi: number of adopted devices has changed: {{$value}}";
  };
  unifi_device_excessive_memory_usage = {
    condition = excl: ''unifipoller_device_memory_utilization_ratio{${excl}} >= 0.9'';
    summary = "Unifi: memory utilisation exceeds 90% on device {{$labels.name}}";
  };
  unifi_device_reboot = {
    condition = excl: ''unifipoller_device_uptime_seconds{site_name!~"down.+"${ensureComma excl}} > 0 and unifipoller_device_uptime_seconds{site_name!~"down.+"} < 300'';
    summary = "Unifi: device {{$labels.name}} reboot";
    description = "Unifi: device {{$labels.name}} just rebooted";
  };
  unifi_device_down = {
    condition = excl: ''unifipoller_site_adopted{status="error",site_name!~"down.+"${ensureComma excl}} >= 1'';
    summary = "Unifi: {{$value}} device(s) down in {{$labels.site_name}}";
  };
  mail_down = {
    condition = excl: ''up{job="mail"${ensureComma excl}} == 0'';
    summary = "{{$labels.alias}}: Mail exporter is down.";
    description = "Mail exporter on {{$labels.alias}} hasn't been responding more than 2 minutes.";
  };
  mail_delivery_unsuccessful = {
    condition = excl: "mail_deliver_success{${excl}} == 0";
    summary = "{{$labels.alias}}: Mail delivery unsuccessful";
  };
  mail_delivery_late = {
    condition = excl: "increase(mail_late_mails_total{${excl}}[1h]) >= 1";
    summary = "{{$labels.alias}}: Mail delivery late";
  };
  mail_send_fails = {
    condition = excl: "increase(mail_send_fails_total{${excl}}[1h]) >= 1";
    summary = "{{$labels.alias}}: Mail send failed";
  };
  postfix_queue_deferred_messages = {
    condition = excl: ''postfix_showq_message_size_bytes_count{queue="deferred"${ensureComma excl}} > 1'';
    summary = "{{$labels.alias}}: postfix has deferred messages in queue";
  };
  alerts_silences_changed = {
    condition = excl: ''round(delta(alertmanager_silences{state="active"${ensureComma excl}}[1h])) != 0'';
    summary = "alertmanager: number of active silences has changed: {{$value}}";
  };
  smart_critical_attributes = {
    condition = excl: ''smartmon_attr_raw_value{name=~".*_retry_count|reallocated_.*|current_pending_sector"${ensureComma excl}} != 0'';
    summary = "{{$labels.alias}}: {{$labels.disk}} is experiencing sector errors";
    description = "{{$labels.alias}}: {{$labels.name}} on {{$labels.disk}} is {{$value}}";
  };
}
