class people::webdizz::tools::terminal-support {
  include wget

  package {'tree':}

  package { 'heroku-toolbelt':
    ensure => '3.43.13'
  }

  class docker-for-mac($version = '1.12.0') {
    package { 'docker-for-mac':
      provider => 'appdmg',
      source   => "https://download.docker.com/mac/beta/Docker.dmg",
    }
  }
  include docker-for-mac

  package { 'kubernetes-cli':
    ensure => '1.4.5'
  }

  package { 'openshift-cli':
    ensure => '1.3.1'
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
    ensure => '2.3',
  }

  package { 'aspell':
    ensure => installed,
    install_options => ['--with-lang=en']
  }

  package {'ssh-copy-id':
    ensure => '7.3p1',
  }

  package { 'mas':
    ensure => '1.2.0',
  }

  class plant-uml {
    package {'boxen/brews/plantuml':}
  }
  include plant-uml
}
