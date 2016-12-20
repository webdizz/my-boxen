class people::webdizz::langs::js-lang {

  $home = "/Users/${::boxen_user}"
  $projects = "${home}/dev/projects"

  # Set the global default node (auto-installs it if it can)
  class { 'nodejs::global':
    version => '5.10.1'
  }

  # ensure a certain node version is used in a dir
  nodejs::local { "${projects}/cand.im/":
    version => '6.5.0'
  }
  # ensure a npm module is installed for a certain node version
  # note, you can't have duplicate resource names so you have to name like so
  # $version = "0.12"
  # npm_module { "bower for ${version}":
  #   module       => 'bower',
  #   version      => '~> 1.4.1',
  #   node_version => $version,
  # }
}
