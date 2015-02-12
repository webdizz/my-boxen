class people::webdizz::langs::erlang-lang {

  package {'erlang':
    ensure => '17.4_1',
    install_options => [
      '--with-native-libs',
      '--with-fop'
    ]
  }

  package {'elixir':
    ensure => '1.0.2',
  }
}
