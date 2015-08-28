#!/bin/bash

#  *************************************************************************
#  This script is used to initialize common environment to GigaSpaces Server.
# 
#  It sets the following variables:
#
#  EXT_LD_LIBRARY_PATH - Variable that will extend LD_LIBRARY_PATH. 
#  		      - These settings can be overridden externally to this script.
# 
#  JAVA_HOME  - Location of the JDK version used to start GigaSpaces
#               Server.
#				Note that YOU MUST SUPPLY A JAVA_HOME environment variable.
#  JAVACMD - The Java command-line
#   
#  JAVA_OPTIONS   - Java command-line options for running the server,
#             Including: The Java args to override the standard memory arguments passed to java,
#             - Arg specifying the JVM to run.  (i.e. -server, -hotspot, -jrocket etc.)
#             - GC, profiling and management options.
#		- These settings can be overridden externally to this script.
#
#  EXT_JAVA_OPTIONS - Extended java option such as system properties or other JVM arguments that can be passed to the JVM command line. 
#  		      - These settings can be overridden externally to this script.
#
#  JAVA_VM_NAME JAVA_VERSION
#        - VM Name (i.e. All, HOTSPOT, J9, JROCKIT, etc.) and version of the JVM (1.5, 1.6)
#		 - The JVM default settings are set according to the JVM 
#        vendor and version. A java code is executed in order to fetch these details.
#  RMI_OPTIONS
#             - Additional RMI optional properties.
#  JSHOMEDIR  - The GigaSpaces home directory.
#  POLICY 	  - The default Java security policy file.
#  LOOKUPGROUPS - Jini Lookup Service Group
#
#  LOOKUPLOCATORS - Jini Lookup Service Locators used for unicast discovery
#  
#  NIC_ADDR 	- The Network Interface card IP Address
#
# PRE_CLASSPATH  - Path style variable to be added to the beginning of the 
#                  CLASSPATH 
# POST_CLASSPATH - Path style variable to be added to the end of the 
#                  CLASSPATH 
# 
#   For additional information, refer to the GigaSpaces OnLine Documentation
#   at http://docs.gigaspaces.com/xap97/common-environment-variables.html
#  *************************************************************************

# Set VERBOSE=true for debugging output
if [ "${VERBOSE}" = "" ] ; then 
  VERBOSE=false
fi

export CPS=":"

if [ -z "${EXT_LD_LIBRARY_PATH}" ]; then
EXT_LD_LIBRARY_PATH=
fi
export EXT_LD_LIBRARY_PATH


# Set or override the JAVA_HOME variable
# By default, the system value is used.
# JAVA_HOME="/utils/jdk1.5.0_01"
# - Reset JAVA_HOME unless JAVA_HOME is pre-defined.
if [ -z "${JAVA_HOME}" ]; then
  	# echo "The JAVA_HOME environment variable is not set. Using the java that is set in system path."
	JAVACMD=java
	JAVACCMD=javac
	JAVAWCMD=javaw
else
  	# echo JAVA_HOME environment variable is set to ${JAVA_HOME} in "<GigaSpaces Root>\bin\setenv.sh"
	JAVACMD="${JAVA_HOME}/bin/java"
	JAVACCMD="${JAVA_HOME}/bin/javac"
	JAVAWCMD="${JAVA_HOME}/bin/javaw"
fi
export JAVACMD
export JAVACCMD
export JAVAWCMD

if [ "${JSHOMEDIR}" = "" ] ; then
  cd `dirname $0`
  JSHOMEDIR=$PWD/..
  cd $OLDPWD 
fi
export JSHOMEDIR

# JAVA_VM_NAME automatic setup, possible values are
# ALL, HOTSPOT, J9, JROCKIT ...
JAVA_VM_NAME=`${JAVACMD} -cp "${JSHOMEDIR}/lib/required/gs-runtime.jar" com.gigaspaces.internal.utils.OutputJVMName`
JAVA_VERSION=`${JAVACMD} -cp "${JSHOMEDIR}/lib/required/gs-runtime.jar" com.gigaspaces.internal.utils.OutputJVMVersion`
export JAVA_VM_NAME
export JAVA_VERSION

if [ -z ${JAVA_VM_NAME} ]; then
   JAVA_VM_NAME=ALL
fi
export JAVA_VM_NAME 

# The following parameters have been found optimal when during extensive tests, using Oracle JVM 6.
# In order to apply these VM switches, please add them to the JAVA_OPTIONS variable:

# Optimal performance has been achieved with 2GB heap, it should be adjusted to real RAM size
# -Xms2g Xmx2g
# GC Threads quantity is, by default, equal to quantity of CPU cores 
# On single/dual CPU systems recommended to be set as 4 - 8

# Relevant to Solaris 10
# -XX:LargePageSizeInBytes=256m

