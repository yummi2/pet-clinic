### Example:
### mvn package && docker build . -t petclinic:latest

FROM docker.io/fabric8/java-alpine-openjdk11-jre

WORKDIR home

COPY target/spring-petclinic*.jar .

###ENTRYPOINT java -jar spring-petclinic*.jar

CMD java -Xmx512m -Xms512m -jar spring-petclinic*.jar --server.port=${PORT}
