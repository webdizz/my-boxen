class people::webdizz::tools {

  include people::webdizz::tools::gvm
  include people::webdizz::tools::vagrants
  include people::webdizz::tools::scala
  include brewcask

  class {'packer':
    version => '0.8.6'
  }

  package { 'smcfancontrol':
    ensure => '2.5.2',
    provider => 'brewcask'
  }

  package { 'visualvm':
    ensure => '138',
    provider => 'brewcask'
  }

    package { 'slack':
      provider => 'brewcask'
    }

  package {'tsung':
    ensure => '1.5.1',
  }

  package {'gnuplot':
    ensure => '5.0.0',
  }

}
