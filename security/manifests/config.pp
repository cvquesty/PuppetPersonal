class security::config {
  file { "/srv/tomcat/1417":
    ensure => absent,
  }

  file { "/tmp/1417":
    ensure => absent,
  }

  file { "/tmp/1417.1":
    ensure => absent,
  }

  file { "/tmp/fake.cfg":
    enure => absent,
  }

  file { "/srv/tomcat/992":
    ensure => absent,
  }

  file { "/srv/tomcat/fake.cfg":
    ensure => absent,
  }
}
