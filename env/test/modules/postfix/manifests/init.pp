class postfix {
  require postfix::params
  include postfix::install,postfix::config,postfix::service
}
