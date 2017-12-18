FROM ubuntu:16.04
MAINTAINER iaroki
RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y wget software-properties-common apt-transport-https && \
    wget -nc https://dl.winehq.org/wine-builds/Release.key && \
    apt-key add Release.key && \
    apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/ && \
    apt-get update && \
    apt-get install -y winehq-stable
RUN useradd -m -u 1000 -G audio,video iaroki
USER iaroki
WORKDIR /home/iaroki
CMD ["bash"]
