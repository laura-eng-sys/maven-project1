# You can change this base image to anything else
# But make sure to use the correct version of Java
FROM openjdk:17-jdk-slim

WORKDIR /app

COPY /Mavenjar/target/Mavenjar-1.0-SNAPSHOT.jar /app/Mavenjar/target/Mavenjar-1.0-SNAPSHOT.jar

# This should not be changed
CMD ["java", "-jar","Mavenjar/target/Mavenjar-1.0-SNAPSHOT.jar"]
