# Start with a base image containing Java runtime
FROM openjdk:8
# Add a volume pointing to /tmp
VOLUME /tmp
# Add Maintainer Info
LABEL maintainer="samaya.muduli@credencesoft.co.nz"
# Make port 8080 available to the world outside this container
EXPOSE 8080
# The application's jar file
ARG JAR_FILE=target/loan-origination-system-0.0.1-SNAPSHOT.war
# Add the application's jar to the container
ADD ${JAR_FILE} loan-origination-system-0.0.1-SNAPSHOT.war
# Run the jar file 
ENTRYPOINT ["java","-jar","loan-origination-system-0.0.1-SNAPSHOT.war"]