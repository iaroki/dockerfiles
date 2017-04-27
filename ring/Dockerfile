FROM debian:jessie
MAINTAINER iaroki
RUN apt-get update && apt-get install apt-transport-https -y \
    && sh -c "echo 'deb https://dl.ring.cx/ring-nightly/debian_8/ ring main' > /etc/apt/sources.list.d/ring-nightly-man.list" \
    && apt-key adv --keyserver pgp.mit.edu --recv-keys A295D773307D25A33AE72F2F64CD5FA175348F84 \
    && apt-get update && apt-get install ring dbus-x11 -y && apt-get clean
RUN useradd iaroki && usermod -a -G audio,video iaroki && mkdir /home/iaroki && chown iaroki:iaroki /home/iaroki
USER iaroki
WORKDIR /home/iaroki
CMD ["gnome-ring"]
