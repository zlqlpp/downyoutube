#!/bin/bash

yum install epel-release -y

yum install wget java maven tomcat git vim -y


sudo wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl;
sudo chmod a+rx /usr/local/bin/youtube-dl;

cd ~;

git clone https://github.com/zlqlpp/downyoutube.git
 


cd /root/downyoutube;
mvn clean;
git pull;
mvn clean package;
rm -rf /usr/share/tomcat/webapps/downyoutube;
rm -rf /usr/share/tomcat/webapps/downyoutube.war;
mv /root/downyoutube/target/downyoutube.war /usr/share/tomcat/webapps;
tomcat stop;
rm /usr/share/tomcat/logs/*.log;tomcat start;cd ~;


##echo 'http://185.120.20.217:8888/downyoutube/d/index.do' 


service iptables stop

setenforce 0

echo 'ok'
