# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the compiled Java application into the container
COPY app.java .

# Compile the Java application
RUN javac app.java

# Expose port 80
EXPOSE 80

# Run the Java application when the container starts
CMD ["java", "app"]

