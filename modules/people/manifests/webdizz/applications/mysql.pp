class people::webdizz::applications::mysql {

  exec { 'Install MySQL client':
    command     => 'brew install mysql --client-only --universal',
    unless	=> "test -f /opt/boxen/homebrew/bin/mysql"
  }
}
