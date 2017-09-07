class people::webdizz::langs::scala-lang {

  package {'sbt':
    ensure => '1.0.1'
  }

  package { 'typesafe-activator':
    ensure => '1.3.12',
  }

}
