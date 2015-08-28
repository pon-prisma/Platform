#!/bin/bash
# 		WEBUI_JAVA_OPTIONS 	- Extended java options that are proprietary defined  for Web UI such as heap size, system properties or other JVM arguments that can be passed to the JVM command line. 
#							- These settings can be overridden externally to this script.

if [ "${JSHOMEDIR}" = "" ] ; then
	JSHOMEDIR=`dirname $0`/../../
fi
export JSHOMEDIR

# WEBUI_JAVA_OPTIONS=; export WEBUI_JAVA_OPTIONS
COMPONENT_JAVA_OPTIONS="${WEBUI_JAVA_OPTIONS}"
export COMPONENT_JAVA_OPTIONS

# The call to setenv.sh can be commented out if necessary.
. $JSHOMEDIR/bin/setenv.sh

if [ "${WEBUI_PORT}" = "" ] ; then
	WEBUI_PORT=8099; export WEBUI_PORT
fi
WEBUI_PORT_PROP=-Dorg.openspaces.launcher.port=${WEBUI_PORT}; export WEBUI_PORT_PROP

if [ "${USER_NAME_MANDATORY}" = "" ] ; then
	USER_NAME_MANDATORY=false; export USER_NAME_MANDATORY
fi
USER_NAME_MANDATORY_PROP=-Dcom.gigaspaces.webui.username.mandatory=${USER_NAME_MANDATORY}; export USER_NAME_MANDATORY_PROP

if [ "${LOOKUPGROUPS}" = "" ] ; then
	LOOKUPGROUPS="gigaspaces-Cloudify-2.7.1-ga"
fi
LOOKUP_GROUPS_PROP=-Dcom.gs.jini_lus.groups=${LOOKUPGROUPS}; export LOOKUP_GROUPS_PROP

if [ "${LOOKUPLOCATORS}" = "" ] ; then
	LOOKUPLOCATORS=; export LOOKUPLOCATORS
fi
LOOKUP_LOCATORS_PROP="-Dcom.gs.jini_lus.locators=${LOOKUPLOCATORS}"; export LOOKUP_LOCATORS_PROP

JETTY_JARS="${JSHOMEDIR}"/lib/platform/jetty/*
export JETTY_JARS

PLATFORM_CLASSPATH=${JETTY_JARS}:"${JSHOMEDIR}"/lib/platform/commons/commons-collections-3.2.1.jar
PLATFORM_CLASSPATH=${PLATFORM_CLASSPATH}:"${JSHOMEDIR}"/lib/platform/commons/commons-lang-2.6.jar




COMMAND_LINE="${JAVACMD} ${JAVA_OPTIONS} ${COMPONENT_JAVA_OPTIONS} $bootclasspath ${RMI_OPTIONS} ${LOOKUP_LOCATORS_PROP} ${LOOKUP_GROUPS_PROP} ${WEBUI_PORT_PROP} ${USER_NAME_MANDATORY_PROP} -Djava.security.policy=${POLICY} -Dcom.gigaspaces.logger.RollingFileHandler.time-rolling-policy=monthly -Dorg.openspaces.launcher.jetty.session.manager=org.openspaces.pu.container.jee.jetty.GSSessionManager -Dcom.gs.home=${JSHOMEDIR} -classpath "${PRE_CLASSPATH}${CPS}${GS_JARS}${CPS}${SPRING_JARS}${CPS}${EXT_JARS}${CPS}${PLATFORM_CLASSPATH}${CPS}${POST_CLASSPATH}" org.openspaces.launcher.Launcher"

# Extract the Web UI WAR file path, assuming there's only one WAR file
WEBUI_WAR_PATH=`dirname $0`/gs-webui*.war

echo webui war file path: ${WEBUI_WAR_PATH}

${COMMAND_LINE} -name webui -path ${WEBUI_WAR_PATH} -work `dirname $0`/work $*
