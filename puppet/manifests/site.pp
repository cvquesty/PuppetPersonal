import 'nodes/*.pp'
import 'classes/*.pp'
$puppetserver = 'puppet.internap.nsirad.com'

filebucket { "main":
   server => "puppet.internap.nsirad.com",
   path => false,
}

File { backup => "main" }
