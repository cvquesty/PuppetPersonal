class syslog::config {
  file { "/etc/rsyslog.conf":
    ensure => present,
    owner => "root",
    group => "root",
    mode => 0644,
    source => "puppet://$puppetserver/modules/syslog/etc_rsyslog_conf",
  }

  file { "/var/log/messages":
    ensure => present,
    owner => "root",
    group => "root",
    mode => "0644",
  }

  file { "/var/log/secure":
    ensure => present,
    owner => "root",
    group => "root",
    mode => 0600,
  }
}
