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
        notify     => Exec['Restart the Dock'],
    }

    property_list_key { 'Tap to click':
        ensure     => present,
        path       => "${home}/Library/Preferences/.GlobalPreferences.plist",
        key        => 'com.apple.mouse.tapBehavior',
        value_type => 'integer',
        value      => '1',
        notify     => Exec['Restart the Dock'],
    }

    ########################
    # display
    ########################

    property_list_key { 'Top Right Hotcorner - Screen Saver':
        ensure     => present,
        path       => "${home}/Library/Preferences/com.apple.dock.plist",
        key        => 'wvous-tr-corner',
        value      => 10,
        value_type => 'integer',
        notify     => Exec['Restart the Dock'],
    }

    property_list_key { 'Top Right Hotcorner - Screen Saver - modifier':
        ensure     => present,
        path       => "${home}/Library/Preferences/com.apple.dock.plist",
        key        => 'wvous-tr-modifier',
        value      => 0,
        value_type => 'integer',
        notify     => Exec['Restart the Dock'],
      }

    exec { 'Restart the Dock':
        command     => '/usr/bin/killall -HUP Dock',
        refreshonly => true,
    }

    file { 'Dock Plist':
        ensure  => file,
        require => [
                    Property_list_key['Natural scroll direction'],
                    Property_list_key['Tap to click'],
                    Property_list_key['Top Right Hotcorner - Screen Saver'],
                    Property_list_key['Top Right Hotcorner - Screen Saver - modifier'],
                   ],
        path    => "${my_homedir}/Library/Preferences/com.apple.dock.plist",
        mode    => '0600',
        notify     => Exec['Restart the Dock'],
    }
}
