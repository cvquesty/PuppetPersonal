class software::java64 {
  # First make sure OpenJDK is not installed
  package { "java-1.6.0-openjdk":
    ensure => absent,
  }

  package { "java-1.7.0-openjdk":
    ensure => absent,
  }
    
  package { "java-accel":
    ensure => installed,
  }

  file { "/srv/java":
    ensure => "link",
    target => "/srv/jdk1.7.0_25_64",
    owner => "neurostar",
    group => "neurostar",
  }

  exec { "javaperms":
    command => "/bin/chown -R neurostar. /srv/jdk1.7.0_25_64",
    path => "/bin",
    require => File["/srv/java"],
  }

  file { "/etc/profile.d/java.sh":
    ensure => present,
    owner => "root",
    group => "root",
    mode => 0644,
    source => "puppet://$puppetserver/modules/software/etc_profile.d_java.sh",
  }
}
