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

  package { 'visualvm':
    provider => 'brewcask'
  }

    package { 'slack':
      provider => 'brewcask'
    }

    package { 'xmind':
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

    package { 'kindle':
      provider => 'brewcask'
    }

    package { 'turbo-boost-switcher':
      provider => 'brewcask'
    }

  package {'tsung':
    ensure => '1.5.1',
  }

  package {'gnuplot':
    ensure => '5.0.0',
  }

}
