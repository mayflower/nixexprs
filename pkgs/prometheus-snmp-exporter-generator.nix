/*
Use the snmp_exporter's `generator` tool[1] to fill in an snmp.yml
using MIB definitions from librenms.

Pass an attribute set containing:
- config, an attrset representing `generator.yml`
- (optionally) extraMIBs, a list of paths to include in the Net-SNMP search path
to this function, and it will produce a derivation which in turn
produces `snmp.yml`.

[1]: https://github.com/prometheus/snmp_exporter/tree/master/generator
*/
{ stdenvNoCC, lib, prometheus-snmp-exporter, net-snmp, fetchFromGitHub }:
{ config, extraMIBs ? [] }:

let
  librenms_source = fetchFromGitHub {
    owner = "librenms";
    repo = "librenms";
    rev = "2a515d308a4e7cb2226f76f6b4a662bca1cbd575";
    sha256 = "04wal6kcp8w26nfy9353c8sivpjrj2xl1j46k2kbx076kdvmlqdp";
  };
in stdenvNoCC.mkDerivation {
  name = "snmp.yml";
  nativeBuildInputs = [ prometheus-snmp-exporter ];
  configJSON = builtins.toJSON config;
  MIBDIRS = lib.concatStringsSep ":" extraMIBs;
  buildCommand = ''
    echo "$configJSON" > generator.yml
    export MIBDIRS="${net-snmp.out}/share/snmp/mibs:${librenms_source}/mibs:$MIBDIRS"
    generator generate
    mv snmp.yml $out
  '';
}
