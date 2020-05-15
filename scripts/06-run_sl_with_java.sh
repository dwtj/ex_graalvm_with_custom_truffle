#!/bin/sh -

set -e

PROJECT_ROOT_DIR="$(pwd)"
SIMPLETOOL_JAR="${PROJECT_ROOT_DIR}/external/simpletool/target/simpletool-20.0.0.jar"

PROJECT_ROOT_DIR="$(pwd)"
SIMPLELANGUAGE_JAR="${PROJECT_ROOT_DIR}/external/simplelanguage/language/target/simplelanguage.jar"
SIMPLELANGUAGE_LAUNCHER_JAR="${PROJECT_ROOT_DIR}/external/simplelanguage/launcher/target/sl-launcher.jar"
SIMPLELANGUAGE_LAUNCHER_CLASS_NAME="com.oracle.truffle.sl.launcher.SLMain"
SIMPLELANGUAGE_PROGRAM="${PROJECT_ROOT_DIR}/srcs/sl/HelloWorld.sl"

java \
    -Dtruffle.class.path.trace=true \
    "-Dtruffle.class.path.append=${SIMPLELANGUAGE_JAR}" \
    -cp "$SIMPLELANGUAGE_LAUNCHER_JAR" \
    "$SIMPLELANGUAGE_LAUNCHER_CLASS_NAME" \
    "$SIMPLELANGUAGE_PROGRAM"