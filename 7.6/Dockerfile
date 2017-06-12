FROM chenmins/tomcat-centos:jdk7tomcat7
MAINTAINER Chenmin

ENV TOMCAT_HOME=/opt/tomcat \
    JAVA_HOME=/usr/java/jdk1.7.0_80 \
    JDBC_HOME=jdbc \
    APP_HOME=app

ADD ${JDBC_HOME}/*.jar ${TOMCAT_HOME}/lib/
ADD ${APP_HOME}/* ${TOMCAT_HOME}/webapps/
RUN cat ${TOMCAT_HOME}/webapps/default.s* > ${TOMCAT_HOME}/webapps/default.tar.gz
RUN cat ${TOMCAT_HOME}/webapps/workspace.s* > ${TOMCAT_HOME}/webapps/workspace.tar.gz
RUN cat ${TOMCAT_HOME}/webapps/governor.s* > ${TOMCAT_HOME}/webapps/governor.tar.gz

ADD run.sh /opt
ADD startServer.sh /opt
ADD stopServer.sh /opt
RUN chmod 755 /opt/*.sh
RUN mkdir /opt/apps_config
VOLUME ["/opt/apps_config"]

EXPOSE 8080
CMD ["/opt/run.sh"]