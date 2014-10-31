class icecast::config -> icecast::install {
  file { '/etc/icecast2/icecast.xml':
    ensure  => present,
    owner   => 'icecast2',
    group   => 'icecast',
    mode    => 660,
    content => template("${module_name}/icecast.xml.erb")
  }

  file { '/etc/default/icecast2':
    source => "puppet:///modules/${module_name}/icecast2"
  }
}
