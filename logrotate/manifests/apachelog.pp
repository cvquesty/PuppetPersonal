class logrotate::apachelog {
  file {"/etc/logrotate.d/apache":
    ensure => present,
    owner => "root",
    group => "root",
    mode => 0644,
    source => "puppet://$puppetserver/modules/logrotate/etc_logrotate.d_apache",
  }  
}
