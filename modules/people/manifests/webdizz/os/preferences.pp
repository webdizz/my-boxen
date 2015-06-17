class people::webdizz::os::preferences {


  include fonts
  include fonts::adobe
  include fonts::google

  ########################
  ## basic#  system settings
  # ########################


  include osx::global::key_repeat_delay
  include osx::global::key_repeat_rate
  include osx::global::natural_mouse_scrolling
  include osx::global::enable_standard_function_keys
  include osx::global::expand_print_dialog
  include osx::global::tap_to_click
  include osx::global::expand_save_dialog
  include osx::global::enable_keyboard_control_access
  include osx::global::disable_remote_control_ir_receiver
  include osx::global::disable_autocorrect

  class { 'osx::universal_access::cursor_size':
    zoom => 2
  }

  class { 'osx::dock::icon_size':
    size => 20
  }

  class { 'osx::dock::position':
    position => 'bottom'
  }

  class { 'osx::dock::hot_corners':
    top_right => "Start Screen Saver",
    bottom_left => "Mission Control"
  }
  include osx::dock::autohide
  include osx::dock::clear_dock
  include osx::dock::hide_indicator_lights

  include osx::finder::empty_trash_securely
  include osx::finder::unhide_library
  include osx::finder::show_external_hard_drives_on_desktop
  include osx::finder::show_mounted_servers_on_desktop
  include osx::finder::enable_quicklook_text_selection

  include osx::universal_access::enable_scrollwheel_zoom
  include osx::universal_access::ctrl_mod_zoom
  include osx::no_network_dsstores
  include osx::software_update
  include osx::disable_app_quarantine

  include karabiner
  # launch and add login-item
  include karabiner::login_item
  # set the contents of the private.xml file.
  karabiner::private_xml{ 'private.xml':
    content => "
<root>
<item>
    <name>Remap Caps Lock to Hyper</name>
    <appendix>OS X doesn't have a Hyper. This maps Left Control to Control + Shift + Option + Command.</appendix>

    <identifier>caps_lock_to_hyper</identifier>

    <autogen>
        --KeyToKey--
        KeyCode::F19,

        KeyCode::COMMAND_L,
        ModifierFlag::OPTION_L | ModifierFlag::SHIFT_L | ModifierFlag::CONTROL_L
    </autogen>
</item>
</root>
"
  }

  karabiner::enable { 'remap.caps_lock_to_hyper':}

  include seil
  # add seil to login items:
  include seil::login_item

  seil::map { 'capslock': value => 80 }

}
