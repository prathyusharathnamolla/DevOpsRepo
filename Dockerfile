# Use a base image with Java
FROM openjdk:17

# Copy the built jar file into the container
COPY target/*.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "/app.jar"]
