class people::webdizz::applications {

  include skype
  #include vagrant
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
  include jmeter
  include sequel_pro
  include shiftit
  include xquartz
  include vmware_fusion
  include slate
  include oracle_sqldeveloper
  include swig
  include graphviz

  class { 'vagrant':
    version => '1.6.5'
  }

  class smcFanControl {
    package { 'smcFanControl':
      provider => 'compressed_app',
      source   => 'http://www.eidac.de/smcfancontrol/smcfancontrol_2_4.zip'
    }
  }
  include smcFanControl

  class visualVm {
    package { 'VisualVM':
      provider => 'appdmg',
      source => 'https://java.net/projects/visualvm/downloads/download/release138/VisualVM_138.dmg'
    }
  }
  include visualVm

  class filesmanager {
    package { 'filesmanager_0.6.0':
      provider => 'appdmg',
      source   => 'file:///opt/boxen/files-0.6.0.dmg'
    }
  }
  include filesmanager

  class tox {
    package { 'tox':
      provider => 'appdmg',
      source   => 'https://jenkins.libtoxcore.so/job/ToxGUI%20OS%20X/lastSuccessfulBuild/artifact/toxgui.dmg'
    }
  }
  include tox

  package {'lnav':
    ensure => present
  }

  class {'packer':
    version => '0.6.1'
  }

  class { 'intellij':
    edition => 'ultimate',
    version => '13.1.4b'
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
