class mounts::smix {
  mount { "/mnt/i":
    device => "192.168.10.101:/volumes/pool1/volume1/nimbusnfs",
    fstype => "nfs",
    ensure => "mounted",
    options => "defaults",
    atboot => "true",
  }  
}
