@echo off
rem This script is a wrapper around the "gs" script, and provides the command line instruction
rem to start the GigaSpaces Grid Service Monitor and autonomous Lookup service
rem   GSA_RESERVATION_ID - A unique string that is later available through the admin API
rem 	GSA_JAVA_OPTIONS 	- Extended java options that are proprietary defined  for GSA such as heap size, system properties or other JVM arguments that can be passed to the JVM command line. 
rem							- These settings can be overridden externally to this script.

title GigaSpaces Technologies Service Grid : GSA
rem set GSA_JAVA_OPTIONS=
call "%~dp0\gs.bat" start "GSA" %*
