class people::webdizz::applications::kdiff3 {

  package { 'kdiff3':
    provider   => 'appdmg',
    source => 'http://kent.dl.sourceforge.net/project/kdiff3/kdiff3/0.9.97/kdiff3_0.9.97_MacOS_64bit.dmg'
  }
}
