node 'jenkins' {

  include ntp

  include java

  include jenkins

}

node 'build-node' {

  include ntp

  include git

  include java

  include maven

}

node 'webserver' {

  include ntp

#  include tomcat

}

node 'default' {

   notify { "unknown machine": }

}
