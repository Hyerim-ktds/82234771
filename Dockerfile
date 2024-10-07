FROM cepgbaseacr.azurecr.io/docker.io/openjdk:17-slim

CMD ["./mvnw", "clean", "package"]

CMD ["ls"]

VOLUME /tmp

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} app.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","/app.jar"]