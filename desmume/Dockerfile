FROM ubuntu:16.04
RUN apt-get update && \
    apt-get install desmume --no-install-recommends && \
    apt-get clean
RUN useradd -u 1000 -m iaroki
USER iaroki
WORKDIR /home/iaroki
CMD ["desmume"]
