class sudo::config {
  file { "/etc/sudoers":
    owner => "root",
    group => "root",
    mode => 0400,
    require => Package["sudo"],
    source => "puppet://$puppetserver/modules/sudo/etc_sudoers",
  }
}
