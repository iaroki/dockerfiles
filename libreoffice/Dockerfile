FROM alpine:latest
MAINTAINER iaroki
RUN apk --no-cache add \
	--repository https://dl-3.alpinelinux.org/alpine/edge/testing \
	libreoffice \
	ttf-dejavu
RUN adduser -u 1000 -D iaroki
WORKDIR /home/iaroki
USER iaroki
ENTRYPOINT [ "libreoffice" ]
