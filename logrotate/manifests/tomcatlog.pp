class logrotate::tomcatlog {
  file {"/etc/logrotate.d/tomcat":
    ensure => present,
    owner => "root",
    group => "root",
    mode => 0644,
    source => "puppet://$puppetserver/modules/logrotate/etc_logrotate.d_tomcat",
  }  
}
