class people::webdizz::langs::java-lang {
  class { 'java': update_version => '79', }
  android::version { '22':
    options => [
      'platform',
      'add_on',
      'tools',
      'platform-tools',
      'system_image',
      'build-tools'
    ]
  }
}
