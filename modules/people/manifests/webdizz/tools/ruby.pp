class people::webdizz::tools::ruby {

  include ruby::2_0_0
  include ruby::1_9_3

  $ruby_version = '2.0.0'

  ruby::gem { "teamocil":
    gem     => 'teamocil',
    ruby    => $ruby_version
  }

  $version = "1.9.3"
  ruby::gem { "buildr for ${version}":
    gem     => 'buildr',
    ruby    => $version,
    version => '= 1.4.14'
  }

  # Installing rbenv plugin
  ruby::plugin  { 'rbenv-vars':
    ensure => 'v1.2.0',
    source  => 'sstephenson/rbenv-vars'
  }

  ruby::plugin  { 'rbenv-bundle-exec':
    ensure => 'master',
    source  => 'maljub01/rbenv-bundle-exec'
  }
}
