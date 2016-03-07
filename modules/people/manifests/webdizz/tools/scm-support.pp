class people::webdizz::tools::scm-support {
  package { 'hg':
    ensure => '3.7.2'
  }

  package { 'kdiff3': }
}
