FROM adoptopenjdk/openjdk11
MAINTAINER jackWu <627521884@qq.com>

RUN mvn clean package

COPY ./target/sentinel-dashboard.jar sentinel-dashboard.jar

EXPOSE 8080

CMD java ${JAVA_OPTS} -jar sentinel-dashboard.jar