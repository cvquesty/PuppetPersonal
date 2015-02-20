class users::xymon {
  # First, make the group
  group { "xymon":
    ensure => present,
    gid => 1984,
  }
  
  # Next, make sure the home directory is there
  file { "/home/xymon":
    ensure => directory,
    owner => "xymon",
    group => "xymon",
    mode => 0700,
  }

  # Add the user
  user { "xymon":
    ensure => present,
    uid => 1984,
    gid => 1984,
    home => "/home/xymon",
    managehome => true,
    password => '$6$tV4Q2/Ns$PDVznDOGHEyWPFki/qfJiLmcI7rIuczr1D4ko.lIx8WNFkrhJvlYZ/Jy1Q2Xs2F7scbNm1mzuJDSHWt571Qeb/',
  }
}
