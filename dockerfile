FROM tomcat:8-jre8
MAINTAINER omprakash
COPY bookstore-example-1.0-SNAPSHOT.war /usr/local/tomcat/webapps
EXPOSE 8090
