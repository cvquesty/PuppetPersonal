# Our core Application Serving Stack
class appstack {
  include software::logwatch
  include software::java64
  include software::apache
  include logrotate::apachelog
  include software::tomcat
  include logrotate::tomcatlog
}
