class people::webdizz::applications::atom {

    $home = "/Users/${::boxen_user}"

    include atom

    atom::package { 'linter': }
    atom::package { 'build': }
    atom::package { 'sublime-style-column-selection': }

}
