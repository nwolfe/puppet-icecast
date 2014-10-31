class icecast::config {

  file { '/etc/icecast2/icecast.xml':
    ensure  => present,
    owner   => 'icecast2',
    group   => 'icecast',
    mode    => 660,
    content => template("${module_name}/icecast.xml.erb"),
    require => Class['icecast::install']
  }

  file { '/etc/default/icecast2':
    source => "puppet:///modules/${module_name}/icecast2",
    require => Class['icecast::install']
  }
}
