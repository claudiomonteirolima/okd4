FROM arm64v8/maven:3.8.4-openjdk

WORKDIR "/home"

COPY . .

RUN mvn clean package

EXPOSE 8080

CMD [ "java", "-jar",  "/home/target/okd4-0.0.1-SNAPSHOT.jar"]
