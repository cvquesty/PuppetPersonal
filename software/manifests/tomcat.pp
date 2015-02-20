class software::tomcat {
  # Install the appropriate Tomcat and make the Symlink
  package { "tomcat-accel":
    ensure => installed,
  }

  file { "/srv/tomcat":
    ensure => "link",
    target => "/srv/apache-tomcat-7.0.42_64",
    owner => "neurostar",
    group => "neurostar",
  }

  file { "/etc/init.d/tomcat":
    ensure => present,
    owner => "root",
    group => "root",
    mode => 0755,
    source => "puppet://$puppetserver/modules/software/etc_init.d_tomcat",
  }

  exec { "tomcatperms":
    command => "/bin/chown -R neurostar. /srv/apache-tomcat-7.0.42_64",
    path => "/bin",
    require => File["/srv/tomcat"],
  }
}
