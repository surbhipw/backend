# Use OpenJDK as base image
FROM openjdk:17-jdk-slim

# Set working directory inside container
WORKDIR /app

# Copy jar from target/ folder to container
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Expose port (Render will override with $PORT)
EXPOSE 8080

# Run the jar
ENTRYPOINT ["java", "-jar", "app.jar"]
# Use OpenJDK as base image
FROM openjdk:17-jdk-slim

# Set working directory inside container
WORKDIR /app

# Copy jar from target/ folder to container
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Expose port (Render will override with $PORT)
EXPOSE 8080

# Run the jar
ENTRYPOINT ["java", "-jar", "app.jar"]
