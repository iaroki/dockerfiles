FROM alpine:edge
MAINTAINER iaroki
RUN apk --update --no-cache add scrot
RUN adduser -u 1000 -D iaroki
WORKDIR /home/iaroki
USER iaroki
ENTRYPOINT ["scrot"]
