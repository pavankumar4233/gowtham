# ====== Runtime image ======
FROM eclipse-temurin:17-jre-alpine

# Set a working directory
WORKDIR /app

# Argument to locate the JAR built by Gradle
# Gradle usually puts the fat jar in build/libs/*.jar
ARG JAR_FILE=build/libs/*.jar

# Copy the jar from the build context into the image
COPY ${JAR_FILE} app.jar

# Expose the app port (change if your app uses a different one)
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
