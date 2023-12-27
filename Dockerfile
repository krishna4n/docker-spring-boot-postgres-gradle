FROM openjdk:17-oracle
ADD src/main/resources/application.properties /app/props/application.properties
COPY /build/libs/demo*.jar /app/libs/demoapp.jar
WORKDIR /app
EXPOSE 8089
ENTRYPOINT ["java", "-jar","/app/libs/demoapp.jar"]
