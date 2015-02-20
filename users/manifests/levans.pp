class users::levans {
  # First, make the group
  group { "levans":
    ensure => present,
    gid => 1001,
  }
  
  # Next, make sure the home directory is there
  file { "/home/levans":
    ensure => directory,
    owner => "levans",
    group => "levans",
    mode => 0700,
  }

  # Add the user
  user { "levans":
    ensure => present,
    uid => 1001,
    gid => 1001,
    groups => "admin",
    home => "/home/levans",
    managehome => true,
    password => '$1$5PqtECOT$gd397EEYjh5E7sqEiUOMi.',
  }
}
