class dbvars::config {
  file { "/etc/profile.d/mysql.sh":
    ensure => present,
    owner => "root",
    group => "root",
    mode => 0644,
    source => "puppet://$puppetserver/modules/dbvars/etc_profile.d_mysql.sh",
  }  
}
