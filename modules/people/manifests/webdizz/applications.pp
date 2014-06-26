class people::webdizz::applications {

  include skype
  include vagrant
  include virtualbox
  include chrome
  include wget
  include dropbox
  include cyberduck
  include mou
  include googledrive
  include shortcat
  include iterm2::stable
  include firefox
  #include jmeter
  include sequel_pro
  include shiftit
  include xquartz
  include vmware_fusion
  include slate

  class {'packer':
    version => '0.6.0'
  }

  class { 'intellij':
    edition => 'ultimate',
    version => '13.1.1'
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

  include people::webdizz::applications::vim
  include people::webdizz::applications::emacs
  include people::webdizz::applications::kdiff3
  include people::webdizz::applications::argouml
  include people::webdizz::applications::mysql
  include people::webdizz::applications::zsh
  include people::webdizz::applications::iterm2

  vagrant::plugin { 'vagrant-omnibus':}
  vagrant::plugin { 'vagrant-berkshelf':}
  vagrant::plugin { 'vagrant-vmware-fusion':
    license => 'file:///Users/webdizz/Documents/vagrant_license.lic'
  }
}
