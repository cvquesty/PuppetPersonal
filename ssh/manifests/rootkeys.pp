class ssh::rootkeys {
  # Create RSA Keys 
  exec { "/usr/bin/ssh-keygen -t rsa -b 2048 -N '' -f /root/.ssh/id_rsa":
    path => "/usr/bin",
    creates => "/root/.ssh/id_rsa",
  }  

  # Create DSA Keys
  exec { "/usr/bin/ssh-keygen -t dsa -N '' -f /root/.ssh/id_dsa":
    path => "/usr/bin",
    creates => "/root/.ssh/id_dsa",
  }
}
