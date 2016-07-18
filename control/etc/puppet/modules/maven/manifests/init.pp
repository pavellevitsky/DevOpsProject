class maven
{

  exec { 'install_maven_package':
    command => '/usr/bin/wget http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo',
  }

  package { 'apache-maven':
    ensure => 'latest',
  }

  Exec ['install_maven_package'] -> Package ['apache-maven']

}
