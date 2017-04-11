FROM debian:jessie
MAINTAINER iaroki
RUN adduser iaroki
RUN apt-get update -y && apt-get install mousepad -y && apt-get clean
USER iaroki
CMD ["mousepad"]
