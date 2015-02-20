class cron::install {
  package { "cronie":
    ensure => present,
  }  
}
