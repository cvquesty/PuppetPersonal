# All Development Nodes

node 'c-lnxapi01vm.corporate.nsirad.com' {
   include devbase
   include software::java64
}

node 'c-lnxrec01vm.corporate.nsirad.com' {
   include devbase
   include appstack
}

node 'c-lnxsmr01vm.corporate.nsirad.com' {
   include devbase
   include appstack
}

node 'c-lnxtdisp01vm.corporate.nsirad.com' {
   include devbase
   include software::java64
}

node 'c-smmail01vm.corporate.nsirad.com' {
  include devbase
  include software::java64
}

node 'c-smix64-01vm.corporate.nsirad.com' {
   include devbase
   include smix
   include stgracsmix
   include stgracsmix::config
   include stgracsmix::service
}

