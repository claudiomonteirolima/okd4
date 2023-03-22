FROM openjdk:8-jdk-alpine

WORKDIR "/home"

COPY . .

RUN apk add maven

WORKDIR "/home/okd4"

RUN mvn clean package

EXPOSE 8080

CMD [ "java", "-jar",  "/home/okd4/target/okd4-0.0.1-SNAPSHOT.jar"]