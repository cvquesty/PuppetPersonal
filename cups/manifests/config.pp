class cups::config {
  file { "/etc/cups/cupsd.conf":
    owner => "root",
    group => "lp",
    mode => 0640,
    source => "puppet://$puppetserver/modules/cups/etc_cups_cupsd.conf",
    require => Package["cups"],
  }  
}
