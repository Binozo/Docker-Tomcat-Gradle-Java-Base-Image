FROM tomcat:9

LABEL maintainer=binozoworks
LABEL org.opencontainers.image.source="https://github.com/Binozo/Docker-Tomcat-Gradle-Java-Base-Image"
LABEL org.opencontainers.image.description="Docker tomcat image packed with Java 11 and Gradle 5.0"

#update
RUN apt-get update -y && apt-get upgrade -y

# (java 11 is already installed)

# install gradle
RUN wget https://services.gradle.org/distributions/gradle-5.0-bin.zip -P /tmp
RUN unzip -d /opt/gradle /tmp/gradle-*.zip
ENV GRADLE_HOME=/opt/gradle/gradle-5.0
ENV PATH=${GRADLE_HOME}/bin:${PATH}