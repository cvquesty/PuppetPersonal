# Default DEV base environment (doesn't keep overwriting DEV Options)
class devbase {
  include cups
  include dns
  include environment
  include ntp
  include pam
  include puppet
  include ssh
  include sudo
  include syslog
  include users
}
