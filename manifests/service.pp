class icecast::service {

  $service_name = $operatingsystem ? {
    'Ubuntu' => 'icecast2',
    'Fedora' => 'icecast'
  }

  service { 'icecast':
    title     => $service_name,
    enable    => true,
    ensure    => 'running',
    hasstatus => false,
    require   => Class['icecast::config']
  }
}
