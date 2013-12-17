class ssh::install{
  package{$ssh::params::ssh_package_name:
    ensure => present
  }
}
