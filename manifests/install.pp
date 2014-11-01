class icecast::install {
  notify { 'icecast::install (install.pp)': }

  package { "icecast2":
    ensure => "present",
  }
}
