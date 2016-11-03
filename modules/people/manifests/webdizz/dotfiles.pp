class people::webdizz::dotfiles {

  $home = "/Users/${::boxen_user}"
  $dotfiles = "${home}/dev/dotfiles"

  repository { $dotfiles:
    source  => 'webdizz/dotfiles'
  }

  file { "${home}/.tmux.conf":
    ensure  => link,
    mode    => '0644',
    target  => "${dotfiles}/.tmux.conf",
    require => Repository[$dotfiles],
  }

  file { "${home}/.vimrc":
    ensure  => link,
    mode    => '0644',
    target  => "${dotfiles}/vim/.vimrc",
    require => Repository[$dotfiles],
  }

  file { "${home}/.gitconfig":
    ensure  => link,
    mode    => '0644',
    target  => "${dotfiles}/git/.gitconfig",
    require => Repository[$dotfiles],
  }

  file { "${home}/.gitignore_global":
    ensure  => link,
    mode    => '0644',
    target  => "${dotfiles}/git/.gitignore_global",
    require => Repository[$dotfiles],
  }

  file { "${home}/.bash_profile":
    ensure  => link,
    mode    => '0644',
    target  => "${dotfiles}/bash/.bash_profile",
    require => Repository[$dotfiles],
  }

  file { "${home}/.emacs.d/prelude-modules.el":
    ensure  => link,
    mode    => '0644',
    target  => "${dotfiles}/emacs/prelude-modules.el",
    require => Repository[$dotfiles],
  }

  file { "${home}/.emacs.d/personal/packages.el":
    ensure  => link,
    mode    => '0644',
    target  => "${dotfiles}/emacs/personal/packages.el",
    require => Repository[$dotfiles],
  }

  file { "${home}/.emacs.d/personal/configuration.el":
    ensure  => link,
    mode    => '0644',
    target  => "${dotfiles}/emacs/personal/configuration.el",
    require => Repository[$dotfiles],
  }

  # zsh
  file { "${home}/.zshenv":
    ensure  => link,
    mode    => '0644',
    target  => "${dotfiles}/zsh/zshenv",
    require => Repository[$dotfiles],
  }

  file { "${home}/.zprofile":
    ensure  => link,
    mode    => '0644',
    target  => "${dotfiles}/zsh/zprofile",
    require => Repository[$dotfiles],
  }

  file { "${home}/.zshrc":
    ensure  => link,
    mode    => '0644',
    target  => "${dotfiles}/zsh/zshrc",
    require => Repository[$dotfiles],
  }

  file { "${home}/.zpreztorc":
    ensure  => link,
    mode    => '0644',
    target  => "${dotfiles}/zsh/zpreztorc",
    require => Repository[$dotfiles],
  }

  file { "${home}/.zlogin":
    ensure  => link,
    mode    => '0644',
    target  => "${dotfiles}/zsh/zlogin",
    require => Repository[$dotfiles],
  }

  file { "${home}/.zlogout":
    ensure  => link,
    mode    => '0644',
    target  => "${dotfiles}/zsh/zlogout",
    require => Repository[$dotfiles],
  }

  file { "${home}/.slate":
    ensure  => link,
    mode    => '0644',
    target  => "${dotfiles}/.slate",
    require => Repository[$dotfiles],
  }

  file { "${home}/.karabiner.d/configuration/karabiner.json":
    ensure  => link,
    mode    => '0644',
    target  => "${dotfiles}/karabiner.d/configuration/karabiner.json",
    require => Repository[$dotfiles],
  }

}
