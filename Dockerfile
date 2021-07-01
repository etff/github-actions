FROM openjdk:15.0.1 AS builder
COPY --from=builder /app/build/libs/app.jar .
CMD ["java", "-jar", "app.jar"]
