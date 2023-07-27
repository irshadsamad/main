# Use a base Java image
FROM openjdk:11-jre

# Set the working directory inside the container
WORKDIR /app

# Copy the executable JAR and the dependencies to the container
COPY target/my-app-1.0-SNAPSHOT.jar /app/
COPY target/lib /app/lib

# Define the command to run the application
CMD ["java", "-cp", "/app:/app/lib/*", "com.mycompany.app.App"]
