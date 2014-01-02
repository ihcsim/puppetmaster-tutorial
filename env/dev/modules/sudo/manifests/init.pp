class sudo{
  package{'sudo':
    ensure => present,
  }


  if $operatingsystem == 'Ubuntu' {
    notify{'Installing sudo-ldap...':}
      
    package{'sudo-ldap':
      ensure  => present,
      require => Package['sudo']
    }
  }

  file {'/etc/sudoers':
    owner   => root,
    group   => root,
    mode    => 0440,
    source  => 'puppet:///modules/sudo/sudoers',
    require => Package['sudo']
  }
}
