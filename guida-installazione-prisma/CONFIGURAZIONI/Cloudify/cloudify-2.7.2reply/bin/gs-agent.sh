#!/bin/bash
#
# This script is a wrapper around the "gs" script, and provides the command line instruction
# to start the GigaSpaces Grid Service Monitor and autonomous Lookup service
# 		GSA_JAVA_OPTIONS 	- Extended java options that are proprietary defined  for GSA such as heap size, system properties or other JVM arguments that can be passed to the JVM command line. 
#							- These settings can be overridden externally to this script.

# GSA_JAVA_OPTIONS=; export GSA_JAVA_OPTIONS

`dirname $0`/gs.sh start \"GSA\" $*
