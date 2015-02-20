class syslog::service {
  service { "rsyslog":
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    enable => true,
    require => Class["syslog::config"],
  }
}
