class people::webdizz::langs {

  include people::webdizz::langs::ruby
  include people::webdizz::langs::javas
  include people::webdizz::langs::erlang-lang
  include people::webdizz::langs::rust-lang

  package { 'go':}

  package { 'hg':}

  package {'leiningen':}

}
