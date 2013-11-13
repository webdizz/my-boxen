class people::webdizz::tools::ruby {

  include ruby::2_0_0_p247
  include ruby::1_9_3_p448

  $ruby200 = '2.0.0-p247'

  ruby::gem { "teamocil":
    gem     => 'teamocil',
    ruby    => $ruby_version
  }

  $ruby193 = '1.9.3-p448'
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
