FROM registry.access.redhat.com/ubi8:8.5-236.1648460182 AS base

ARG KAFKA_VER=3.1.0
ARG SCALA_VER=2.13

USER root

RUN yum install -y gzip && \
    curl https://downloads.apache.org/kafka/${KAFKA_VER}/kafka_${SCALA_VER}-${KAFKA_VER}.tgz \
         -o /kafka_${SCALA_VER}-${KAFKA_VER}.tgz && \
    tar xvf /kafka_${SCALA_VER}-${KAFKA_VER}.tgz -C /opt && \
    mv /opt/kafka_${SCALA_VER}-${KAFKA_VER} /opt/kafka && \
    rm -rf /kafka_${SCALA_VER}-${KAFKA_VER}.tgz

FROM registry.access.redhat.com/ubi8/openjdk-17-runtime:1.11-2.1648459728
USER root
COPY --from=base /opt/kafka /opt/kafka

WORKDIR /opt/kafka

ENTRYPOINT ["/opt/kafka/bin/kafka-server-start.sh"]
CMD ["config/server.properties"]
