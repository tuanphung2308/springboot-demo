#
# Build stage
#
FROM maven:3.6.0-jdk-11-slim AS build
RUN mvn -f /home/ec2-user/spring-boot-hello/hello-service/pom.xml clean package

#
# Package stage
#
FROM openjdk:11-jre-slim
COPY --from=build /home/ec2-user/spring-boot-hello/hello-service/*.jar /usr/local/lib/hello-service-app.jar
ENTRYPOINT ["java","-jar","/usr/local/lib/hello-service-app.jar"]