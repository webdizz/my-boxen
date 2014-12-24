class people::webdizz::tools {

  include people::webdizz::tools::gvm
  include people::webdizz::tools::vagrants

  class {'packer':
    version => '0.7.5'
  }

  class smcFanControl {
    package { 'smcFanControl':
      provider => 'compressed_app',
      source   => 'http://www.eidac.de/smcfancontrol/smcfancontrol_2_4.zip'
    }
  }
  include smcFanControl

  class visualVm {
    package { 'VisualVM':
      provider => 'appdmg',
      source => 'https://java.net/projects/visualvm/downloads/download/release138/VisualVM_138.dmg'
    }
  }
  include visualVm

}