# This VM option tells the HotSpot VM to generate a heap dump when the first thread throws OutOfMemoryError 
# because the java heap or the permanent generation is full. A heap dump is useful in production systems 
# where you need to diagnose an unexpected failure. Note it does not impact performance.
# It is supported from 5.0u7 and JDK 1.6 but it is up to the VM vendor to
# support it in future versions.
# -XX:+HeapDumpOnOutOfMemoryError

# -XX:+UseConcMarkSweepGC		 - Use concurrent mark-sweep collection for the old generation
# -XX:+UseParNewGC               - Use a parallel collection for the young generation
# -XX:+ParallelGCThreads=<value> - Quantity of garbage collection threads
# -Xmx<value>                    - Max JVM heap size
# -Xms<value>                    - Initial JVM heap size - It is recommended to define Xms equal to Xmx to achieve higher performance

# The following parameters have been found optimal when using Oracle 1.5 JVM for low latency deterministic client and server behavior
# excluding false failure recovery caused by very long GC pauses.
# 
# Note that these are advanced settings and specific to a given scenario. 
# It might also reduce the throughput. It will probably require tuning adjustments 
# to the recommended values and should be done with special care!
#
# In order to apply these VM switches, please add them to the JAVA_OPTIONS variable:
# -server -showversion -Xmx512m -XX:+UseConcMarkSweepGC -XX:+UseParNewGC -Xmn100m -XX:ParallelGCThreads=4

if [ -z "${EXT_JAVA_OPTIONS}" ]; then
EXT_JAVA_OPTIONS=-Xmx512m
fi
export EXT_JAVA_OPTIONS

# Set up JVM options base on value of JAVA_VM_NAME
if [ -z "${JAVA_OPTIONS}" ]; then
  case $JAVA_VM_NAME in
  JROCKIT)
    JAVA_OPTIONS=" -server -showversion -XXaggressive -XXexitOnOutOfMemory -Djrockit.oomdiagnostics=true ${EXT_JAVA_OPTIONS}"
#-Xgc:gencon"
  ;;
  HP)
    JAVA_OPTIONS=" -server -showversion ${EXT_JAVA_OPTIONS}"
  ;;
  J9)
    JAVA_OPTIONS=" -Xbootclasspath/p:${JSHOMEDIR}/lib/platform/xml/xalan.jar -showversion -XX:MaxPermSize=256m ${EXT_JAVA_OPTIONS}"
  ;;
  HOTSPOT)
  		JAVA_OPTIONS=" -server -showversion -XX:+AggressiveOpts -XX:MaxPermSize=256m -XX:+HeapDumpOnOutOfMemoryError ${EXT_JAVA_OPTIONS}"
  ;;
  *)
    JAVA_OPTIONS=" -showversion ${EXT_JAVA_OPTIONS}"
  ;;
  esac
fi
export JAVA_OPTIONS

