class puppet::master {
  include puppet::params

  package { "puppet-server":
    ensure => installed,
  }

  file { "/etc/puppet/puppet.conf":
    ensure => present,
    owner => "puppet",
    group => "puppet",
    source => "puppet://$puppetserver/modules/puppet/master-puppet.conf",
  }

  service { "puppetmaster":
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    enable => true,
    require => File["/etc/puppet/puppet.conf"],
  }
}
