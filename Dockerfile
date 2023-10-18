FROM openjdk:11-jre-slim-buster

ENV USE_PROFILE ""
ENV ENCRYPT_KEY ""
ENV GITHUB_USERID ""
ENV GITHUB_TOKEN ""

COPY app.jar /app.jar

CMD ["java", "-jar", "/app.jar", "-Dspring.profiles.active=${USE_PROFILE}"]
