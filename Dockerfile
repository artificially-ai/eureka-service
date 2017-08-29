FROM openjdk:jre-alpine

RUN apk update && apk add vim procps

COPY build/libs/eureka-service-1.0-SNAPSHOT.jar /ekholabs/eureka-service.jar

WORKDIR ekholabs

ENV EUREKA_PORT=8083
EXPOSE $EUREKA_PORT

ENTRYPOINT ["java"]
CMD ["-server", "-Xmx128M", "-jar", "eureka-service.jar"]
