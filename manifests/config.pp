class icecast::config {
  file { "/etc/icecast2/icecast.xml":
    ensure => present,
    owner  => "icecast2",
    group  => "icecast",
    mode   => 660,
    require => Class["icecast::install"],
    content => template("${module_name}/icecast.xml.erb")
  }
}
