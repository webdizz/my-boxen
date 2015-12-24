class people::webdizz::langs::ruby {

  $ruby2 = '2.0.0'
  ruby::version { $ruby2:}

  $ruby21 = '2.1.2'
  ruby::version { $ruby21:}

  ruby_gem { "teamocil":
    gem     => 'teamocil',
    ruby_version    => $ruby2,
  }

  ruby_gem { "teamocil21":
    gem     => 'teamocil',
    ruby_version    => $ruby21,
  }

  ruby_gem { "travis":
    gem     => 'travis',
    ruby_version    => $ruby2,
  }
}
