class people::webdizz::applications::vim-support {

  $home = "/Users/${::boxen_user}"

  class vim {
    package { 'vim':
      ensure => '8.0.0055',
    }
  }

  include vim::pathogen

  repository { "${home}/.vim/bundle/Vundle.vim":
    source => 'gmarik/Vundle.vim',
    require => File["${home}/.vim"]
  }

  exec { "Install|Update Vim plugins":
    command => "vim -e -s +PluginInstall +qall",
    tries   => 2
  }

}
