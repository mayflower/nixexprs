{ lib }:
with lib;

mapAttrsToList (name: opts: {
  alert = name;
  expr = opts.condition;
  for = opts.time or "2m";
  labels = if (opts.page or true) then { severity = "page"; } else {};
  annotations = {
    summary = opts.summary;
    description = opts.description;
  };
}) {
  node_down = {
    condition = ''up{job="node"} == 0'';
    summary = "{{$labels.alias}}: Node is down.";
    description = "{{$labels.alias}} has been down for more than 2 minutes.";
  };
  node_collector_failed = {
    condition = ''node_scrape_collector_success{job="node"} == 0'';
    summary = "{{$labels.alias}}: Node collector {{$labels.collector}} failed.";
    description = "{{$labels.alias}}: The collector {{$labels.collector}} of node exporter instance {{$labels.instance}} failed.";
  };
  node_systemd_service_failed = {
    condition = ''node_systemd_unit_state{state="failed"} == 1'';
    summary = "{{$labels.alias}}: Service {{$labels.name}} failed to start.";
    description = "{{$labels.alias}} failed to (re)start service {{$labels.name}}.";
  };
  node_filesystem_full_90percent = {
    condition = ''sort(node_filesystem_free{device!="ramfs",device!="rpc_pipefs"} < node_filesystem_size{device!="ramfs"} * 0.1) / 1024^3'';
    time = "1m";
    summary = "{{$labels.alias}}: Filesystem is running out of space soon.";
    description = "{{$labels.alias}} device {{$labels.device}} on {{$labels.mountpoint}} got less than 10% space left on its filesystem.";
  };
  node_filesystem_full_in_4h = {
    condition = ''predict_linear(node_filesystem_free{device!="ramfs",device!="rpc_pipefs" }[1h], 4*3600) <= 0'';
    time = "30m";
    summary = "{{$labels.alias}}: Filesystem is running out of space in 4 hours.";
    description = "{{$labels.alias}} device {{$labels.device}} on {{$labels.mountpoint}} is running out of space of in approx. 4 hours";
  };
  node_filedescriptors_full_in_3h = {
    condition = ''predict_linear(node_filefd_allocated[1h], 3*3600) >= node_filefd_maximum'';
    time = "20m";
    summary = "{{$labels.alias}} is running out of available file descriptors in 3 hours.";
    description = "{{$labels.alias}} is running out of available file descriptors in approx. 3 hours";
  };
  node_load15 = {
    condition = ''node_load15 / on(alias) count(node_cpu{mode="system"}) by (alias) >= 1.0'';
    time = "5m";
    summary = "{{$labels.alias}}: Running on high load.";
    description = "{{$labels.alias}} is running with load15 > 1 for at least 5 minutes.";
  };
  node_ram_using_90percent = {
    condition =  "node_memory_MemFree + node_memory_Buffers + node_memory_Cached < node_memory_MemTotal * 0.1";
    time = "1h";
    summary = "{{$labels.alias}}: Using lots of RAM.";
    description = "{{$labels.alias}} is using at least 90% of its RAM for at least 1 hour.";
  };
  node_swap_using_30percent = {
    condition = "node_memory_SwapTotal - (node_memory_SwapFree + node_memory_SwapCached) > node_memory_SwapTotal * 0.3";
    time = "30m";
    summary = "{{$labels.alias}}: Using more than 30% of its swap.";
    description = "{{$labels.alias}} is using 30% of its swap space for at least 30 minutes.";
  };
  node_zfs_errors = {
    condition = "node_zfs_arc_l2_writes_error + node_zfs_arc_l2_io_error + node_zfs_arc_l2_writes_error > 0";
    summary = "{{$labels.alias}}: ZFS IO errors";
    description = "{{$labels.alias}} reports ZFS IO errors. Drive(s) are failing.";
  };
  node_hwmon_temp = {
    condition = "node_hwmon_temp_crit_celsius*0.9 - node_hwmon_temp_celsius < 0 OR node_hwmon_temp_max_celsius*0.95 - node_hwmon_temp_celsius < 0";
    time = "5m";
    summary = "{{$labels.alias}}: Sensor {{$labels.sensor}}/{{$labels.chip}} temp is high";
    description = "{{$labels.alias}} reports hwmon sensor {{$labels.sensor}}/{{$labels.chip}} temperature value is nearly critical.";
  };
  node_conntrack_limit = {
    condition  = "node_nf_conntrack_entries_limit - node_nf_conntrack_entries < 1000";
    time = "5m";
    summary = "{{$labels.alias}}: Number of tracked connections high";
    description = "{{$labels.alias}} has only few free slots for connection tracking available.";
  };
  node_reboot = {
    condition = "time() - node_boot_time < 300";
    summary = "{{$labels.alias}}: Reboot";
    description = "{{$labels.alias}} just rebooted.";
  };
  node_uptime = {
    condition = "time() - node_boot_time > 2592000";
    summary = "{{$labels.alias}}: Uptime monster";
    description = "{{$labels.alias}} has been up for more than 30 days.";
  };
  blackbox_down = {
    condition = ''min(up{job=~"blackbox.+"}) by (source, job, instance) == 0'';
    time = "1m";
    summary = "{{$labels.instance}}: {{$labels.job}} blackbox exporter from {{$labels.source}} is down.";
    description = "{{$labels.instance}}: {{$labels.job}} blackbox exporter from {{$labels.source}} is down.";
  };
  blackbox_probe = {
    condition = "probe_success == 0";
    page = false;
    summary = "{{$labels.instance}}: {{$labels.job}} probe from {{$labels.source}} has failed!";
    description = "{{$labels.instance}}: {{$labels.job}} probe from {{$labels.source}} has failed!";
  };
  blackbox_probe_high_latency = {
    condition = "probe_duration_seconds > 5";
    summary = "{{$labels.instance}}: {{$labels.job}} probe from {{$labels.source}} takes too long!";
    description = "{{$labels.instance}}: {{$labels.job}} probe from {{$labels.source}} is encountering high latency!";
  };
  blackbox_probe_cert_expiry = {
    condition = "probe_ssl_earliest_cert_expiry < 7*24*3600";
    summary = "{{$labels.instance}}: TLS certificate from {{$labels.source}} is about to expire.";
    description = "{{$labels.instance}}: The TLS certificate from {{$labels.source}} will expire in less than 7 days: {{$value}}s";
  };
  openvpn_down = {
    condition = ''up{job="openvpn"} == 0'';
    summary = "{{$labels.alias}}: OpenVPN exporter is down.";
    description = "OpenVPN exporter on {{$labels.alias}} hasn't been responding more than 2 minutes.";
  };
  openvpn_instance_down = {
    condition = "openvpn_up == 0";
    summary = "{{$labels.alias}}: OpenVPN instance {{$labels.status_path}} is down.";
    description = "OpenVPN instance {{$labels.status_path}} on {{$labels.alias}} has been down more than 2 minutes.";
  };
  openvpn_instance_noupdate = {
    condition = "time() - openvpn_status_update_time_seconds > 120";
    time = "1m";
    summary = "{{$labels.alias}}: OpenVPN instance {{$labels.status_path}} is not updating its status.";
    description = "OpenVPN instance {{$labels.status_path}} on {{$labels.alias}} has not updated its status more than 2 minutes.";
  };
  unifi_devices_adopted_changed = {
    condition = "abs(delta(unifi_devices_adopted[5m])) >= 1";
    summary = "Unifi: number of adopted devices has changed";
    description = "Unifi: number of adopted devices has changed";
  };
}
