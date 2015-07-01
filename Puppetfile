# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod "puppet-#{name}", :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.11.0"

# Support for default hiera data in modules

github "module_data", "0.0.3", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "brewcask",    "0.0.6"
github "dnsmasq",     "2.0.1"
github "foreman",     "1.2.0"
github "gcc",         "3.0.2"
github "git",         "2.7.92"
github "homebrew",    "1.13.0"
github "go",          "2.1.0"
github "hub",         "1.4.0"
github "inifile",     "1.1.1", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",       "1.4.4"
github "nodejs",      "4.0.0"
github "openssl",     "1.0.0"
github "phantomjs",   "2.3.0"
github "pkgconfig",   "1.0.0"
github "repository",  "2.3.0"
github "ruby",        "8.5.2"
github "stdlib",      "4.2.1", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",        "1.0.0"
github "xquartz",     "1.2.1"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "skype",              "1.1.0"
github "vagrant",            "3.3.0"
github "virtualbox",         "1.0.13"
github "intellij",           "1.5.1"
github "chrome",             "1.2.0"
github "wget",               "1.0.1"
github "dropbox",            "1.4.1"
github "osx",                "2.8.0"
github "cyberduck",          "1.1.4", :repo => "johnlauck/puppet-cyberduck"
github "mou",                "1.1.3"
github "googledrive",        "1.0.2"
github "shortcat",           "1.1.0"
github "emacs",              "1.4.0",  :repo => "webdizz/puppet-emacs"
github "property_list_key",  "0.1.0"
github 'iterm2',             '1.2.5'
github 'firefox',            '1.2.3'
github 'jmeter',             '0.1.3.1', :repo => 'webdizz/puppet-jmeter'
github 'zsh',                '1.0.0'
github 'zshgitprompt',       '1.0.2'
github 'vim',                '1.0.8', :repo => 'mavcunha/puppet-vim'
github 'sequel_pro',         '1.0.1'
github 'packer',             '1.3.0'#, :repo => 'boxen/puppet-packer'
github 'vmware_fusion',      '1.2.0'
github 'slate',              '1.0.1'
github 'fonts',              '0.0.3'
github "gvm",                "1.0.1", :repo => "Spantree/puppet-gvm"
github "oracle_sqldeveloper","0.0.8", :repo => "danmikita/puppet-oracle-sqldeveloper"
github 'pcre',               '1.0.0'
github 'swig',               '1.0.0'
github 'graphviz',           '1.0.0'
github 'soapui',             '1.1.7', :repo => 'webdizz/puppet-soapui'
github 'karabiner',          '1.0.7'
github 'seil',               '1.0.3'
