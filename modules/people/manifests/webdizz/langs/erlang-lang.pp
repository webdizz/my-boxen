class people::webdizz::langs::erlang-lang {

  package {'erlang':
    ensure => '20.0',
    install_options => [
      '--with-native-libs',
      '--with-fop'
    ]
  }

  package {'elixir':
    ensure => '1.4.5'
  }
}
