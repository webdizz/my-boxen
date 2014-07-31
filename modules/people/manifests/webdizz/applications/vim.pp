class people::webdizz::applications::vim {

  include vim
  include vim::pathogen

  $home = "/Users/${::boxen_user}"

  repository { "${home}/.vim/bundle/Vundle.vim":
    source => 'gmarik/Vundle.vim',
    require => File["${home}/.vim"]
  }
}
