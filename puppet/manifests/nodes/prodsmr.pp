# All Production SMR Servers
node 'i-smr00vm.internap.nsirad.com' {
  include smr
  include prodsmr
  include prodsmr::4_1_0_release
  include software::prodnewrelic
}

node 'i-smr01vm.internap.nsirad.com' {
  include smr
  include prodsmr
  include prodsmr::4_1_0_release
  include software::prodnewrelic
}
