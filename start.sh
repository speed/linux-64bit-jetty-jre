#!/bin/bash

shDir=$(cd "$(dirname "$0")"; pwd)

cd ${shDir}/jetty/
 
export PATH=${shDir}/jre/bin/

java -version

echo 'test'

echo ${shDir}

echo 'test2'

#(java ${JAVA_OPTS} -DSTOP.PORT=8504 -DSTOP.KEY=stop_jetty -jar start.jar jetty.port=8500 > /dev/null &)


java ${JAVA_OPTS} -DSTOP.PORT=8504 -DSTOP.KEY=stop_jetty -jar start.jar jetty.port=8500 &
