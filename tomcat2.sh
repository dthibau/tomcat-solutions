#!/bin/sh
# Tomcat Startup Script

CATALINA_HOME=/home/dthibau/Formations/Tomcat/mywork/apache-tomcat-10.0.26
export CATALINA_HOME
CATALINA_BASE=/home/dthibau/Formations/Tomcat/mywork/apache-tomcat-10.0.26/node2; 
export CATALINA_BASE
JRE_HOME=/usr/lib/jvm/java-14-oracle/
export JRE_HOME
CATALINA_OPTS="-Xms512m -Xmx512m"; 
export CATALINA_OPTS


start() {
        echo -n "Starting Tomcat:  "
        $CATALINA_HOME/bin/startup.sh
        sleep 2
}
stop() {
        echo -n "Stopping Tomcat: "
        $CATALINA_HOME/bin/shutdown.sh
}

# See how we were called.
case "$1" in
  start)
        start
        ;;
  stop)
        stop
        ;;
  restart)
        stop
        sleep 10
        start
        ;;
  *)
        echo $"Usage: tomcat {start|stop|restart}"
        exit
esac 
