class ssh::config {
  file {'serviceconfigfile':
    path    => $ssh::params::ssh_service_config,
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => 0600,
    source  => 'puppet:///modules/ssh/ssh_config',
    require => Class['ssh::install'],
    notify  => Class['ssh::service']
  }
}
