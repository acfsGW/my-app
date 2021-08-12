FROM tomcat:8
LABEL app=my-app
RUN rm -rf webapps
RUN mv webapps.dist webapps
COPY target/*.war /usr/local/tomcat/webapps/myweb.war
