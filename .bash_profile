 alias rm='rm -f'
 alias go='cd /root/downyoutube;mvn clean;git pull;mvn clean package;rm -rf /usr/share/tomcat/webapps/downyoutube;rm /usr/share/tomcat/webapps/downyoutube.war;mv /root/downyoutube/target    /downyoutube.war /usr/share/tomcat/webapps;tomcat stop;rm /usr/share/tomcat/logs/*.log;tomcat start;cd ~;echo 'http://185.120.20.217:8888/downyoutube/d/index.do' '
 alias cdapp='cd /usr/share/tomcat'
 
 alias gopush='cd /root/vps_push_stream_douyu;mvn clean;git pull;mvn clean package;rm -rf /usr/share/tomcat/webapps/vps_push_stream_douyu;rm /usr/share/tomcat/webapps/vps_push_stream_dou    yu.war;mv /root/vps_push_stream_douyu/target/vps_push_stream_douyu.war /usr/share/tomcat/webapps;tomcat stop;rm /usr/share/tomcat/logs/*.log;tomcat start;cd ~;echo 'http://185.120.20.21    7:8888/vps_push_stream_douyu/d/StreamCode.do' '
 
 alias welcome='source ~/.bash_profile'
 
 alias gopushchmod='chmod +x /usr/share/tomcat/webapps/vps_push_stream_douyu/shell/*.sh'
