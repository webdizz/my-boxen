class people::webdizz::tools::sdkman-support {
  include sdkman

  sdkman::groovy { '2.4.6': }

  sdkman::gradle { '2.11': }
}
