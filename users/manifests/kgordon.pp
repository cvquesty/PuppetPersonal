class users::kgordon {
  # First, make the group
  group { "kgordon":
    ensure => present,
    gid => 1002,
  }
  
  # Next, make sure the home directory is there
  file { "/home/kgordon":
    ensure => directory,
    owner => "kgordon",
    group => "kgordon",
    mode => 0700,
  }

  # Add the user
  user { "kgordon":
    ensure => present,
    uid => 1002,
    gid => 1002,
    groups => "admin",
    home => "/home/kgordon",
    managehome => true,
    password => '$1$011wIZHj$whG3GJgmCRoz7yjHTeHO./',
  }
}
