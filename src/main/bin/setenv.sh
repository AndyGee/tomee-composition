#export JAVA_HOME="${jvm.home}"
#export JRE_HOME="${jvm.jre}"
#export LD_LIBRARY_PATH="${ld.path}"

if [ "$1" != "stop" ] ; then
export JAVA_OPTS="${jvm.opts} $JAVA_OPTS"
fi

export CATALINA_OPTS="${catalina.opts} $CATALINA_OPTS"

export CLASSPATH="$CLASSPATH":"$CATALINA_HOME"/lib/jul-to-slf4j-${version.slf4j}.jar
export CLASSPATH="$CLASSPATH":"$CATALINA_HOME"/lib/slf4j-api-${version.slf4j}.jar
export CLASSPATH="$CLASSPATH":"$CATALINA_HOME"/lib/logback-core-${version.logback}.jar
export CLASSPATH="$CLASSPATH":"$CATALINA_HOME"/lib/logback-classic-${version.logback}.jar
export CLASSPATH="$CLASSPATH":"$CATALINA_HOME"/lib/servlet-api.jar
export CATALINA_PID="$CATALINA_HOME"/bin/tomee.pid

echo "setenv.sh sets JAVA_HOME to  =$JAVA_HOME"
echo "setenv.sh sets JRE_HOME to = $JRE_HOME"
echo "setenv.sh sets CATALINA_OPTS to = $CATALINA_OPTS"
echo "setenv.sh sets JAVA_OPTS to = $JAVA_OPTS"
echo "setenv.sh sets CATALINA_PID to = $CATALINA_PID"
