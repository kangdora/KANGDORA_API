FROM gradle:8.10.2-jdk21 AS builder
WORKDIR /app
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} /app/myapp.jar
ENTRYPOINT ["java", "-jar", "/app/myapp.jar"]
