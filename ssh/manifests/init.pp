class ssh {
  include ssh::config
  include ssh::install
  include ssh::rootkeys
  include ssh::service
}
