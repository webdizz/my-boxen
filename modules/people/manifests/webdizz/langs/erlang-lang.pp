class people::webdizz::langs::erlang-lang {

  package {'erlang':
    ensure => '20.0.4',
    install_options => [
      '--with-native-libs',
      '--with-fop'
    ]
  }

  package {'elixir':
    ensure => '1.5.1'
  }
}
