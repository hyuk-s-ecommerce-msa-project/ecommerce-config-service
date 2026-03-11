FROM eclipse-temurin:21-jdk-jammy
VOLUME /tmp
COPY apiEncryptionKey.jks apiEncryptionKey.jks
COPY build/libs/config-service-1.0.jar ConfigServer.jar
ENTRYPOINT ["java", "-jar", "ConfigServer.jar"]