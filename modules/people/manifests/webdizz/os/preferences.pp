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
  ## basic#  system settings
  # ########################

  class osx::global::key_repeat_delay($delay = 35) {
    boxen::osx_defaults { 'key repeat delay':
      domain => 'NSGlobalDomain',
      key    => 'InitialKeyRepeat',
      value  => $delay,
      user   => 'root'
    }
  }

  class { 'osx::global::key_repeat_delay':}

  class osx::global::natural_mouse_scrolling($enabled = true) {
    boxen::osx_defaults { 'Disable natural mouse scrolling':
      ensure => present,
      domain => 'NSGlobalDomain',
      key    => 'com.apple.swipescrolldirection',
      type   => 'boolean',
      value  => $enabled,
      user   => 'root';
    }
  }
  class { 'osx::global::natural_mouse_scrolling':
    enabled => false
  }

  class { 'osx::universal_access::cursor_size':
    zoom => 2
  }

  class { 'osx::dock::icon_size':
    size => 20
  }

  class osx::global::enable_keyboard_control_access {
    boxen::osx_defaults { 'Enable full keyboard access for all controls':
      ensure => present,
      domain => 'NSGlobalDomain',
      key    => 'AppleKeyboardUIMode',
      value  => 3,
      user   => 'root';
    }
  }
  class {'osx::global::enable_keyboard_control_access':}

  class osx::global::expand_print_dialog {
    boxen::osx_defaults { 'Expand print panel by default':
      user   => 'root',
      key    => 'PMPrintingExpandedStateForPrint',
      domain => 'NSGlobalDomain',
      value  => true;
    }
  }
  class {'osx::global::expand_print_dialog':}

  include osx::finder::empty_trash_securely
  include osx::universal_access::enable_scrollwheel_zoom
  include osx::universal_access::ctrl_mod_zoom
  include osx::finder::unhide_library
  include osx::no_network_dsstores
  include osx::software_update

  # ########################
  # # trackpad
  # ########################
  class osx::natural_scroll_direction {
    boxen::osx_defaults { 'Natural scroll direction':
      user   => $::boxen_user,
      domain => 'com.apple.swipescrolldirection',
      key    => 'closeViewScrollWheelToggle',
      value  => true;
    }
  }
  class {'osx::natural_scroll_direction':}

  class osx::tap_to_click {
    boxen::osx_defaults { 'Tap to Click':
      user   => $::boxen_user,
      domain => 'com.apple.mouse.tapBehavior',
      key    => 'closeViewScrollWheelToggle',
      value  => 1;
    }
  }
  class {'osx::tap_to_click':}

  # property_list_key { 'Top Right Hotcorner - Screen Saver - modifier':
  #     ensure     => present,
  #     path       => "${home}/Library/Preferences/com.apple.dock.plist",
  #     key        => 'wvous-tr-modifier',
  #     value      => 0,
  #     value_type => 'integer',
  #     notify     => Exec['Restart the Dock'],
  #   }

  class osx::show_remaining_battery_in_percents {
    boxen::osx_defaults { 'Show remaining battery in %':
      ensure => present,
      user   => $::boxen_user,
      domain => "${home}/Library/Preferences/com.apple.menuextra.battery.plist",
      key    => 'ShowPercent',
      value  => 'YES';
    }
  }
  class {'osx::show_remaining_battery_in_percents':}


  # property_list_key { 'Show remaining battery in %':
  #     ensure     => present,
  #     path       => "${home}/Library/Preferences/com.apple.menuextra.battery.plist",
  #     key        => 'ShowPercent',
  #     value      => 'YES',
  #     value_type => 'string'
  # }

  # property_list_key { 'Disable the “Are you sure you want to open this application?” dialog':
  #   ensure     => present,
  #   path       => "${home}/Library/Preferences/com.apple.LaunchServices",
  #   key        => 'LSQuarantine',
  #   value      => false,
  #   value_type => 'boolean'
  # }

  # property_list_key { 'Require password immediately after sleep or screen saver begins':
  #   ensure     => present,
  #   path       => "${home}/Library/Preferences/com.apple.screensaver",
  #   key        => 'askForPassword',
  #   value      => 1,
  #   value_type => 'integer'
  # }

  # property_list_key { 'Require password immediately after sleep or screen saver begins with 0 delay':
  #   ensure     => present,
  #   path       => "${home}/Library/Preferences/com.apple.screensaver",
  #   key        => 'askForPasswordDelay',
  #   value      => 0,
  #   value_type => 'integer'
  # }

  # exec { 'Restart the Dock':
  #     command     => '/usr/bin/killall -HUP Dock',
  #     refreshonly => true,
  # }

  # file { 'Dock Plist':
  #     ensure  => file,
  #     require => [
                    #                 Property_list_key['Natural scroll direction'],
                    #                 Property_list_key['Tap to click'],
                    #                 Property_list_key['Top Right Hotcorner - Screen Saver'],
                    #                 Property_list_key['Top Right Hotcorner - Screen Saver - modifier'],
                    #                ],
  #     path    => "${my_homedir}/Library/Preferences/com.apple.dock.plist",
  #     mode    => '0600',
  #     notify     => Exec['Restart the Dock'],
  # }

}
