#!/bin/sh

CATALINA_HOME=/home/dthibau/Formations/Tomcat/mywork/apache-tomcat-10.0.26
JAVA_HOME=/usr/lib/jvm/java-14-oracle/

CLASSPATH=$CLASSPATH:$CATALINA_HOME/lib/catalina.jar:$CATALINA_HOME/lib/servlet-api.jar:$CATALINA_HOME/lib/tomcat-api.jar:$CATALINA_HOME/lib/tomcat-util-scan.jar:$CATALINA_HOME/lib/tomcat-util.jar:$CATALINA_HOME/bin/tomcat-juli.jar
#export CLASSPATH

echo 'Creation d un mot de passe encode avec SHA'
$JAVA_HOME/bin/java -cp $CLASSPATH org.apache.catalina.realm.RealmBase -a SHA $1
