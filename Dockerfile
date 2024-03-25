FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

COPY ./build/libs/api-gateway-service-0.1.0.jar /app

ENTRYPOINT ["java", "-Dspring.profiles.active=prod", "-jar", "api-gateway-service-0.1.0.jar"]

EXPOSE 8080
