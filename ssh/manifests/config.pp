class ssh::config {
  file { "/etc/ssh/sshd_config":
    ensure => present,
    owner => "root",
    group => "root",
    mode => 0600,
    source => "puppet://$puppetserver/modules/ssh/etc_ssh_sshd_config",
    require => Class["ssh::install"],
    notify => Class["ssh::service"],
  }

  file { "/etc/ssh/ssh_config":
    ensure => present,
    owner => "root",
    group => "root",
    mode => 0644,
    source => "puppet://$puppetserver/modules/ssh/etc_ssh_ssh_config",
    require => Class["ssh::install"],
    notify => Class["ssh::service"],
  }
}
