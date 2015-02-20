class pam::access {
  file { "/etc/security/access.conf":
    owner => "root",
    group => "root",
    mode => 0644,
    source => "puppet://$puppetserver/modules/pam/etc_security_access.conf",
    require => Package["pam"],
  }  
}
