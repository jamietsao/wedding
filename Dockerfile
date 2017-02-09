FROM java:7
COPY ./target/dependency/jetty-runner.jar /usr/src/wedding/
COPY ./target/wedding.war /usr/src/wedding/
WORKDIR /usr/src/wedding
CMD ["java", "-jar", "jetty-runner.jar", "wedding.war"]
