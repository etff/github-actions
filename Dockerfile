FROM openjdk:11.0.10-jre-slim-buster AS builder
COPY --from=builder /app/build/libs/app.jar .
CMD ["java", "-jar", "app.jar"]
