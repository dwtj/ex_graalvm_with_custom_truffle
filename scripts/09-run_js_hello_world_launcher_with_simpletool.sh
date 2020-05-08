#!/bin/sh -

set -e

PROJECT_ROOT_DIR="$(pwd)"
CLASS_PATH="${PROJECT_ROOT_DIR}/classes"
SIMPLETOOL_JAR="${PROJECT_ROOT_DIR}/external/simpletool/target/simpletool-20.0.0.jar"

java \
    -Dtruffle.class.path.trace=true \
    "-Dtruffle.class.path.append=${SIMPLETOOL_JAR}" \
    -Dpolyglot.simple-code-coverage=true \
    -cp "$CLASS_PATH" \
    launchers.JSHelloWorldLauncher
