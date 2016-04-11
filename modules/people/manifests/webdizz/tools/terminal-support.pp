class people::webdizz::tools::terminal-support {
  include wget

  package {'tree':}

  package { 'heroku-toolbelt':
    ensure => '3.42.44'
  }

  package { 'docker':
    ensure => '1.10.3'
  }

  package { 'kubernetes-cli':
    ensure => '1.2.0'
  }

  package { 'openshift-cli':
    ensure => '1.1.4'
  }

  package { 'ansible':
    ensure => '2.0.1.0'
  }

  package { "pstree":
    ensure => present,
  }

  package { "watch":
    ensure => present,
  }

  package { "mtr":
    ensure => present,
  }

  package { 'tmux':
    ensure => installed,
  }

  package { 'aspell':
    ensure => installed,
    install_options => ['--with-lang=en']
  }

  package {'ssh-copy-id':
    ensure => installed,
  }

  class plant-uml {
    package {'boxen/brews/plantuml':}
  }
  include plant-uml
}
