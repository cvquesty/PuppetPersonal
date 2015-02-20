class puppet {
  include puppet::config
  include puppet::install
  include puppet::service
}
