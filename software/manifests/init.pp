class software {
  # Install wget
  package {"wget":
    ensure => installed,
  }
            
  # Install tar
  package {"tar":
    ensure => installed,
  }
  include software::centos
  include software::xymon
  include software::nfsutils
}
