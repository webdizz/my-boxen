class people::webdizz::tools::hashicorp-support {

  class {'packer':
    version => '1.0.4'
  }

  class { 'vagrant':
    version => '1.9.8'
  }

  vagrant::plugin { 'vagrant-omnibus':}
  vagrant::plugin { 'vagrant-berkshelf':}
  vagrant::plugin { 'vagrant-hosts':}
  vagrant::plugin { 'landrush':
    prefix => false
  }
}
