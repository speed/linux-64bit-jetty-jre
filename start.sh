#!/bin/bash

shDir=$(cd "$(dirname "$0")"; pwd)

cd ${shDir}/jetty/
 
export PATH=${shDir}/jre/bin/

java -version

#(java ${JAVA_OPTS} -DSTOP.PORT=8504 -DSTOP.KEY=stop_jetty -jar start.jar jetty.port=8500 > /dev/null &)

java -jar /opt/newcrawler/jetty/start.jar jetty.port=8500

echo 'test4'
