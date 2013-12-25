class people::webdizz::tools::ruby {

  $ruby2 = '2.0.0-p353'
  ruby::version { $ruby2:}

  $ruby193 = '1.9.3-p484'
  ruby::version { $ruby193: }

  ruby::gem { "teamocil":
    gem     => 'teamocil',
    ruby    => $ruby2
  }

  ruby::gem { "teamocil193":
    gem     => 'teamocil',
    ruby    => $ruby193
  }

  ruby::gem { "buildr for ${version}":
    gem     => 'buildr',
    ruby    => $ruby193,
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
