class people::webdizz::tools::android-support {
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
