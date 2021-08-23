#
# Build stage
#
FROM maven:3.6.0-jdk-11-slim AS build
RUN pwd; ls -l
RUN mkdir /home/app
COPY -a ./. /home/app/
RUN cd /home/app
RUN pwd; ls -l
# RUN errorhereplease
# RUN mvn -f /home/app/pom.xml clean package

#
# Package stage
#
FROM openjdk:11-jre-slim
COPY --from=build /home/app/hello-service-app/target/*.jar /usr/local/lib/hello-service-app.jar
ENTRYPOINT ["java","-jar","/usr/local/lib/hello-service-app.jar"]