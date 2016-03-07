class people::webdizz::tools {

  include people::webdizz::tools::gvm
  include people::webdizz::tools::vagrant-support
  include people::webdizz::tools::scala
  include brewcask
  include packer
  
  package { 'hg':}

  package { 'smcfancontrol':
    provider => 'brewcask'
  }

  package { 'visualvm':
    provider => 'brewcask'
  }

  package { 'slack':
    provider => 'brewcask'
  }

  package { 'viber':
    provider => 'brewcask'
  }

  package { 'wireshark':
    provider => 'brewcask'
  }

  package { 'djview':
    provider => 'brewcask'
  }

  package { 'joinme':
    provider => 'brewcask'
  }

  package { 'turbo-boost-switcher':
    provider => 'brewcask'
  }

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
  package { 'docker': }
  package { 'kubernetes-cli': }
  package { 'ansible': }

  package { 'archi':
    provider => 'brewcask'
  }

}
