FROM ubuntu:16.04
RUN apt-get update && \
    apt-get install desmume --no-install-recommends -y && \
    apt-get clean
RUN useradd -u 1000 -G video -m iaroki &&\
USER iaroki
WORKDIR /home/iaroki
CMD ["/usr/games/desmume"]
