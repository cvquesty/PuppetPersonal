class environment::profile {
  file { "/etc/profile":
    ensure => present,
    owner => "root",
    group => "root",
    mode => 0644,
    source => "puppet://$puppetserver/modules/environment/etc_profile",
  }
}
