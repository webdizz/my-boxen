class people::webdizz::applications::vim-support {

  $home = "/Users/${::boxen_user}"

  package { 'vim':
    ensure => '8.0.0728_1',
    install_options => ['--with-override-system-vi'],
  }

  repository { "${home}/.vim/bundle/Vundle.vim":
    source => 'gmarik/Vundle.vim',
  }

  exec { "Install|Update Vim plugins":
    command => "vim -e +PluginInstall +qall",
    tries   => 2
  }

}
