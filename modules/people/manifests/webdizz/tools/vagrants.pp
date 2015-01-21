class people::webdizz::tools::vagrants {

  class { 'vagrant':
    version => '1.7.2'
  }

  vagrant::plugin { 'vagrant-omnibus':}
  vagrant::plugin { 'vagrant-berkshelf':}
  vagrant::plugin { 'vagrant-hostmaster':}
  vagrant::plugin { 'vagrant-hosts':}
  vagrant::plugin { 'vagrant-vmware-fusion':
    license => 'file:///Users/webdizz/Documents/vagrant_license.lic'
  }

}
