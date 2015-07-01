class people::webdizz::langs::erlang-lang {

  package {'erlang':
    ensure => '17.5',
    install_options => [
      '--with-native-libs',
      '--with-fop'
    ]
  }

  package {'elixir':
    ensure => '1.0.4',
  }
}
