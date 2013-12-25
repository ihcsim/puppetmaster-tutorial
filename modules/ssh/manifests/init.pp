class ssh {
  require ssh::params
  include ssh::install, ssh::config, ssh::service
}
