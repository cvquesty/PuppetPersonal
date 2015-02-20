class software::centos {
  # Install Software Groups
  exec { "system-management":
    unless => '/usr/bin/yum grouplist "system-management" | /bin/grep "^Installed Groups"',
    command => "/usr/bin/yum -y groupinstall system-management",
    path => "/bin",
  }

  exec { "system-management-snmp":
    unless => '/usr/bin/yum grouplist "system-management-snmp" | /bin/grep "^Installed Groups"',
    command => "/usr/bin/yum -y groupinstall system-management-snmp",
    path => "/bin",
  }

  exec { "development":
    unless => '/usr/bin/yum grouplist "development" | /bin/grep "^Installed Groups"',
    command => "/usr/bin/yum -y groupinstall development",
    path => "/bin",
  }

  exec { "legacy-unix":
    unless => '/usr/bin/yum grouplist "legacy-unix" | /bin/grep "^Installed Groups"',
    command => "/usr/bin/yum -y groupinstall legacy-unix",
    path => "/bin",
  }

  exec { "network-server":
    unless => '/usr/bin/yum grouplist "network-server" | /bin/grep "^Installed Groups"',
    command => "/usr/bin/yum -y groupinstall network-server",
    path => "/bin",
  }

  exec { "console-internet":
    unless => '/usr/bin/yum grouplist "console-internet" | /bin/grep "^Installed Groups"',
    command => "/usr/bin/yum -y groupinstall console-internet",
    path => "/bin",
  }
  
  # Install Individual Packages
  exec { "audit":
    unless => "/usr/bin/test -d /etc/audit",
    command => "/usr/bin/yum -y install audit",
    path => "/bin",
  }
  
  exec { "bridge-utils":
    unless => "/usr/bin/test -f /usr/sbin/brctl",
    command => "/usr/bin/yum -y install bridge-utils",
    path => "/bin",
  }
  
  exec { "cifs-utils":
    unless => "/usr/bin/test -f /sbin/mount.cifs",
    command => "/usr/bin/yum -y install cifs-utils",
    path => "/bin",
  }
  
  exec { "device-mapper-multipath":
    unless => "/usr/bin/test -f /sbin/multipathd",
    command => "/usr/bin/yum -y install device-mapper-multipath",
    path => "/bin",
  }
  
  exec { "imake":
    unless => "/usr/bin/test -f /usr/bin/imake",
    command => "/usr/bin/yum -y install imake",
    path => "/bin",
  }
 
  exec { "kexec-tools":
    unless => "/usr/bin/test -f /sbin/kexec",
    command => "/usr/bin/yum -y install kexec-tools",
    path => "/bin",
  }
 
  exec { "perl-DBD-mysql":
    unless => "/usr/bin/test -f /usr/lib/perl5/DBD/mysql.pm",
    command => "/usr/bin/yum -y install perl-DBD-mysql",
    path => "/bin",
  }
 
  exec { "php-mysql":
    unless => "/usr/bin/test -f /etc/php.d/mysql.ini",
    command => "/usr/bin/yum -y install php-mysql",
    path => "/bin",
  }
 
  exec { "php-pdo":
    unless => "/usr/bin/test -f /etc/php.d/pdo.ini",
    command => "/usr/bin/yum -y install php-pdo",
    path => "/bin",
  }
 
  exec { "samba":
    unless => "/usr/bin/test -f /usr/sbin/smbd",
    command => "/usr/bin/yum -y install samba",
    path => "/bin",
  }
 
  exec { "sysstat":
    unless => "/usr/bin/test -f /etc/sysconfig/sysstat",
    command => "/usr/bin/yum -y install sysstat",
    path => "/bin",
  }
 
  exec { "wget":
    unless => "/usr/bin/test -f /usr/bin/wget",
    command => "/usr/bin/yum -y install wget",
    path => "/bin",
  }

  exec { "compat-libstdc++-33":
    command => "/usr/bin/yum -y install compat-libstdc++-33",
    path => "/bin",
  }
  package { "compat-libstdc++-33":
    ensure => installed,
  }
}
