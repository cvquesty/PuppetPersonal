class software::fixperms {
  case $architecture {
    i386: {
      file { "/srv/httpd-2.4.6_32":
        ensure => directory,
        owner => "root",
        group => "root",
        recurse => true,
      }  

      file { "/srv/jdk1.7.0_25_32":
        ensure => directory,
        owner => "neurostar",
        group => "neurostar",
        recurse => true,
      }

      file { "/srv/apache-servicemix-4.5.2_32":
        ensure => directory,
        owner => "neurostar",
        group => "neurostar",
        recurse => true,
      }

      file { "/srv/apache-tomcat-7.0.42_32":
        ensure => directory,
        owner => "neurostar",
        group => "neurostar",
        recurse => true,
      }
    }  
    x86_64: {
      file { "/srv/httpd-2.4.6_64":
        ensure => directory,
        owner => "root",
        group => "root",
        recurse => true,
      } 

      file { "/srv/jdk1.7.0_25_64":
        ensure => directory,
        owner => "neurostar",
        group => "neurostar",
        recurse => true,
      }

      file { "/srv/apache-servicemix-4.5.2_64":
        ensure => directory,
        owner => "neurostar",
        group => "neurostar",
        recurse => true,
      }

      file { "/srv/apache-tomcat-7.0.42_64":
        ensure => directory,
        owner => "neurostar",
        group => "neurostar",
        recurse => true,
      }
    } 
  }  
}
