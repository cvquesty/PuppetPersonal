class software::servicemix {

  # Require the Servicemix Dirs to be in place
  case $architecture {
    i386: {

      # Put the initscript in place
      file { "/etc/init.d/servicemix":
        owner => "root",
        group => "root",
        mode => 0755,
        ensure => present,
        source => "puppet://$puppetserver/modules/software/etc_init.d_servicemix32",
      }

      package { "smix-accel":
        ensure => installed,
      }

      file { "/srv/servicemix":
        ensure => "link",
        target => "/srv/apache-servicemix-4.5.2_32",
        owner => "neurostar",
        group => "neurostar",
      }
    }  
    x86_64: {

  # Put the initscript in place
    file { "/etc/init.d/servicemix":
      owner => "root",
      group => "root",
      mode => 0755,
      ensure => present,
      source => "puppet://$puppetserver/modules/software/etc_init.d_servicemix64",
    }

      package { "smix-accel":
        ensure => installed,
      }

      file { "/srv/servicemix":
        ensure => "link",
        target => "/srv/apache-servicemix-4.5.2_64",
        owner => "neurostar",
        group => "neurostar",
      }
    }
  }
}
