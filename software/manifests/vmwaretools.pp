class software::vmwaretools {
  case $architecture {
    i386: {
      package {"vmware-open-vm-tools-kmod":
        ensure => installed,
        provider => rpm,
        source => "http://puppet.internap.nsirad.com/packages/32/vmware-open-vm-tools-kmod-8.0.0-164009.165940.el5.i686.rpm ",
      }

      package {"vmware-open-vm-tools-common":
        ensure => installed,
        provider => rpm,
        source => "http://puppet.internap.nsirad.com/packages/32/vmware-open-vm-tools-common-8.0.0-164009.165940.el5.i686.rpm ",
      }

      package {"vmware-tools-common":
        ensure => installed,
        provider => rpm,
        source => "http://puppet.internap.nsirad.com/packages/32/vmware-tools-common-8.0.0-164009.165940.el5.i686.rpm ",
      }

      package {"vmware-open-vm-tools-nox":
        ensure => installed,
        provider => rpm,
        source => "http://puppet.internap.nsirad.com/packages/32/vmware-open-vm-tools-nox-8.0.0-164009.165940.el5.i686.rpm ",
      }

      package {"vmware-tools-nox":
        ensure => installed,
        provider => rpm,
        source => "http://puppet.internap.nsirad.com/packages/32/vmware-tools-nox-8.0.0-164009.165940.el5.i686.rpm ",
      }
    }

    x86_64: {
      package {"vmware-open-vm-tools-kmod":
        ensure => installed,
        provider => rpm,
        source => "http://puppet.internap.nsirad.com/packages/64/vmware-open-vm-tools-kmod-8.0.0-164009.165940.el5.x86_64.rpm ",
      }

      package {"vmware-open-vm-tools-common":
        ensure => installed,
        provider => rpm,
        source => "http://puppet.internap.nsirad.com/packages/64/vmware-open-vm-tools-common-8.0.0-164009.165940.el5.x86_64.rpm ",
      }

      package {"vmware-tools-common":
        ensure => installed,
        provider => rpm,
        source => "http://puppet.internap.nsirad.com/packages/64/vmware-tools-common-8.0.0-164009.165940.el5.x86_64.rpm ",
      }

      package {"vmware-open-vm-tools-nox":
        ensure => installed,
        provider => rpm,
        source => "http://puppet.internap.nsirad.com/packages/64/vmware-open-vm-tools-nox-8.0.0-164009.165940.el5.x86_64.rpm ",
      }

      package {"vmware-tools-nox":
        ensure => installed,
        provider => rpm,
        source => "http://puppet.internap.nsirad.com/packages/64/vmware-tools-nox-8.0.0-164009.165940.el5.x86_64.rpm ",
      }
    }
  }
}
