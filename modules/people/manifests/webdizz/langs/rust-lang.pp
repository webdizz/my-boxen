class people::webdizz::langs::rust-lang {

  class rust {
    package { 'rust_07_03_16':
      provider => 'pkgdmg',
      source => 'http://static.rust-lang.org/dist/rust-nightly-x86_64-apple-darwin.pkg'
    }
  }
  include rust

}
