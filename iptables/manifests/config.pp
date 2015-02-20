class iptables::config {
  file { "/etc/sysconfig/iptables":
    notify => Service["iptables"],
    owner => "root",
    group => "root",
    mode => 0600,
    require => Package["iptables"],
    source => "puppet://$puppetserver/modules/iptables/etc_sysconfig_iptables-STGRAC_SMR",
  }
}
