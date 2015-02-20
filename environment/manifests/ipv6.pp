class environment::ipv6 {
  file_line { "disable_ipv6":
    path => '/etc/sysconfig/network',
    line => 'NETWORKING_IPV6=no',
  }  

  file_line { "disale_ipv6_init":
    path => '/etc/sysconfig/network',
    line => 'IPV6INIT=no',
  }
}
