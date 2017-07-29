class people::webdizz::tools::terminal-support {

  package { 'wget':
    # provider => 'brewcask'
  }

  package {'tree':}

  package { 'heroku-toolbelt':
    ensure => '6.13.5'
  }

  class docker-for-mac($version = '17.03.0') {
    package { 'docker-for-mac':
      provider => 'appdmg',
      source   => "https://download.docker.com/mac/beta/Docker.dmg",
    }
  }
  include docker-for-mac

  package { 'kubernetes-cli':
    ensure => '1.7.1'
  }

  package { 'openshift-cli':
    ensure => '1.5.1'
  }

  package { 'ansible19':
    ensure => present
  }

  package { "pstree":
    ensure => present,
  }

  package { "watch":
    ensure => present,
  }

  package { "mtr":
    ensure => '0.92',
  }

  package { 'tmux':
    ensure => '2.5',
  }

  package { 'aspell':
    ensure => installed,
    install_options => ['--with-lang=en']
  }

  package {'ssh-copy-id':
    ensure => '7.3p1',
  }

  package { 'mas':
    ensure => '1.3.1',
  }

  # package { 'plantuml':
  #   ensure => installed,
  # }

}
