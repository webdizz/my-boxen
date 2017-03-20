class people::webdizz::applications {

  include skype
  include chrome
  include dropbox
  include cyberduck
  include mou
  include googledrive
  include shortcat
  include firefox
  include xquartz
  include vmware_fusion
  include oracle_sqldeveloper
  include swig
  include graphviz

  include people::webdizz::applications::vim-support
  include people::webdizz::applications::emacs
  include people::webdizz::applications::argouml
  include people::webdizz::applications::mysql
  include people::webdizz::applications::zsh
  include people::webdizz::applications::iterm2
  include people::webdizz::applications::atom

  include virtualbox

  package {'lnav':
    ensure => present
  }

  package { 'reattach-to-user-namespace':
    ensure => installed,
  }

  package { 'xmind':
    ensure => '8-update1',
    provider => 'brewcask'
  }

  package { 'kindle':
    provider => 'brewcask'
  }

  package { 'mattr-slate':
    provider => 'brewcask'
  }

  package { 'sequel-pro':
    provider => 'brewcask'
  }

  package { 'archi':
    provider => 'brewcask'
  }

  package { 'postico':
    ensure => installed,
    provider => 'brewcask'
  }

  package { 'visual-studio-code':
    ensure => installed,
    provider => 'brewcask'
  }

  package { 'soapui':
    ensure => installed,
    provider => 'brewcask'
  }

}
