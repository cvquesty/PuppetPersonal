# All Production ActiveMQ Servers
node 'i-amq00vm.internap.nsirad.com' {
  include amq
  include prodamq
  include prodamq::upload
  include software::prodamq
}

node 'i-amq01vm.internap.nsirad.com' {
  include amq
  include prodamq
  include prodamq::upload
  include software::prodamq
}

node 'i-amq100vm.internap.nsirad.com' {
  include amq
  include prodamq
  include prodamq::upload1
  include software::prodamq
}
node 'i-amq101vm.internap.nsirad.com' {
  include amq
  include prodamq
  include prodamq::upload1
  include software::prodamq
}
