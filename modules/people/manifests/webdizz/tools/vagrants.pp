class people::webdizz::tools::vagrants {

  class { 'vagrant':
    version => '1.8.1'
  }

  vagrant::plugin { 'vagrant-omnibus':}
  vagrant::plugin { 'vagrant-berkshelf':}
  vagrant::plugin { 'vagrant-hosts':}
  vagrant::plugin { 'landrush':}
}
