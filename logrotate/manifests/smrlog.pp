class logrotate::smrlog {
  file {"/etc/logrotate.d/smr":
    ensure => present,
    owner => "root",
    group => "root",
    mode => 0644,
    source => "puppet://$puppetserver/modules/logrotate/etc_logrotate.d_smr",
  }
}
