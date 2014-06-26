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


}
