class dns::config {
  file { "/etc/resolv.conf":
    ensure => present,
    owner => "root",
    group => "root",
    mode => 0644,
    source => "puppet://$puppetserver/modules/dns/etc_resolv_conf",
  }  
}
