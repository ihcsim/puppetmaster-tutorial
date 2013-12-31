class base {
  include sudo, ssh, puppet

  package{'vim':
    ensure => present
  }
}
