# Linux Baseline C.12 - SNMP Security
class snmp::config {
   case $operatingsystem {
      OracleLinux: {
	      package { "net-snmp-libs":
            ensure => "absent", 
         }
   
         package { "net-snmp-utils":
            ensure => "absent", 
         }

         package { "net-snmp":
            ensure => "absent", 
         }
      }

      Darwin: {
         file { "/var/gcs/need_snmp_packages_for_osx":
            ensure => present, 
         }
      }
   }
}
