class yum::config {
  file {"/etc/yum.repos.d/Accelarad.repo":
    ensure => present,
    owner => "root",
    group => "root",
    mode => 0644,
    source => "puppet://$puppetserver/modules/yum/etc_yum.repos.d_accelarad.repo",
  }  
}
