FROM openjdk:13

ARG KAFKA_VER=2.7.0
ARG SCALA_VER=2.13

RUN curl https://downloads.apache.org/kafka/${KAFKA_VER}/kafka_${SCALA_VER}-${KAFKA_VER}.tgz -o /kafka_${SCALA_VER}-${KAFKA_VER}.tgz && \
    tar xvf kafka_${SCALA_VER}-${KAFKA_VER}.tgz -C /opt &&\
    mv /opt/kafka_${SCALA_VER}-${KAFKA_VER} /opt/kafka && \
    rm -rf kafka_${SCALA_VER}-${KAFKA_VER}.tgz

WORKDIR /opt/kafka

ENV KAFKA_OPTS="-Djava.security.auth.login.config=/opt/kafka/config/zookeeper_jaas.conf \
                -Dzookeeper.authProvider.1=org.apache.zookeeper.server.auth.SASLAuthenticationProvider \
                -Dzookeeper.requireClientAuthScheme=sasl"
ENTRYPOINT ["/opt/kafka/bin/zookeeper-server-start.sh"]
CMD ["config/zookeeper.properties"]

