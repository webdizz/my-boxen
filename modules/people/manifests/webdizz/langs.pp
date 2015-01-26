class people::webdizz::langs {

  include people::webdizz::langs::ruby
  include people::webdizz::langs::java

  package { "go":
    ensure => '1.4.1',
  }

  package { "hg":}
  package { "unixodbc":}

  include gvm

  gvm::groovy { '2.3.9': }

}
