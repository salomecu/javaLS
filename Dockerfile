# Use a Java base image
FROM openjdk:8-jdk-alpine

# Copy the Java source file to the container
COPY HolaMundo.java /usr/src/myapp/

# Set the working directory inside the container
WORKDIR /usr/src/myapp

# Compile the Java program
RUN javac HolaMundo.java

# Run the Java program
CMD ["java", "HolaMundo"]
