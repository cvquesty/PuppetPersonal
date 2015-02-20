class logrotate::syslog {
  file {"/etc/logrotate.d/syslog":
    ensure => present,
    owner => "root",
    group => "root",
    mode => 0644,
    source => "puppet://$puppetserver/modules/logrotate/etc_logrotate.d_syslog",
  }  
}
