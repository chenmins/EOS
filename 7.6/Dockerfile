FROM chenmins/tomcat-centos:jdk7tomcat7
MAINTAINER Chenmin

ENV TOMCAT_HOME=/opt/tomcat \
    JAVA_HOME=/usr/java/jdk1.7.0_80 \
    JDBC_HOME=jdbc \
    APP_HOME=app

ADD ${JDBC_HOME}/ojdbc14-10.2.0.2.0.jar ${TOMCAT_HOME}/lib/
ADD ${APP_HOME}/governor.tar.gz ${TOMCAT_HOME}/webapps/
ADD ${APP_HOME}/workspace.tar.gz ${TOMCAT_HOME}/webapps/
ADD ${APP_HOME}/default.tar.gz ${TOMCAT_HOME}/webapps/

ADD run.sh /opt
ADD startServer.sh /opt
ADD stopServer.sh /opt
RUN chmod 755 /opt/*.sh
RUN mkdir /opt/apps_config
VOLUME ["/opt/apps_config"]

EXPOSE 8080
CMD ["/opt/run.sh"]