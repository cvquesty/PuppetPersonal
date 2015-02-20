class cron::anacrontab {
  file { "/etc/anacrontab":
    ensure => present,
    owner => "root",
    group => "root",
    mode => 0644,
    notify => Class["cron::service"],
    source => "puppet://$puppetserver/modules/cron/etc_anacrontab",
  }  
}
