@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  Email Messager startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and EMAIL_MESSAGER_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\Email Messager-1.0.jar;%APP_HOME%\lib\google-api-services-gmail-v1-rev20220307-1.32.1.jar;%APP_HOME%\lib\google-api-services-sheets-v4-rev20220308-1.32.1.jar;%APP_HOME%\lib\google-api-client-1.33.4.jar;%APP_HOME%\lib\google-oauth-client-jetty-1.33.1.jar;%APP_HOME%\lib\java-dotenv-5.2.2.jar;%APP_HOME%\lib\logback-classic-1.2.8.jar;%APP_HOME%\lib\javax.mail-1.6.2.jar;%APP_HOME%\lib\google-oauth-client-java6-1.33.1.jar;%APP_HOME%\lib\google-oauth-client-1.33.1.jar;%APP_HOME%\lib\google-http-client-gson-1.41.5.jar;%APP_HOME%\lib\google-http-client-apache-v2-1.41.5.jar;%APP_HOME%\lib\google-http-client-1.41.5.jar;%APP_HOME%\lib\opencensus-contrib-http-util-0.31.0.jar;%APP_HOME%\lib\guava-31.1-jre.jar;%APP_HOME%\lib\httpclient-4.5.13.jar;%APP_HOME%\lib\httpcore-4.4.15.jar;%APP_HOME%\lib\kotlin-stdlib-1.4.0.jar;%APP_HOME%\lib\logback-core-1.2.8.jar;%APP_HOME%\lib\slf4j-api-1.7.32.jar;%APP_HOME%\lib\activation-1.1.jar;%APP_HOME%\lib\gson-2.9.0.jar;%APP_HOME%\lib\failureaccess-1.0.1.jar;%APP_HOME%\lib\listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar;%APP_HOME%\lib\jsr305-3.0.2.jar;%APP_HOME%\lib\checker-qual-3.12.0.jar;%APP_HOME%\lib\error_prone_annotations-2.11.0.jar;%APP_HOME%\lib\j2objc-annotations-1.3.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\commons-codec-1.11.jar;%APP_HOME%\lib\opencensus-api-0.31.0.jar;%APP_HOME%\lib\kotlin-stdlib-common-1.4.0.jar;%APP_HOME%\lib\annotations-13.0.jar;%APP_HOME%\lib\grpc-context-1.27.2.jar


@rem Execute Email Messager
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %EMAIL_MESSAGER_OPTS%  -classpath "%CLASSPATH%" SheetsQuickstart %*

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable EMAIL_MESSAGER_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%EMAIL_MESSAGER_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
