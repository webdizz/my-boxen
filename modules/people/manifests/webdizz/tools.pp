class people::webdizz::tools {

    include people::webdizz::tools::ruby
    include people::webdizz::tools::java
    include people::webdizz::tools::gvm

    package { "go":
          ensure => '1.4',
    }

}
