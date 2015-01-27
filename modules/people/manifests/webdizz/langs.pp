class people::webdizz::langs {

  include people::webdizz::langs::ruby
  include people::webdizz::langs::javas

  package { 'go':
    ensure => '1.4.1',
  }

  package { 'hg':}

  include gvm

  gvm::groovy { '2.4.0': }

  package {'leiningen':}

}
