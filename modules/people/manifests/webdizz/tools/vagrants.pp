class people::webdizz::tools::vagrants {

  class { 'vagrant': }

  vagrant::plugin { 'vagrant-omnibus':}
  vagrant::plugin { 'vagrant-berkshelf':}
  vagrant::plugin { 'vagrant-hosts':}
    license => 'file:///Users/webdizz/Documents/vagrant_license.lic'
  }

}
