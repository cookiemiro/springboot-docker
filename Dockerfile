FROM openjdk:17-jdk-slim
ADD /build/libs/*.jar app.jar
# 컨테이너에서 이미지 실행시 어떤 명령어로 실행할 것인가?
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]