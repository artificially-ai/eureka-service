FROM debian:latest

RUN apt-get -y update && apt-get install -y openjdk-8-jre-headless openjdk-8-jdk maven git

WORKDIR ekholabs

RUN git clone https://github.com/ekholabs/eureka-service
WORKDIR eureka-service
RUN ./gradlew clean build

EXPOSE 8082

ENTRYPOINT ["java"]
CMD ["-server", "-Xmx256M", "-jar", "build/libs/eureka-service-1.0-SNAPSHOT.jar"]
