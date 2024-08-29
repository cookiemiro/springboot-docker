FROM openjdk:17-jdk-slim
#ARG JAR_FILE=targer/*.jar
ADD /build/libs/*.jar app.jar
ARG PROFILES
ARG ENV
# 컨테이너에서 이미지 실행시 어떤 명령어로 실행할 것인가?
ENTRYPOINT ["java", "-Dspring.profiles.active=${PROFILES}", "-Dserver.env=${ENV}","-jar", "app.jar"]