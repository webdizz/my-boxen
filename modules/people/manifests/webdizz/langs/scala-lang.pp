class people::webdizz::langs::scala-lang {

  package {'sbt':
    ensure => '0.13.11'
  }

  package { 'typesafe-activator':
    ensure => installed,
  }
  
}
