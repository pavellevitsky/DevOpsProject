class jenkins {

  package { "jenkins":
    ensure   => installed,
    provider => rpm,
    source   => "http://pkg.jenkins-ci.org/redhat/jenkins-1.651-1.1.noarch.rpm",
  }

  service { "jenkins":
    enable => false,
    ensure => running,
  }

  Package ["jenkins"] -> Service ["jenkins"]
}
