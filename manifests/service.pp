class postfix::service {
   case $operatingsystem {
      OracleLinux: {
         service { "postfix":
            ensure => running,
            hasstatus => true,
            hasrestart => true,
            enable => true,
            require => Class["postfix::config"],
         }
      }

      Darwin: {
         file { "/var/gcs/need_osx_postfix_service":
            ensure => present, 
         }
      }
   }
}
