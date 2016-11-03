class people::webdizz::tools {

  include people::webdizz::tools::sdkman-support
  include people::webdizz::tools::hashicorp-support
  include people::webdizz::tools::scm-support
  include people::webdizz::tools::terminal-support

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

  package {'gnuplot':
    ensure => '5.0.5'
  }

}
