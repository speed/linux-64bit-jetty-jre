#!/bin/bash

shDir=$(cd "$(dirname "$0")"; pwd)

cd ${shDir}/jetty/
 
export PATH=${shDir}/jre/bin/

java -version

sed -ie 's/jdbc:hsqldb:file:~\/newcrawler\/db\/spider/jdbc:hsqldb:file:\/opt\/newcrawler\/db\/spider/g' /opt/newcrawler/war/WEB-INF/classes/datanucleus.properties

#(java ${JAVA_OPTS} -DSTOP.PORT=8504 -DSTOP.KEY=stop_jetty -jar start.jar jetty.port=8500 > /dev/null &)

java -jar /opt/newcrawler/jetty/start.jar jetty.port=8500

echo 'test4'
