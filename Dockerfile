FROM openjdk:11-jre
LABEL maintainer="BCP-DEMO-SPRINGBOOT"
ENV spring.application.name eurekaserver

COPY build/libs/eurekaserver-*SNAPSHOT.jar /opt/eurekaserver.jar
ENTRYPOINT ["java", "-Djava.file.encoding=UTF-8", "-jar", "/opt/eurekaserver.jar"]