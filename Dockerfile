FROM openjdk:jre-alpine
ADD target/eureka_server-1.0.0.jar eureka_server-1.0.0.jar
ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=stage", "eureka_server-1.0.0.jar"]
EXPOSE 8761
RUN apk add curl