class icecast::service {

  service { 'icecast2':
    enable    => true,
    ensure    => 'running',
    hasstatus => false,
    require   => Class['icecast::config']
  }
}
