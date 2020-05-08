#!/bin/sh -

set -e

javac -d classes srcs/java/hello/Main.java
javac -d classes srcs/java/launchers/JSHelloWorldLauncher.java
