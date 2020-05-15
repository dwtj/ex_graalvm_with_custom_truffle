#!/bin/sh -

PROJECT_ROOT_DIR="$(pwd)"
JAVA_CLASS_PATH_DIR="${PROJECT_ROOT_DIR}/classes"
SIMPLETOOL_JAR="${PROJECT_ROOT_DIR}/external/simpletool/target/simpletool-20.0.0.jar"

java \
    --class-path "$JAVA_CLASS_PATH_DIR" \
    "-Dtruffle.class.path.append=${SIMPLETOOL_JAR}" \
    launchers.JsToJavaHelloWorldLauncher