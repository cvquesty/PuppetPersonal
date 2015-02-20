class environment::sysstat {
  package { "sysstat":
    ensure => installed,
  }

  service { "sysstat":
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    enable => true,
  }  
}
