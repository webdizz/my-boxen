class people::webdizz::tools::hashicorp-support {

  class {'packer':
    version => '1.0.3'
  }

  class { 'vagrant':
    version => '1.9.7'
  }

  vagrant::plugin { 'vagrant-omnibus':}
  vagrant::plugin { 'vagrant-berkshelf':}
  vagrant::plugin { 'vagrant-hosts':}
  vagrant::plugin { 'landrush':
    prefix => false
  }
}
