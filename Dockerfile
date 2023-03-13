FROM openjdk:17
RUN mkdir project
ARG JAR_FILE
ADD /target/HKDUBH-1.0.jar /project/HKDUBH-1.0.jar
WORKDIR /app
EXPOSE 8080
ENTRYPOINT ["java","-jar","/project/HKDUBH-1.0.jar"]
