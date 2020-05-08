#!/bin/sh -

set -e

PROJECT_ROOT="$(pwd)"
SIMPLELANGUAGE_JAR="${PROJECT_ROOT}/external/simplelanguage/language/target/simplelanguage.jar"

polyglot \
    --jvm \
    --vm.Dtruffle.class.path.trace=true \
    "--vm.Dtruffle.class.path.append=${SIMPLELANGUAGE_JAR}" \
    --language sl \
    srcs/sl/HelloWorld.sl

# Note(dwtj): One can also use `--file sl:...` instead of `--language sl`.