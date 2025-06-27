FROM openjdk:17
WORKDIR /app
COPY . .
RUN ./gradlew bootJar
CMD ["java", "-jar", "build/libs/backend-0.0.1-SNAPSHOT.jar"]
