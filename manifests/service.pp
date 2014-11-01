class icecast::service {
  notify { 'icecast::service (service.pp)': }

  service { 'icecast2':
    enable  => true,
    ensure  => 'running',
    require => Class['icecast::config']
  }
}
