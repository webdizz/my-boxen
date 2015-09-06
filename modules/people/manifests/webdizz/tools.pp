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
  # class smcFanControl {
  #   package { 'smcFanControl':
  #     provider => 'compressed_app',
  #     source   => 'http://www.eidac.de/smcfancontrol/smcfancontrol_2_5_2.zip',
  #     ensure => '2.5.2'
  #   }
  # }
  # include smcFanControl

  class visualVm {
    package { 'VisualVM':
      provider => 'appdmg',
      source => 'https://java.net/projects/visualvm/downloads/download/release138/VisualVM_138.dmg'
    }
  }
  include visualVm

  package {'tsung':
    ensure => '1.5.1',
  }

  package {'gnuplot':
    ensure => '5.0.0',
  }

}
