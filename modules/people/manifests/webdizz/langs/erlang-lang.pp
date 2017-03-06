class people::webdizz::langs::erlang-lang {

  package {'erlang':
    ensure => '19.2.3',
    install_options => [
      '--with-native-libs',
      '--with-fop'
    ]
  }

  package {'elixir':
    ensure => '1.4.2'
  }
}
