# Use a supported OpenJDK runtime
FROM eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy your JAR inside the image
COPY target/MyFirstKafkaProject-1.0-SNAPSHOT.jar /app/kafka-example.jar

# Default entry (will be completed by docker-compose)
ENTRYPOINT ["java", "-cp", "/app/kafka-example.jar"]
