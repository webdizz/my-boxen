class people::webdizz::tools::terminal-support {
  include wget

  package {'tree':}

  package { 'heroku-toolbelt':
    ensure => '5.6.28-2643c0a'
  }

  class docker-for-mac($version = '17.03.0') {
    package { 'docker-for-mac':
      provider => 'appdmg',
      source   => "https://download.docker.com/mac/beta/Docker.dmg",
    }
  }
  include docker-for-mac

  package { 'kubernetes-cli':
    ensure => '1.5.3'
  }

  package { 'openshift-cli':
    ensure => '1.4.1'
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
    ensure => '0.87',
  }

  package { 'tmux':
    ensure => '2.3_2',
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
