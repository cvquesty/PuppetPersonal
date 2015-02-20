class environment::aliases {
  # Root Mail Aliases
  exec { "/usr/bin/perl -pi -e 's/^#root:.*$/root: itoperations\@i\-lnxops01vm.internap.nsirad.com/' /etc/aliases":
    path => "/usr/bin",
    notify => Exec["refresh_aliases"],
  }  

  exec { "refresh_aliases":
    cwd => "/usr/bin",
    command => "/usr/bin/newaliases",
    refreshonly => true,
  }
}
