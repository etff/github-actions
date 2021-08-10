FROM openjdk:11-slim-buster AS builder
COPY --from=builder /build/libs/app.jar .
ENTRYPOINT ["java","-jar","/app.jar"]
