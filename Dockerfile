FROM anapsix/alpine-java
LABEL maintainer="sebastiangarciahena0"
COPY target/spring-petclinic-*.jar /home/app.jar
CMD ["java", "-jar", "/home/app.jar"]
