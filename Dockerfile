FROM adoptopenjdk:11-jre-hotspot

ENV LOCALE "pt_BR.UTF-8"
ENV LOCALTIME "America/Sao_Paulo"
ENV TZ="America/Sao_Paulo"

RUN mkdir /app
COPY build/libs/*-SNAPSHOT.jar /app/app.jar
WORKDIR app

CMD java $JAVA_OPTS -jar /app/app.jar $ARGS
