class logrotate::treclog {
  file {"/etc/logrotate.d/trec":
    ensure => present,
    owner => "root",
    group => "root",
    mode => 0644,
    source => "puppet://$puppetserver/modules/logrotate/etc_logrotate.d_trec",
  }
}
