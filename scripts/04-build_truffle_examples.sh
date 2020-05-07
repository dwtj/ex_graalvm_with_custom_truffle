#!/bin/sh -

set -e

PROJECT_ROOT_DIR="$(pwd)"

cd "${PROJECT_ROOT_DIR}/external/simpletool"
mvn package

cd "$PROJECT_ROOT_DIR/external/simplelanguage"
mvn package
