class people::webdizz::private_dotfiles {

  $home = "/Users/${::boxen_user}"
  $pdotfiles = "${home}/dev/pdotfiles"

  repository { $pdotfiles:
    source  => 'https://xp-dev.com/git/dotfiles'
  }

  file { "${home}/.ssh":
    ensure  => link,
    mode    => '0644',
    target  => "${pdotfiles}/.ssh",
    require => Repository[$pdotfiles],
  }

  file { "${home}/.m2":
    ensure  => directory,
    mode    => '0644',
    require => Repository[$pdotfiles],
  }

  file { "${home}/.m2/settings.xml":
    ensure  => link,
    mode    => '0644',
    target  => "${pdotfiles}/.m2/settings.xml",
    require => Repository[$pdotfiles],
  }

  file { "${home}/.teamocil":
    ensure  => link,
    mode    => '0644',
    target  => "${pdotfiles}/.teamocil",
    require => Repository[$pdotfiles],
  }

}
