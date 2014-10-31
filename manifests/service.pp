class icecast::service {
  service { 'icecast2':
    enabled => true,
    require => Class['icecast::config']
  }
}
