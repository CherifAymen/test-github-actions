#FROM openjdk:8-jdk-alpine
FROM zenika/alpine-maven:latest
# Environment Variable that defines the endpoint of sentiment-analysis python api.

WORKDIR /app

RUN mvn install

ADD target/sentiment-analysis-web-0.0.1-SNAPSHOT.jar /
EXPOSE 8080
CMD ["java", "-jar", "sentiment-analysis-web-0.0.1-SNAPSHOT.jar"]
