class postfix::params{

  case $operatingsystem {
    /(Ubuntu|Debian)/: {
      $mailx_package = 'mailutils'
    }
    /(RedHat|CentOS|Fedora)/: {
      $mailx_package = 'mailx'
    }
    default:{
      $mailx_package = 'mailx'
    }
  }
}
