class pam::auth {
  file { "/etc/pam.d/system-auth-ac":
    ensure => present,
    owner => "root",
    group => "root",
    mode => 0644,
    source => "puppet://$puppetserver/modules/pam/etc_pam_d_system-auth-ac",
    require => Class["pam::install"],
  }  

  file { "/etc/pam.d/password-auth-ac":
    ensure => present,
    owner => "root",
    group => "root",
    mode => 0644,
    source => "puppet://$puppetserver/modules/pam/etc_pam_d_password-auth-ac",
    require => Class["pam::install"],
  }

  file { "/etc/pam.d/sshd":
    ensure => present,
    owner => "root",
    group => "root",
    mode => 0644,
    source => "puppet://$puppetserver/modules/pam/etc_pam_d_sshd",
    require => Class["pam::install"],
  }
}
