class icecast::service {
  service { 'icecast2':
    enable  => true,
    require => Class['icecast::config']
  }
}
