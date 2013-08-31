class people::webdizz::applications {

    include skype
    include vagrant
    include virtualbox
    include intellij
    include chrome
    include wget
    include dropbox
    include cyberduck
    include mou
    include googledrive
    include shortcat
    include emacs

    package { 'tmux':
        ensure => installed,
    }

    include people::webdizz::applications::vim
}
