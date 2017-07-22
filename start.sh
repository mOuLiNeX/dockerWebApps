#!/bin/sh

exec java $JAVA_OPTS -DPROD_MODE=true -jar webapp.jar
