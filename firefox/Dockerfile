FROM debian:jessie
MAINTAINER iaroki
RUN apt-get update -y && apt-get install firefox-esr -y && apt-get clean
RUN useradd -m -u 1000 -G audio,video iaroki 
USER iaroki
CMD ["firefox-esr"]
