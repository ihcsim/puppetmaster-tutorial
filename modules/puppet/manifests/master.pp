class puppet::master{

  include puppet

  package{'puppetmaster':
    ensure => installed
  }

  service{'puppetmasterd':
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    enable     => true,
    require    => File['/etc/puppet/puppet.conf']
  }
}
