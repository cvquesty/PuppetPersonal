class software::java32 {
  package { "java-1.6.0-openjdk":
    ensure => absent,
  }

  package { "java-1.7.0-openjdk":
    ensure => absent,
  }

  package { "java32-accel":
    ensure => installed,
  }

  file { "/srv/java":
    ensure => "link",
    target => "/srv/jdk1.7.0_25_32",
    owner => "neurostar",
    group => "neurostar",
    notify => Exec["javaperms"],
  }

  exec { "javaperms":
    command => "/bin/chown -R neurostar. /srv/jdk1.7.0_25_32",
    path => "/bin",    
    require => File["/srv/java"],
  }
}
