REM SET JAVA_HOME=${jvm.home}
REM SET JRE_HOME=${jvm.jre}
REM SET LD_LIBRARY_PATH=${ld.path}
if ""%1"" == ""stop"" goto skip
SET JAVA_OPTS=${jvm.opts}^
	%JAVA_OPTS%
:skip
SET CATALINA_OPTS=${catalina.opts}^
	%CATALINA_OPTS%

set CLASSPATH=%CLASSPATH%;%CATALINA_HOME%/lib/jul-to-slf4j-${version.slf4j}.jar
set CLASSPATH=%CLASSPATH%;%CATALINA_HOME%/lib/slf4j-api-${version.slf4j}.jar
set CLASSPATH=%CLASSPATH%;%CATALINA_HOME%/lib/logback-core-${version.logback}.jar
set CLASSPATH=%CLASSPATH%;%CATALINA_HOME%/lib/logback-classic-${version.logback}.jar
set CLASSPATH=%CLASSPATH%;%CATALINA_HOME%/lib/servlet-api.jar
set CATALINA_PID=%CATALINA_HOME%/bin/tomee.pid

echo setenv.bat sets JAVA_HOME to = "%JAVA_HOME%"
echo setenv.bat sets JRE_HOME to = "%JRE_HOME%"
echo setenv.bat sets CATALINA_OPTS to = "%CATALINA_OPTS%"
echo setenv.bat sets JAVA_OPTS to = "%JAVA_OPTS%"
echo setenv.bat sets CATALINA_PID to = "%CATALINA_PID%"
