class iptables::service {
  service { "iptables":
    ensure => running,
    hasstatus => true,
    enable => true,
    require => Package["iptables"],
  }  
}
