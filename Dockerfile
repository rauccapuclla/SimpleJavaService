FROM java:8-alpine

RUN mkdir -p /opt/app
COPY ./target/*.jar /opt/app/app.jar

WORKDIR /opt/app

CMD ["java","-jar","app.jar"]
