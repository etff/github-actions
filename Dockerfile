FROM openjdk:11.0.10-jre-slim-buster AS build
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
CMD ["java", "-jar", "app.jar"]
