class people::webdizz::applications::atom {

    $home = "/Users/${::boxen_user}"

    include atom

    atom::package { 'linter': }
    atom::package { 'build': }
    atom::package { 'sublime-style-column-selection': }
    atom::package { 'highlight-column': }
    atom::package { 'language-asciidoc': }
    atom::package { 'language-docker': }
    atom::package { 'pretty-json': }
    atom::package { 'auto-indent': }
    atom::package { 'hyperclick': }
    atom::package { 'intentions': }

    atom::package { 'language-plantuml': }
    atom::package { 'plantuml': }

    # Puppet
    atom::package { 'language-puppet': }
    atom::package { 'linter-puppet': }

    # Groovy
    atom::package { 'atom-grails': }
    atom::package { 'language-gradle': }
    atom::package { 'language-groovy': }

    # Ruby
    atom::package { 'autocomplete-ruby': }

    # Elixir
    atom::package { 'autocomplete-elixir': }
    atom::package { 'elixir-cmd': }
    atom::package { 'erl-indent': }
    atom::package { 'language-elixir': }
    atom::package { 'linter-elixirc': }

    # Go
    atom::package { 'go-plus': }

    # Java
    atom::package { 'java-importer': }
    atom::package { 'linter-javac': }

    # Rust
    atom::package { 'language-rust': }
    atom::package { 'linter-rust': }
    atom::package { 'rust-api-docs-helper': }

    # Clojure
    atom::package { 'linter-clojure': }

}
