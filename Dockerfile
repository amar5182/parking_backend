FROM amarreddy94/amartomcat
MAINTAINER amarnath

COPY $WORKSPACE/target/*.jar /usr/local/tomcat/webapps/

EXPOSE 8080
