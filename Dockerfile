# Use a lightweight OpenJDK 17 runtime base image
FROM eclipse-temurin:17-jre-alpine

# Set working directory inside container
WORKDIR /app

# Copy the built jar file into the container
# Make sure to replace below jar name with your actual built jar name
COPY target/eureka-server-0.0.1-SNAPSHOT.jar app.jar

# Expose Eureka default port
EXPOSE 8761

# Start the Eureka server
ENTRYPOINT ["java", "-jar", "app.jar"]
