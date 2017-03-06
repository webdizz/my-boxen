class people::webdizz::tools::scm-support {
  package { 'hg':
    ensure => '4.1.1'
  }

  package { 'kdiff3':
    provider => 'brewcask'
  }
}
