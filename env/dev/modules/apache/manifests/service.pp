class apache::service{

  service{'apache':
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    enable     => true,
    require    => Class['apache::install']
  }
}
