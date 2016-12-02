#Author:https://github.com/sjatgutzmann/

FROM sjatgutzmann/docker.centos.oraclejava8

MAINTAINER Sven Jörns <sj.at.gutzmann@gmail.com>

ENV SONAR_VERSION=6.1
ENV sonar.jdbc.username=sonarqube
ENV sonar.jdbc.password=mypassword
ENV sonar.jdbc.url=jdbc:postgresql://localhost/sonarqube
ENV SONAR_HOME=/opt/sonarqube-${SONAR_VERSION}

RUN yum install unzip
RUN cd /opt
RUN wget https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-${SONAR_VERSION}.zip
RUN unzip sonarqube-${SONAR_VERSION}.zip
RUN rm sonarqube-${SONAR_VERSION}.zip
RUN $SONAR_HOME/bin/linux-x86-64/sonar.sh
