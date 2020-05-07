#!/bin/sh -

PROJECT_ROOT_DIR=$(pwd)
SIMPLETOOL_JAR="${PROJECT_ROOT_DIR}/external/simpletool/target/simpletool-20.0.0.jar"

# Q(dwtj): What does `--jvm` do? It seems to be required.
polyglot --jvm "--vm.Dtruffle.class.path.append=${SIMPLETOOL_JAR}" --simple-code-coverage --file js:srcs/js/hello.js