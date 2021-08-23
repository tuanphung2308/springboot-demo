#
# Build stage
#
FROM maven:3.6.0-jdk-11-slim AS build
COPY hello-service-app /home/app/hello-service-app
RUN mvn -f /home/app/pom.xml clean package

#
# Package stage
#
FROM openjdk:11-jre-slim
COPY --from=build /home/app/hello-service-app/target/*.jar /usr/local/lib/hello-service-app.jar
ENTRYPOINT ["java","-jar","/usr/local/lib/hello-service-app.jar"]