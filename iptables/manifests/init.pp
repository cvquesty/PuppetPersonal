class iptables {
  include iptables::config
  include iptables::install
  include iptables::service
}
