class people::webdizz::langs::erlang-lang {

  package {'erlang':
    ensure => '19.1',
    install_options => [
      '--with-native-libs',
      '--with-fop'
    ]
  }

  package {'elixir':
    ensure => '1.3.4'
  }
}
