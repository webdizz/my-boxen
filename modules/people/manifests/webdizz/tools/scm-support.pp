class people::webdizz::tools::scm-support {
  package { 'hg':
    ensure => '4.2.2'
  }

  package { 'kdiff3':
    provider => 'brewcask'
  }
}
