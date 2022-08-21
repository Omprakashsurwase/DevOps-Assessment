FROM tomcat
MAINTAINER omprakash
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
COPY valaxy-2.0-RELEASE.war /usr/local/tomcat/webapps
EXPOSE 8090


