#FROM openjdk:17
#FROM azul/zulu-openjdk:23-jre
#FROM eclipse-temurin:23-jre
FROM registry:5000/library/eclipse-temurin:23-jdk-alpine

VOLUME /tmp
# RUN sh mvnw --settings setting.xml clean package -DskipTests
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
#RUN ls -l
#COPY keystore/cacerts cacerts
ENTRYPOINT ["sh", "-c", "java ${JAVA_OPTS} -jar app.jar"]
