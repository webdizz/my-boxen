class people::webdizz::tools::hashicorp-support {

  include packer

  class { 'vagrant':
    version => '1.8.5'
  }

  vagrant::plugin { 'vagrant-omnibus':}
  vagrant::plugin { 'vagrant-berkshelf':}
  vagrant::plugin { 'vagrant-hosts':}
  vagrant::plugin { 'landrush':
    prefix => false
  }

  package {'otto':}
}
