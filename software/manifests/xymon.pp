class software::xymon {
  # Require the Xymon User and Dirs to be in place
  case $architecture {
    i386: {
      package { "xymonclient-accel":
        ensure => installed,
      }
    }  
    x86_64: {
      package { "xymonclient-accel":
        ensure => installed,
      }
    }  
  }

  # Put the initscript in place
  file { "/etc/init.d/xymon-client":
    ensure => present,
    owner => "root",
    group => "root",
    mode => 0755,
    source => "puppet://$puppetserver/modules/software/etc_init.d_xymon-client",
  }

  # Put the Client ID File in place
  file { "/etc/default/xymon-client":
    ensure => present,
    content => template("software/etc_default_xymon-client.erb"),
    owner => "root",
    group => "root",
    mode => 0644,
  }

  # Turn it all on
  service { "xymon-client":
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    enable => true,
    require => File["/etc/init.d/xymon-client"],
  }

  # Set the Permissions
  exec { "xymonperms":
    command => "/bin/chown -R xymon. /home/xymon",
    path => "/bin",
    require => Package["xymonclient-accel"],
  }
}
