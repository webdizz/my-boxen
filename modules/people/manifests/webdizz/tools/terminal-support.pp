class people::webdizz::tools::terminal-support {

  package { 'wget':
    # provider => 'brewcask'
  }

  package {'tree':}

  package { 'ansible':
    ensure => '2.3.2.0'
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
    ensure => '7.5p1',
  }

  package { 'mas':
    ensure => '1.3.1',
  }

  # package { 'plantuml':
  #   ensure => installed,
  # }

}
