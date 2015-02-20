class syslog::install {
  package { "rsyslog":
    ensure => present,
  }
}
