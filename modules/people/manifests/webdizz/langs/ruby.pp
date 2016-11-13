class people::webdizz::langs::ruby {

  $ruby2 = '2.3.0'
  ruby::version { $ruby2:}

  ruby_gem { "teamocil":
    gem     => 'teamocil',
    ruby_version    => $ruby2,
  }

  ruby_gem { "travis":
    gem     => 'travis',
    ruby_version    => $ruby2,
  }
  
  ruby_gem { "rsense":
    gem     => 'rsense',
    ruby_version    => $ruby2,
  }
}
