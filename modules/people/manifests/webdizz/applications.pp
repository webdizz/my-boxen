class people::webdizz::applications {

  include skype
  include chrome
  include wget
  include dropbox
  include cyberduck
  include mou
  include googledrive
  include shortcat
  include iterm2::stable
  include firefox
  # include jmeter
  include sequel_pro
  include shiftit
  include xquartz
  include vmware_fusion
  include slate
  include oracle_sqldeveloper
  include swig
  include graphviz

  package {'lnav':
    ensure => present
  }

  package { 'tmux':
    ensure => installed,
  }

  package { 'aspell':
    ensure => installed,
    install_options => ['--with-lang=en']
  }

  package { 'reattach-to-user-namespace':
    ensure => installed,
  }

  package {'ssh-copy-id':
    ensure => installed,
  }

  include people::webdizz::applications::vim
  include people::webdizz::applications::emacs
  include people::webdizz::applications::kdiff3
  include people::webdizz::applications::argouml
  include people::webdizz::applications::mysql
  include people::webdizz::applications::zsh
  include people::webdizz::applications::iterm2
  include people::webdizz::applications::atom

  package { "pstree":
    ensure => present,
  }

  package { "watch":
    ensure => present,
  }

  package { "mtr":
    ensure => present,
  }

}
