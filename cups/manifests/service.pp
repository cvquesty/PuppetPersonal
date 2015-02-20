class cups::service {
  service { "cups":
    ensure => "running",
    hasstatus => true,
    hasrestart => true,
    enable => true,
    require => Class["cups::config"],
  }  
}
