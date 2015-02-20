class software::prodamq {
  # Place the InitScript
  file { "/etc/init.d/activemq":
    owner => "root",
    group => "root",
    mode => 0755,
    ensure => present,
    source => "puppet://$puppetserver/modules/software/etc_init.d_activemq",
  }

  package { "activemq-accel":
    ensure => installed,
  }

  file { "/srv/amq":
    ensure => "link",
    target => "/srv/apache-activemq-5.8.0",
    owner => "neurostar",
    group => "neurostar",
  }
}
