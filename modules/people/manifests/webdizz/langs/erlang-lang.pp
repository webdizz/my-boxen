class people::webdizz::langs::erlang-lang {

  package {'erlang':
    install_options => [
      '--with-native-libs',
      '--with-fop'
    ]
  }

  package {'elixir':
    ensure => '1.2.3'
  }
}
