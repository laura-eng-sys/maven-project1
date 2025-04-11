# You can change this base image to anything else
# But make sure to use the correct version of Java
FROM openjdk:17-jdk-alpine

WORKDIR app

COPY /Mavenjar/target/Mavenjar-1.0-SNAPSHOT.jar app.jar

# This should not be changed
ENTRYPOINT ["java","-jar","app.jar"]
