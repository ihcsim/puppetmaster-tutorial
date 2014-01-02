class postfix::install {
  package {['postfix',$postfix::params::mailx_package]:
    ensure => present
  }

}
