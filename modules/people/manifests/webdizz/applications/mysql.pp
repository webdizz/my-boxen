class people::webdizz::applications::mysql {

  # exec { 'Install Mariadb client':
  #   command => 'brew install mariadb --env=std',
  #   unless	=> "test -f /opt/boxen/homebrew/bin/mariadb"
  # }

  package { 'mycli':
    ensure => installed,
  }
}
