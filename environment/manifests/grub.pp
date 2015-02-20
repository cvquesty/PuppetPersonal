class environment::grub {

  exec { "verbose_boot":
    command => "/usr/bin/perl -pi -e 's/^BOOTUP=color/BOOTUP=verbose/' /etc/sysconfig/init",
    path => "/usr/bin",
  }

  exec { "remove_hiddenmenu":
    command => "/usr/bin/perl -pi -e 's/^hiddenmenu/#hiddenmenu/' /boot/grub/grub.conf",
    path => "/usr/bin",
  }

  exec { "remove_splashimage":
    command => "/usr/bin/perl -pi -e 's/^splashimage/#splashimage/' /boot/grub/grub.conf",
    path => "/usr/bin",
  }

  exec { "remove_rhgb":
    command => "/usr/bin/perl -pi -e 's/rhgb/ /' /boot/grub/grub.conf",
    path => "/usr/bin",
  }

  exec { "remove_quiet":
    command => "/usr/bin/perl -pi -e 's/quiet/ /' /boot/grub/grub.conf",
    path => "/usr/bin",
  }
}
