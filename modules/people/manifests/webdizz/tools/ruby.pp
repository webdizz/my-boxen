class people::webdizz::tools::ruby {

  $ruby2 = '2.0.0-p481'
  ruby::version { $ruby2:}

  $ruby193 = '1.9.3-p547'
  ruby::version { $ruby193: }

  ruby_gem { "teamocil":
    gem     => 'teamocil',
    ruby_version    => $ruby2,
  }

  ruby_gem { "teamocil193":
    gem     => 'teamocil',
    ruby_version    => $ruby193,
  }

  ruby_gem { "buildr for ${version}":
    gem     => 'buildr',
    ruby_version    => $ruby193,
    version=> '= 1.4.17',
  }
}
