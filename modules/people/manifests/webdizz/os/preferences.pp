class people::webdizz::os::preferences {

  #Install fonts
  exec { 'Download Droid Fonts':
    command => 'curl -L http://download.damieng.com/fonts/redistributed/DroidFamily.zip -o /tmp/droid-family.zip && mkdir /tmp/droid-family',
    creates => '/tmp/droid-family.zip',
    unless => "test -f /Users/${::boxen_user}/Library/Fonts/DroidSerif.ttf"
  }

  exec { 'Install Droid Fonts':
    cwd => '/tmp/droid-family',
    command => "unzip /tmp/droid-family.zip && cp /tmp/droid-family/Droid*.ttf /Users/${::boxen_user}/Library/Fonts/ && rm -rf /tmp/droid-*",
    creates => "/Users/${::boxen_user}/Library/Fonts/DroidSerif.ttf",
    onlyif => 'test -f /tmp/droid-family.zip'
  }

########################
## basic system settings
########################

  property_list_key { 'Disable Gatekeeper':
    ensure => present,
    path   => '/var/db/SystemPolicy-prefs.plist',
    key    => 'enabled',
    value  => 'no',
  }

########################
# trackpad
########################

  property_list_key { 'Natural scroll direction':
    ensure     => present,
    path       => "${home}/Library/Preferences/.GlobalPreferences.plist",
    key        => 'com.apple.swipescrolldirection',
    value_type => 'boolean',
    value      => 'true',
  }

  property_list_key { 'Tap to click':
    ensure     => present,
    path       => "${home}/Library/Preferences/.GlobalPreferences.plist",
    key        => 'com.apple.mouse.tapBehavior',
    value_type => 'integer',
    value      => '1',
  }

}
