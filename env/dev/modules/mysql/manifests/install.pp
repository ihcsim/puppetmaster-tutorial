class mysql::install {

  package{['mysql-client-core-5.5','mysql-server-core-5.5']:
    ensure  => present,
    require => User['mysql']
  }

  user{'mysql':
    ensure  => present,
    comment => 'MySQL user',
    gid     => 'mysql',
    shell   => '/bin/false',
    require => Group['mysql']
  }

  group{'mysql':
    ensure => present
  }
}
