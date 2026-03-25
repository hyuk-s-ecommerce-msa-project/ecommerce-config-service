FROM eclipse-temurin:21-jdk-jammy
WORKDIR /app
VOLUME /tmp
COPY apiEncryptionKey.jks /app/apiEncryptionKey.jks
COPY build/libs/config-service-1.1.jar ConfigServer.jar
ENTRYPOINT ["java", "-jar", "ConfigServer.jar"]