class people::webdizz::langs::python-lang {

  package { 'anaconda':
    ensure => installed,
    provider => 'brewcask',
  }

}
