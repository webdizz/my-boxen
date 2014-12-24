class people::webdizz::langs {

  include people::webdizz::langs::ruby
  include people::webdizz::langs::java

  package { "go":
    ensure => '1.4',
  }

  include gvm

  gvm::groovy { '2.3.9': }

}
