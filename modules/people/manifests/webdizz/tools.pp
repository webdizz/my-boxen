class people::webdizz::tools {

    include people::webdizz::tools::ruby
    include people::webdizz::tools::java
    include people::webdizz::tools::gvm
    include go
    go::version { '1.1.1': }

}
