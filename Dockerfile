FROM openjdk:11-jre-slim-buster

ARG PROFILE

ENV USE_PROFILE=$PROFILE
ENV ENCRYPT_KEY ""
ENV GITHUB_USERID ""
ENV GITHUB_TOKEN ""

COPY app.jar /app.jar

ENTRYPOINT ["/bin/sh","-c","java -Dspring.profiles.active=${USE_PROFILE} -jar ./app.jar"]