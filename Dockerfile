FROM tomcat:9.0.74-jre8
#### Good stuff
COPY target/*.war /usr/local/tomcat/webapps/sami-demo.war
