class people::webdizz {

  $home     = "/Users/${::boxen_user}"
  $dev       = "${home}/dev"

  file { $dev:
    ensure  => directory
  }

  include brewcask

  include people::webdizz::langs
  include people::webdizz::tools
  include people::webdizz::applications
  include people::webdizz::dotfiles
  include people::webdizz::private_dotfiles
  include people::webdizz::os::preferences

}
