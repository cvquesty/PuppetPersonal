class software::apache {
  # Place the initscript
  file { "/etc/init.d/apache":
    owner => "root",
    group => "root",
    mode => 0755,
    ensure => present,
    source => "puppet://$puppetserver/modules/software/etc_init.d_apache",
  }

  # Install the software and make the link
  case $architecture {
    i386: {
      package { "apache-accel":
        ensure => installed,
      }

      file { "/srv/apache":
        ensure => "link",
        target => "/srv/httpd-2.4.6_32",
        owner => "neurostar",
        group => "neurostar",
      }
    }  
    x86_64: {
      package { "apache-accel":
        ensure => installed,
      }

      file { "/srv/apache":
        ensure => "link",
        target => "/srv/httpd-2.4.6_64",
        owner => "neurostar",
        group => "neurostar",
      }
    }  
  }
}
