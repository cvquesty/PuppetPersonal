class postfix::install {
   case $operatingsystem {
      OracleLinux: {
         package { "postfix":
            ensure => present,
         }
      }

      Darwin: {
         file { "/var/gcs/postfix_provided_by_netboot":
            ensure => present, 
         }
      }
   }
}
