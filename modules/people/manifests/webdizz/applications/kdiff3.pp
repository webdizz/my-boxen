class people::webdizz::applications::kdiff3 {

  package { 'Kdiff3':
    provider   => 'pkgdmg',
    source => 'http://cznic.dl.sourceforge.net/project/kdiff3/kdiff3/0.9.98/kdiff3-0.9.98-MacOSX-64Bit.dmg'
  }
}
