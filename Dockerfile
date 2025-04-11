# You can change this base image to anything else
# But make sure to use the correct version of Java
FROM alpine:latest
RUN apk add openjdk17
RUN apk update
RUN apk upgrade --available && sync

# Simply the artifact path
ARG artifact=Mavenjar/target/Mavenjar-1.0-SNAPSHOT.jar

WORKDIR app

COPY ${artifact} app.jar

# This should not be changed
ENTRYPOINT ["java","-jar","app.jar"]