## Append all files of lib/ext directory to the classpath
GS_JARS="${JSHOMEDIR}"/lib/required/*
export GS_JARS

SPRING_JARS="${JSHOMEDIR}"/lib/optional/spring/*:"${JSHOMEDIR}"/lib/optional/security/*
export SPRING_JARS

SIGAR_JARS="${JSHOMEDIR}"/lib/platform/sigar/*
export SIGAR_JARS

ANT_JARS="${JSHOMEDIR}"/lib/platform/ant/*
export ANT_JARS

JDBC_JARS="${JSHOMEDIR}"/lib/platform/jdbc/*
export JDBC_JARS

XML_JARS="${JSHOMEDIR}"/lib/platform/xml/*
export XML_JARS

UI_JARS="${JSHOMEDIR}"/lib/platform/ui/*:"${JSHOMEDIR}"/lib/platform/poi/*
export UI_JARS

EXT_JARS="${JSHOMEDIR}"/lib/platform/ext/*
export EXT_JARS

PU_COMMON_JARS="${JSHOMEDIR}"/lib/optional/pu-common/*
export PU_COMMON_JARS

# path to scala jar files (could be changed to point to SCALA_HOME/lib)
SCALA_JARS="${JSHOMEDIR}"/lib/platform/scala/lib/*
export SCALA_JARS

# path to openspaces scala extension jars.
GS_SCALA_JARS="${JSHOMEDIR}"/lib/platform/scala/*
export GS_SCALA_JARS

# The GS_JARS contains the same list as defined in the Class-Path entry of the gs-runtime.jar manifest file.
# These jars are required for client application and starting a Space from within your application.
GS_JARS=${EXT_JARS}$CPS${JSHOMEDIR}$CPS${JSHOMEDIR}$CPS${GS_JARS}$CPS${PU_COMMON_JARS}
export GS_JARS

PLATFORM_VERSION=9.0; export PLATFORM_VERSION
POLICY=${JSHOMEDIR}/policy/policy.all; export POLICY

if [ "${LOOKUPGROUPS}" = "" ] ; then
LOOKUPGROUPS="gigaspaces-Cloudify-2.7.1-ga"
fi
LOOKUP_GROUPS_PROP=-Dcom.gs.jini_lus.groups=${LOOKUPGROUPS}; export LOOKUP_GROUPS_PROP

if [ "${LOOKUPLOCATORS}" = "" ] ; then
LOOKUPLOCATORS=; export LOOKUPLOCATORS
fi
LOOKUP_LOCATORS_PROP="-Dcom.gs.jini_lus.locators=${LOOKUPLOCATORS}"; export LOOKUP_LOCATORS_PROP

# The NIC_ADDR represents the specific network interface card IP address or the default host name.
# Note - When using Multi Network-Interface cards, explicitly set it with the NIC address (e.g. 192.168.0.2)
# as it is the value of the java.rmi.server.hostname system property. (see RMI_OPTIONS)
if [ "${NIC_ADDR}" = "" ] ; then
NIC_ADDR=`hostname`; export NIC_ADDR
fi

# Note: In a setup for Multi Network-Interface cards please append -Djava.rmi.server.hostname=${NIC_ADDR} 
# to the RMI_OPTIONS with proper network-interface IP address
if [ "${RMI_OPTIONS}" = "" ] ; then 
  RMI_OPTIONS="-Dsun.rmi.dgc.client.gcInterval=36000000 -Dsun.rmi.dgc.server.gcInterval=36000000 -Djava.rmi.server.hostname=${NIC_ADDR} -Djava.rmi.server.RMIClassLoaderSpi=default -Djava.rmi.server.logCalls=false"
fi
export RMI_OPTIONS

# For IDE remote debugging add the ${IDE_REMOTE_DEBUG} variable to the command line:
IDE_REMOTE_DEBUG="-Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,server=y,suspend=y"
export IDE_REMOTE_DEBUG

# Set and add the system property -Djava.util.logging.config.file to the command line. It indicates file path to 
# the Java logging file location. Use it to enable finest logging troubleshooting of various Jini Services and GS modules.
# Setting this property will redirect all Jini services and GS modules output messages to a file.
# Specific logging settings can be provided by setting the following before calling setenv:
# export GS_LOGGING_CONFIG_FILE=/somepath/my_logging.properties
if [ "${GS_LOGGING_CONFIG_FILE}" = "" ] ; then
  GS_LOGGING_CONFIG_FILE="${JSHOMEDIR}/config/gs_logging.properties"; export GS_LOGGING_CONFIG_FILE 
fi
GS_LOGGING_CONFIG_FILE_PROP=-Djava.util.logging.config.file=${GS_LOGGING_CONFIG_FILE}; export GS_LOGGING_CONFIG_FILE_PROP


# Enable monitoring and management from remote systems using JMX jconsole.
REMOTE_JMX="-Dcom.sun.management.jmxremote.port=5001 -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false"
export REMOTE_JMX

if [ "${VERBOSE}" = "true" ] ; then
	echo ====================================================================================
	echo VERBOSE is on
	echo
	echo GigaSpaces ${PLATFORM_VERSION} environment set successfully from JSHOMEDIR: ${JSHOMEDIR}
	echo
	echo JAVACMD: ${JAVACMD}		JAVACCMD: ${JAVACCMD}		JAVAWCMD: ${JAVAWCMD}
	echo
	echo JAVA_OPTIONS: ${JAVA_OPTIONS}  EXT_JAVA_OPTIONS: ${EXT_JAVA_OPTIONS}	JAVA_VERSION: ${JAVA_VERSION}  JAVA_VM_NAME: ${JAVA_VM_NAME}
	echo
	echo NIC_ADDR: ${NIC_ADDR}
	echo
	echo RMI_OPTIONS: ${RMI_OPTIONS}
	echo
	echo GS_JARS: ${GS_JARS}
	echo
	echo LOOKUPGROUPS: ${LOOKUPGROUPS}  LOOKUP_LOCATORS_PROP: ${LOOKUP_LOCATORS_PROP}
	echo
	echo ANT_JARS: ${ANT_JARS}
	echo
	echo JDBC_JARS: ${JDBC_JARS}
	echo
	echo XML_JARS: ${XML_JARS}
	echo
	echo UI_JARS: ${UI_JARS}
	echo
	echo SPRING_JARS: ${SPRING_JARS}
	echo
	echo EXT_JARS: ${EXT_JARS}
	echo
	echo GS_LOGGING_CONFIG_FILE_PROP: ${GS_LOGGING_CONFIG_FILE_PROP}
	echo
	echo ====================================================================================
fi
