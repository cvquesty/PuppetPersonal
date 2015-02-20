class ntp {
  include ntp::config
  include ntp::install
  include ntp::service
}
