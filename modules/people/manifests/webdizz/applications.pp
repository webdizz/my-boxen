class people::webdizz::applications {
    require ruby

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

    class { 'ruby::global':
        version => '1.8.7'
    }
    ruby::gem { "teamocil":
        gem     => 'teamocil',
        ruby    => $version
    }

}
