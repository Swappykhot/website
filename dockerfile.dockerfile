FROM ubuntu:18.04
RUN mkdir /opt/java
COPY jdk-11.0.17 /opt/java/
ENV JAVA_HOME /opt/java
RUN mkdir /opt/tomcat
COPY apache-tomcat-9.0.63 /opt/tomcat/
ENV TOMCAT_HOME /opt/tomcat

EXPOSE 7777
CMD ["/opt/tomcat/bin/catalina.sh","run"]                                          