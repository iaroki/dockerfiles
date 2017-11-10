FROM alpine
MAINTAINER iaroki
RUN apk --update --no-cache add irssi
RUN adduser -u 1000 -D iaroki
WORKDIR /home/iaroki
USER iaroki
CMD ["irssi"]
