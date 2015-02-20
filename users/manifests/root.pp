class users::root {
  user { "root":
    password_max_age => 90,
  }  

  file { "/root":
    ensure => "directory",
    owner => "root",
    group => "root",
    mode => 0750,
  }

  file { "/root/.ssh":
     ensure => "directory",
     owner => "root",
     group => "root",
     mode => 0700,
  }

  file { "/root/.ssh/authorized_keys":
    ensure => present,
    owner => "root",
    group => "root",
    mode => 0644,
    source => "puppet://$puppetserver/modules/users/rootkeys",
  }

  exec { "/usr/bin/chage -M 90 -W 14 root":
    path => "/usr/bin",
  }
}
