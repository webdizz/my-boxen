class people::webdizz {

    $home     = "/Users/${::boxen_user}"
    $dev       = "${home}/dev"

    file { $dev:
        ensure  => directory
    }

    include java
    include people::webdizz::applications
    include people::webdizz::dotfiles
    include people::webdizz::private_dotfiles
    include people::webdizz::os::preferences

}
