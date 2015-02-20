# All STGRAC ServiceMix Servers
node 'i-betavm64-smix100.internap.nsirad.com' {
   include smix
   include stgracsmix
   include stgracsmix::config
   include stgracsmix::service
}

node 'i-betavm64-smix102.internap.nsirad.com' {
   include smix
   include stgracsmix
   include stgracsmix::config
   include stgracsmix::service
}

node 'i-betavm-smix101.internap.nsirad.com' {
   include smix
   include stgracsmix
   include stgracsmix::config
   include stgracsmix::service
}

node 'i-betavm-smix600.internap.nsirad.com' {
   include smix 
   include stgracsmix
   include stgracsmix::config
   include stgracsmix::service
}
