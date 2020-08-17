#
# Build stage
#
FROM maven:3-ibmjava-8 AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

#
# Package stage
#
FROM openjdk:11-jre-slim
COPY --from=build /home/app/target/sentiment-analysis-web-0.0.1-SNAPSHOT.jar /usr/local/lib/sentiment-analysis-web-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/local/lib/sentiment-analysis-web-0.0.1-SNAPSHOT.jar"]
