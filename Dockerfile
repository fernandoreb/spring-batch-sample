FROM registry.access.redhat.com/ubi8/openjdk-17:1.15-1.1679485273

COPY . /home/jboss

USER root

RUN mvn clean package

WORKDIR /home/jboss

USER 185

ENTRYPOINT [ "java", "-jar", "target/app.jar" ]