FROM tomcat
MAINTAINER omprakash
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
COPY bookstore-example-1.0-SNAPSHOT.war /usr/local/tomcat/webapps
EXPOSE 8090
