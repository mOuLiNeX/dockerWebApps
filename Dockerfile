FROM maven:3.5-jdk-8-alpine as BUILD

COPY src /usr/src/app/src
COPY pom.xml /usr/src/app

WORKDIR /usr/src/app

RUN mvn clean install package


FROM openjdk:8-jre-alpine as RUN

COPY --from=BUILD /usr/src/app/target/context-0.0.1-SNAPSHOT.jar /opt/app/webapp.jar
COPY start.sh /opt/app/

WORKDIR /opt/app

ENTRYPOINT ["/opt/app/start.sh"]
