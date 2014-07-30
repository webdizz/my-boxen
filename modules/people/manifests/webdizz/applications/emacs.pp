class people::webdizz::applications::emacs {

    $home = "/Users/${::boxen_user}"

    include emacs
    package {'emacs':
	ensure => 'present',
	
    }

    exec { 'Install Emacs Prelude':
        command     => 'curl -L http://git.io/epre | sh',
        unless	=> "test -d ${home}/.emacs.d"
    }

}
