FROM debian:jessie
MAINTAINER iaroki
RUN apt-get update -y && apt-get install firefox-esr -y && apt-get clean
RUN adduser iaroki
USER iaroki
CMD ["firefox-esr"]
