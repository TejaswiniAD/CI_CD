FROM eclipse-temurin:17-jdk-alpine
RUN apk add curl
VOLUME /tmp
EXPOSE 8081
ADD target/helloworld.jar helloworld.jar
ENTRYPOINT ["java","-jar","/helloworld.jar"]