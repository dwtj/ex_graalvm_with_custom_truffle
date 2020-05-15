#!/bin/sh -

set -e

javac -d classes srcs/java/hello/Main.java
javac -d classes srcs/java/launchers/JsHelloWorldLauncher.java
javac -d classes srcs/java/launchers/JsToJavaHelloWorldLauncher.java
