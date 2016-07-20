class people::webdizz::langs::erlang-lang {

  package {'erlang':
    ensure => '19.0.2',
    install_options => [
      '--with-native-libs',
      '--with-fop'
    ]
  }

  package {'elixir':
    ensure => '1.3.2'
  }
}
