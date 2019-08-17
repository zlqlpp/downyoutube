#!/bin/bash

cd /root/downyoutube;
mvn clean;
git pull;
mvn clean package;
rm -rf /usr/share/tomcat/webapps/downyoutube;
rm -rf /usr/share/tomcat/webapps/downyoutube.war;
mv /root/downyoutube/target/downyoutube.war /usr/share/tomcat/webapps;
tomcat stop;
rm /usr/share/tomcat/logs/*.log;tomcat start;cd ~;
echo 'ok'
