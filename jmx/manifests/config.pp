class jmx::config {
  file { "/home/xymon/client/ext/check_jmx":
    ensure => present,
    owner => "xymon",
    group => "xymon",
    mode => 0755,
    source => "puppet://$puppetserver/modules/jmx/check_jmx",
    require => Class["software::xymon"],
  }  

  file { "/home/xymon/client/ext/heapquery.pl":
    ensure => present,
    owner => "xymon",
    group => "xymon",
    mode => 0755,
    source => "puppet://$puppetserver/modules/jmx/heapquery.pl",
    require => Class["software::xymon"],
  }  
  
  file { "/home/xymon/client/ext/jmxquery.jar":
    ensure => present,
    owner => "xymon",
    group => "xymon",
    mode => 0755,
    source => "puppet://$puppetserver/modules/jmx/jmxquery.jar",
    require => Class["software::xymon"],
  }  

  file { "/home/xymon/client/ext/jmxquery.pl":
    ensure => present,
    owner => "xymon",
    group => "xymon",
    mode => 0755,
    source => "puppet://$puppetserver/modules/jmx/jmxquery.pl",
    require => Class["software::xymon"],
  }  
  
  if $hostname =~ /^i-smr(\d+)\./ {
    file { "/home/xymon/client/etc/clientlaunch.cfg":
      ensure => present,
      owner => "xymon",
      group => "xymon",
      mode => 0755,
      source => "puppet://$puppetserver/modules/jmx/clientlaunch.cfg",
      require => Class["software::xymon"],
    }
  } else {
    file { "/home/xymon/client/etc/clientlaunch.cfg":
      ensure => present,
      owner => "xymon",
      group => "xymon",
      mode => 0755,
      source => "puppet://$puppetserver/modules/jmx/clientlaunch.cfg-hacker",
      require => Class["software::xymon"],
    }
  }
}
