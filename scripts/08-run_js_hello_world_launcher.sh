#!/bin/sh -

set -e

PROJECT_ROOT="$(pwd)"
CLASS_PATH="${PROJECT_ROOT}/classes"

java \
    -Dtruffle.class.path.trace=true \
    -cp "$CLASS_PATH" \
    launchers.JSHelloWorldLauncher