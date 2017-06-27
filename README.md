# Eureka Service

Spring Cloud Microservice used for service discovery capabilities

# Dependencies

This microservice depends on the Configuration Service in order to retrieve its settings. It means that before starting this server,
please make sure that the one it depends on is already running.

You can find out how to run the Configuration Service here: [Configuration Service](https://github.com/ekholabs/configuration-service)

# Pulling the Docker Image

* ```docker pull ekholabs/eureka-service```

# Running the Docker Container

* ```docker run -d -p 8083:8083 --link configuration-service --name=eureka-service ekholabs/configuration-service```
