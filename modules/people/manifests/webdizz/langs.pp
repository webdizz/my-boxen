class people::webdizz::langs {

  include people::webdizz::langs::ruby
  include people::webdizz::langs::javas
  include people::webdizz::langs::erlang-lang

  package { 'go':
    ensure => '1.5',
  }

  package { 'hg':}

  include gvm

  gvm::groovy { '2.4.4': }

  package {'leiningen':}

  class rust {
    package { 'rust_06_09_15':
      provider => 'pkgdmg',
      source => 'http://static.rust-lang.org/dist/rust-nightly-x86_64-apple-darwin.pkg'
    }
  }
  include rust

}
