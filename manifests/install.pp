class icecast::install {

  $package_name = $operatingsystem ? {
    'Ubuntu' => 'icecast2',
    'Fedora' => 'icecast'
  }

  package { $package_name:
    ensure => "present",
  }
}
