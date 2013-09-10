class people::webdizz::applications::zsh {

  $home = "/Users/${::boxen_user}"

  include zsh
  include zshgitprompt

  repository {
    'Prezto repository':
      source   => 'https://github.com/sorin-ionescu/prezto.git',
      path     => "${home}/.zprezto",
      provider => 'git',
      extra  => '--recursive'
  }

}
