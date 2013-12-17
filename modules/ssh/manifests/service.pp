class ssh::service{
  service{$ssh::parms::ssh_service_name:
    ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    enable     => true,
    require    => Class['ssh:config']
  }

}
