shDir=$(cd "$(dirname "$0")"; pwd)

cd ${shDir}/jetty/
 
chmod +rwx ${shDir}/jre -R

export PATH=${shDir}/jre/bin/

java -version
java -DSTOP.PORT=8504 -DSTOP.KEY=stop_jetty -jar start.jar jetty.port=8500
