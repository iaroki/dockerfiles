FROM alpine:edge
MAINTAINER iaroki
RUN apk --update --no-cache add speedtest-cli
RUN adduser -D iaroki
USER iaroki
ENTRYPOINT ["speedtest"]
