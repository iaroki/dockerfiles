FROM openjdk:13

ARG KAFKA_VER=2.7.0
ARG SCALA_VER=2.13

RUN curl https://downloads.apache.org/kafka/${KAFKA_VER}/kafka_${SCALA_VER}-${KAFKA_VER}.tgz -o /kafka_${SCALA_VER}-${KAFKA_VER}.tgz && \
    tar xvf kafka_${SCALA_VER}-${KAFKA_VER}.tgz -C /opt &&\
    mv /opt/kafka_${SCALA_VER}-${KAFKA_VER} /opt/kafka && \
    rm -rf kafka_${SCALA_VER}-${KAFKA_VER}.tgz && \
    curl https://linkedin.jfrog.io/artifactory/cruise-control/com/linkedin/cruisecontrol/cruise-control-metrics-reporter/2.5.29/cruise-control-metrics-reporter-2.5.29.jar \
    -o /opt/kafka/libs/cruise-control-metrics-reporter-2.5.29.jar

WORKDIR /opt/kafka

ENV KAFKA_OPTS="-Djava.security.auth.login.config=/opt/kafka/config/kafka_jaas.conf"
ENV KAFKA_HEAP_OPTS="-Xmx6G -Xms6G"
ENTRYPOINT ["/opt/kafka/bin/kafka-server-start.sh"]
CMD ["config/server.properties"]
