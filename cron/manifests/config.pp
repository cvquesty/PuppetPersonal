class cron::config {
  file { "cron.allow":
    path => "/etc/cron.allow",
    ensure => present,
    owner => "root",
    group => "root",
    mode => 0644,
    replace => false,
  }

  file { "/etc/crontab":
    ensure => present,
    owner => "root",
    group => "root",
    mode => 0644,
  }

  file { "/usr/bin/crontab":
    ensure => present,
    owner => "root",
    group => "root",
    mode => 6755,
  }

  file_line { "root_user":
    path => '/etc/cron.allow',
    line => 'root',
    require => File["cron.allow"],
  }

  file { "/etc/cron.hourly/puppet_apply":
    ensure => present,
    owner => "root",
    group => "root",
    mode => 0755,
    source => "puppet://$puppetserver/modules/cron/etc_cron.hourly_puppet_apply",
  }
}
