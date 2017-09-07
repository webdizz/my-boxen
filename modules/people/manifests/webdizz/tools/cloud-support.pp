class people::webdizz::tools::cloud-support {

  package { 'heroku':
    ensure => '6.14.20'
  }

  class docker-for-mac($version = '17.06.2-ce') {
    package { 'docker-for-mac':
      provider => 'appdmg',
      source   => "https://download.docker.com/mac/beta/Docker.dmg",
    }
  }
  include docker-for-mac

  package { 'kubernetes-cli':
    ensure => '1.7.5'
  }

  package { 'openshift-cli':
    ensure => '3.6.0'
  }

  package { 'minishift':
    ensure => installed,
    provider => 'brewcask'
  }

}