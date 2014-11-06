class icecast::config {

  $config_file = $operatingsystem ? {
    'Ubuntu' => '/etc/icecast2/icecast.xml',
    'Fedora' => '/etc/icecast.xml'
  }

  file { $config_file:
    ensure  => present,
    #owner   => 'icecast2',
    group   => 'icecast',
    mode    => 660,
    content => template("${module_name}/icecast.xml.erb"),
    require => Class['icecast::install'],
    notify  => Service['icecast']
  }

  if $operatingsystem == 'Ubuntu' {
    file { '/etc/default/icecast2':
      source => "puppet:///modules/${module_name}/icecast2",
      require => Class['icecast::install']
    }
  }
}
