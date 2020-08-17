FROM maven:3-ibmjava-8
# Environment Variable that defines the endpoint of sentiment-analysis python api.

WORKDIR /app

RUN mvn install

ADD target/sentiment-analysis-web-0.0.1-SNAPSHOT.jar /
EXPOSE 8080
CMD ["java", "-jar", "sentiment-analysis-web-0.0.1-SNAPSHOT.jar"]
