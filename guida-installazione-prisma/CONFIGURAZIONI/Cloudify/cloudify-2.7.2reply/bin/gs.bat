@echo off
rem This script provides the command and control utility for the
rem GigaSpaces Technologies Inc. Service Grid

setlocal
call "%~dp0\setenv.bat"
set GS_LIB=%JSHOMEDIR%\lib
set bootclasspath=-Xbootclasspath/p:%XML_JARS%
set gsboot="%GS_LIB%\platform\boot\gs-boot.jar"
if not exist %gsboot% goto systemFailure

if "%1"=="start" goto start

:interactive
title GigaSpaces Technologies Service Grid : Interactive Shell
set launchTarget=com.gigaspaces.admin.cli.GS
set cliExt=config/services/services.config
set script_classpath=-cp %PRE_CLASSPATH%;%GS_JARS%;"%GS_LIB%";%SPRING_JARS%;%POST_CLASSPATH%
set COMMAND=%JAVACMD% %JAVA_OPTIONS% %bootclasspath% %script_classpath% %LOOKUP_LOCATORS_PROP% %LOOKUP_GROUPS_PROP% -Dcom.gs.logging.debug=false %GS_LOGGING_CONFIG_FILE_PROP% %launchTarget% %cliExt% %*
goto run

:start
shift
set services=com.gigaspaces.start.services=\"%~1\"
if %1=="GSA" set COMPONENT_JAVA_OPTIONS=%GSA_JAVA_OPTIONS%
if %1=="GSC" set COMPONENT_JAVA_OPTIONS=%GSC_JAVA_OPTIONS%
if %1=="GSM" set COMPONENT_JAVA_OPTIONS=%GSM_JAVA_OPTIONS%
if %1=="LH,GSM" set COMPONENT_JAVA_OPTIONS=%GSM_JAVA_OPTIONS%
if %1=="GSM,LH" set COMPONENT_JAVA_OPTIONS=%GSM_JAVA_OPTIONS%
if %1=="LH" set COMPONENT_JAVA_OPTIONS=%LUS_JAVA_OPTIONS%
if %1=="ESM" set COMPONENT_JAVA_OPTIONS=%ESM_JAVA_OPTIONS%
if %1=="TM" set COMPONENT_JAVA_OPTIONS=%JTX_JAVA_OPTIONS%

:parseArguments
shift
if "%1"=="" goto createCommand
if "%arguments%"=="" (set arguments=%1) else (set arguments=%arguments% %1)
goto parseArguments

:createCommand
set launchTarget=com.gigaspaces.start.SystemBoot
set PATH=%PATH%;%GS_LIB%\platform\native
set script_classpath=-cp %PRE_CLASSPATH%;"%JSHOMEDIR%";%SIGAR_JARS%;%gsboot%;%POST_CLASSPATH%
set COMMAND=%JAVACMD% %JAVA_OPTIONS% %COMPONENT_JAVA_OPTIONS% -DagentId=%AGENT_ID% -DgsaServiceID=%GSA_SERVICE_ID% -DenableDynamicLocators=%ENABLE_DYNAMIC_LOCATORS% %bootclasspath% %script_classpath% %RMI_OPTIONS% %LOOKUP_LOCATORS_PROP% %LOOKUP_GROUPS_PROP% -Dcom.gs.logging.debug=false %GS_LOGGING_CONFIG_FILE_PROP% %launchTarget% %services% %arguments%
goto run

:run
echo.
echo Starting with line:
echo %COMMAND%
echo.
%COMMAND%
goto end

:systemFailure
echo "Cannot locate system jars in the expected directory structure, exiting"
goto end

:end
endlocal
set ERR=%ERRORLEVEL%
title Command Prompt
%COMSPEC% /C exit %ERR% >nul
