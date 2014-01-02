class mysql::service{

  service{'mysqld':
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    enable     => true,
    require    => Class['mysql::config']
  }
}
