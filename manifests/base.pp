class base {
  include sudo, ssh
  package{'vim':
    ensure => present
  }
}
