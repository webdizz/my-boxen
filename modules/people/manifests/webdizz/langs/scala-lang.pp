class people::webdizz::langs::scala-lang {

  package {'sbt':
    ensure => '0.13.13'
  }

  package { 'typesafe-activator':
    ensure => '1.3.12',
  }

}
