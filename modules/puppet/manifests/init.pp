service{'puppetmaster':
  ensure => running
}

service{'puppet':
  ensure => running
}
