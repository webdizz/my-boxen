class people::webdizz::langs::scala-lang {

  package {'sbt':
    ensure => '0.13.12'
  }

  package { 'typesafe-activator':
    ensure => '1.3.10',
  }

}
