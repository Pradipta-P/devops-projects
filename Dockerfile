# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "pradipta@gmail.com" 
COPY /var/lib/jenkins/workspace/docker-project/webapp/target/webapp.war /usr/local/tomcat/webapps
