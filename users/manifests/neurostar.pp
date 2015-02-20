class users::neurostar {
  # First, make the group
  group { "neurostar":
    ensure => present,
    gid => 500,
  }
  
  # Next, make sure the home directory is there
  file { "/home/neurostar":
    ensure => directory,
    owner => "neurostar",
    group => "neurostar",
    mode => 0700,
  }

   # If the user is in corporate, set correct password. If internap, set correct one for there
   case $domain {
      "internap.nsirad.com": {
         user { "neurostar":
            ensure => present,
            uid => 500,
            gid => 500,
            groups => ["wheel"],
            home => "/home/neurostar",
            managehome => true,
            password => '$1$Jbqqf71q$UCnjhHwseMRFQGeOzpyu5.',
         }
      }

      "corporate.nsirad.com": {
         user { "neurostar":
            ensure => present,
            uid => 500,
            gid => 500,
            groups => ["wheel"],
            home => "/home/neurostar",
            managehome => true,
            password => '$6$zueBkF.s$jPqVYRxdIN4nyqchtVWqITNjZ4hU.W/hqhG3if/XLCPy1Zw.ZJtr5FLEnrAqCvcn7SXyLMqPXKXXTmemTOYjS.',
         }
      }
   }
}
