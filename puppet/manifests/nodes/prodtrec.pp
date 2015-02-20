# All Production Turbo Receivers 
# Upload Path
node 'i-trec00vm.internap.nsirad.com' {
  include trec
  include prodtrec
  include prodtrec::apacheconf_upload
  include prodtrec::upload
  include prodtrec::turboreceiver_release
}

node 'i-trec01vm.internap.nsirad.com' {
  include trec
  include prodtrec
  include prodtrec::apacheconf_upload
  include prodtrec::upload
  include prodtrec::turboreceiver_release
}

node 'i-trec02vm.internap.nsirad.com' {
  include trec
  include prodtrec
  include prodtrec::apacheconf_upload
  include prodtrec::upload
  include prodtrec::turboreceiver_release
}

node 'i-trec03vm.internap.nsirad.com' {
  include trec
  include prodtrec
  include prodtrec::apacheconf_upload
  include prodtrec::upload
  include prodtrec::turboreceiver_release
}

# Upload1 Path
node 'i-trec100vm.internap.nsirad.com' {
  include trec
  include prodtrec
  include prodtrec::apacheconf_upload1
  include prodtrec::upload1
  include prodtrec::turboreceiver_release
}

node 'i-trec101vm.internap.nsirad.com' {
  include trec
  include prodtrec
  include prodtrec::apacheconf_upload1
  include prodtrec::upload1
  include prodtrec::turboreceiver_release
}

node 'i-trec102vm.internap.nsirad.com' {
  include trec
  include prodtrec
  include prodtrec::apacheconf_upload1
  include prodtrec::upload1
  include prodtrec::turboreceiver_release
}
node 'i-trec103vm.internap.nsirad.com' {
  include trec
  include prodtrec
  include prodtrec::apacheconf_upload1
  include prodtrec::upload1
  include prodtrec::turboreceiver_release
}
