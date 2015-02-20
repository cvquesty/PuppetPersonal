class users::jsheets {
  # First, make the group
  group { "jsheets":
    ensure => present,
    gid => 1000,
  }
  
  # Next, make sure the home directory is there
  file { "/home/jsheets":
    ensure => directory,
    owner => "jsheets",
    group => "jsheets",
    mode => 0700,
  }

  # Add the user
  user { "jsheets":
    ensure => present,
    uid => 1000,
    gid => 1000,
    groups => "admin",
    home => "/home/jsheets",
    managehome => true,
    password => '$1$Vi7Qu5Dn$.BKVzzp9BxKkZFqWuMeBp0',
  }
}
