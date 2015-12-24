class people::webdizz::tools {

  include people::webdizz::tools::gvm
  include people::webdizz::tools::vagrants
  include people::webdizz::tools::scala
  include brewcask

  class {'packer':
    version => '0.8.6'
  }

  package { 'smcfancontrol':
    provider => 'brewcask'
  }

  class visualVm {
    package { 'VisualVM':
      provider => 'appdmg',
      source => 'https://java.net/projects/visualvm/downloads/download/release138/VisualVM_138.dmg'
    }
  }
  include visualVm

  package {'tsung':}

  package {'otto':}

  package {'gnuplot':}

  package {'tree':}

  package { 'xmind':
    provider => 'brewcask'
  }

  package { 'kindle':
    provider => 'brewcask'
  }

  package { 'heroku-toolbelt':}

  package { 'kdiff3': }

  package { 'archi':
    provider => 'brewcask'
  }

}
