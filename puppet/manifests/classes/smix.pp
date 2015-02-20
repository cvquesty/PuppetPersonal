# Our ServiceMix Application Serving Stack
class smix {
  case $architecture {
    i386: {
      include base
      include software::java32
      include software::servicemix
    }
    x86_64: {
      include base
      include software::java64
      include software::servicemix
    }
  }
}
