class software::prodnewrelic {
  file { "/srv/tomcat/newrelic/newrelic.yml":
    ensure => present,
    content => template("software/srv_tomcat_newrelic_newrelic_yml-PROD.erb"),
    owner => "neurostar",
    group => "neurostar",
    mode => 0644,
    require => Class["software::tomcat"],
  }
}
