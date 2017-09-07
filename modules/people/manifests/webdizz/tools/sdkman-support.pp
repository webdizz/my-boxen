class people::webdizz::tools::sdkman-support {
  include sdkman

  sdkman::groovy { '2.4.12': }

  sdkman::gradle { '4.1': }
}
