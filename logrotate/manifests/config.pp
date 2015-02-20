class logrotate::config {
  file {"/etc/logrotate.conf":
    ensure => present,
    owner => "root",
    group => "root",
    mode => 0644,
    source => "puppet://$puppetserver/modules/logrotate/etc_logrotate.conf",
  }  
}
