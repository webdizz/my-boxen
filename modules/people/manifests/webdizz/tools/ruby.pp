class people::webdizz::tools::ruby {

    include ruby::1_8_7

    $ruby_version = '1.8.7'

    ruby::gem { "teamocil":
        gem     => 'teamocil',
        ruby    => $ruby_version
    }

    exec { 'update ruby_gems':
        command     => 'gem update --system',
    }

    ruby::gem { "buildr":
        gem     => 'buildr',
        ruby    => $ruby_version
    }
}
