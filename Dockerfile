FROM centos
MAINTAINER Hemadri <hemadri@gmail.com>
LABEL owner="hemadhri" \
             version="2.5.2"
WORKDIR /
ARG user_name=root
USER ${user_name}
ENV container_name demoContainer

RUN yum install java-1.8.0-openjdk.x86_64 -y
RUN mkdir /opt/tomcat

WORKDIR /opt/tomcat
ADD http://mirrors.estointernet.in/apache/tomcat/tomcat-8/v8.5.41/bin/apache-tomcat-8.5.41.tar.gz /opt/tomcat
RUN tar -xvzf /opt/tomcat/apache-tomcat-8.5.41.tar.gz --strip-components=1
EXPOSE 8080

WORKDIR /opt/tomcat/bin
ENTRYPOINT ["./catalina.sh"]
CMD ["run"]

