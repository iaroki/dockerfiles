FROM openjdk:11-jre-slim AS base

ARG KAFKA_VER=3.0.0
ARG SCALA_VER=2.13

RUN apt-get update && \
    apt-get install curl -y && \
    curl https://downloads.apache.org/kafka/${KAFKA_VER}/kafka_${SCALA_VER}-${KAFKA_VER}.tgz -o /kafka_${SCALA_VER}-${KAFKA_VER}.tgz && \
    tar xvf kafka_${SCALA_VER}-${KAFKA_VER}.tgz -C /opt && \
    mv /opt/kafka_${SCALA_VER}-${KAFKA_VER} /opt/kafka && \
    rm -rf kafka_${SCALA_VER}-${KAFKA_VER}.tgz

FROM openjdk:11-jre-slim
COPY --from=base /opt/kafka /opt/kafka

WORKDIR /opt/kafka

ENTRYPOINT ["/opt/kafka/bin/kafka-server-start.sh"]
CMD ["config/server.properties"]
