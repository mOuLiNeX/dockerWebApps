FROM maven:3.5-jdk-8-alpine as BUILD

COPY src /usr/src/app/src
COPY pom.xml /usr/src/app

WORKDIR /usr/src/app

RUN mvn clean install package


#FROM java:8-jdk-alpine as RUN

COPY --from=BUILD /usr/src/app/target/context-0.0.1-SNAPSHOT.jar /opt/app/webapp.jar
WORKDIR /opt/app

ENTRYPOINT ["java", "-DPROD_MODE=true", "-jar", "webapp.jar"]