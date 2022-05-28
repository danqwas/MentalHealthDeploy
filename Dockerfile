FROM maven:3.8.2-jdk-11
WORKDIR /MentalHealthDeploy
COPY . .
ADD out/artifacts/mentalHealth_jar/mentalHealth.jar mentalHealth.jar
ENTRYPOINT ["java", "-jar", "mentalHealth.jar","mvn"]
RUN mvn clean install
EXPOSE 8081
CMD mvn spring-boot:run