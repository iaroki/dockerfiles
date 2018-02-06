FROM ubuntu:16.04
MAINTAINER iaroki
RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y wget software-properties-common apt-transport-https && \
    wget -nc https://dl.winehq.org/wine-builds/Release.key && \
    apt-key add Release.key && \
    apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/ && \
    apt-get update && \
    apt-get install -y winehq-stable libgl1-mesa-dri:i386 libgl1-mesa-glx:i386
RUN useradd -m -u 1000 -G audio,video iaroki
COPY asoundrc /home/iaroki/.asoundrc
USER iaroki
WORKDIR /home/iaroki
CMD ["bash"]
