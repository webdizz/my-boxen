class people::webdizz::tools::hashicorp-support {

  class {'packer':
    version => '0.12.0'
  }
  
  class { 'vagrant':
    version => '1.8.7'
  }

  vagrant::plugin { 'vagrant-omnibus':}
  vagrant::plugin { 'vagrant-berkshelf':}
  vagrant::plugin { 'vagrant-hosts':}
  vagrant::plugin { 'landrush':
    prefix => false
  }

  package {'otto':}
}
