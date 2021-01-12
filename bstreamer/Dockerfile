FROM adoptopenjdk/openjdk13:debianslim-jre AS builder
RUN apt update && apt install wget unzip -y
RUN wget https://github.com/vzhn/bstreamer/releases/download/v0.5/bstreamer-0.5-linux-x86_64.zip && \
    unzip bstreamer-0.5-linux-x86_64.zip


FROM adoptopenjdk/openjdk13:debianslim-jre
EXPOSE 8554
WORKDIR /app
COPY --from=builder /bstreamer-0.5 .
CMD ["/app/bin/bserver", "-c", "/app/conf/server.yaml"]

