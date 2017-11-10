FROM debian:stretch 
MAINTAINER iaroki
RUN apt-get update && apt-get install -y transmission-gtk && apt-get clean
RUN useradd -m -u 1000 iaroki
USER iaroki
WORKDIR /home/iaroki
CMD ["transmission-gtk"]
