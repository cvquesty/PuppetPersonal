# Default Base Environment All Hosts Receive
class base {
  include cron
  include cups
  include dns
  include environment
  include logrotate
  include ntp
  include pam
  include puppet
  include software
  include ssh
  include sudo
  include syslog
  include users
  include vmwaretools 
  include yum
}
