class ntp {

  package { 'ntp':
    ensure => latest,
  }

  service { 'ntpd':
    ensure => running,
  }

  Package ['ntp'] -> Service ['ntpd']
}
