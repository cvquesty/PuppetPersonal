class users::admin {
  # First, make the group
  group { "admin":
    ensure => present,
    gid => 501,
  }
  
  # Next, make sure the home directory is there
  file { "/home/admin":
    ensure => directory,
    owner => "admin",
    group => "admin",
    mode => 0700,
  }

  # Add the user
  user { "admin":
    ensure => present,
    uid => 501,
    gid => 501,
    home => "/home/admin",
    managehome => true,
    password => '$6$AIdMLqMD$t1um1z876Qwg.Va8up/9MKmkwtgZ/67gkF5Bl4r8tnNc16tWXEzlaDSkFAlhF5pgX4vfhrM5VaI9Xy4CtI7Xn.',
  }
}
