FROM openjdk:17
WORKDIR /app
COPY . .
RUN ./gradlew bootJar
CMD ["java", "-jar", "build/libs/frontend-0.0.1-SNAPSHOT.jar"]
