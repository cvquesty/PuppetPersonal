# All STGRAC SMR instances
node 'i-betavm-smr00.internap.nsirad.com' {
   include base
   include jmx
   include appstack
   include stgracsmr
   include stgracsmr::4_1_0_release
}
