class people::webdizz {

  include java
  include skype
  include vagrant
  include virtualbox
  include intellij
  include chrome
  include wget
  include dropbox
  include cyberduck
  include mou
  include googledrive
  include shortcat
  include emacs


  $home     = "/Users/${::boxen_user}"
  $my       = "${home}/dev"
  $dotfiles = "${my}/dotfiles"

  file { $my:
    ensure  => directory
  }

  repository { $dotfiles:
    source  => 'webdizz/dotfiles',
    require => File[$my]
  }

  file { "${home}/.tmux.conf":
    ensure  => link,
    mode    => '0644',
    target  => "${dotfiles}/tmux.conf",
    require => Repository[$dotfiles],
  }

  file { "${home}/.teamocil":
    ensure  => link,
    mode    => '0644',
    target  => "${dotfiles}/teamocil",
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

########################
## basic system settings
########################

  property_list_key { 'Disable Gatekeeper':
    ensure => present,
    path   => '/var/db/SystemPolicy-prefs.plist',
    key    => 'enabled',
    value  => 'no',
  }

########################
# trackpad
########################

  property_list_key { 'Natural scroll direction':
    ensure     => present,
    path       => "${home}/Library/Preferences/.GlobalPreferences.plist",
    key        => 'com.apple.swipescrolldirection',
    value_type => 'boolean',
    value      => 'true',
  }

  property_list_key { 'Tap to click':
    ensure     => present,
    path       => "${home}/Library/Preferences/.GlobalPreferences.plist",
    key        => 'com.apple.mouse.tapBehavior',
    value_type => 'integer',
    value      => '1',
  }

#  class { 'intellij':
#    edition => 'ultimate',
#  }

}
