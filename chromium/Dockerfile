FROM alpine
MAINTAINER iaroki
RUN apk --update add udev chromium ttf-dejavu ttf-ubuntu-font-family ttf-liberation && rm -f /var/cache/apk/* && \
 mkdir -p /work && adduser -D -s /bin/sh iaroki iaroki && chown -R iaroki /work && echo "Success"
USER iaroki
WORKDIR /work
ENTRYPOINT ["chromium-browser"]
