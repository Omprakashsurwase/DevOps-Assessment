FROM tomcat:8.5.16-jre8-alpine
CMD ["catalina.sh","run"]
COPY bookstore-example-1.0-SNAPSHOT.war /usr/local/tomcat/webapps
