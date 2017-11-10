# docker run -d \
#	-v /etc/localtime:/etc/localtime:ro \
#	-v /tmp/.X11-unix:/tmp/.X11-unix \
#	-e DISPLAY=$DISPLAY \
#	-v $HOME/docs:/root/docs \
#	-e GDK_SCALE \
#	-e GDK_DPI_SCALE \
#	--name libreoffice \
#	iaroki/libreoffice
#
FROM alpine:latest
MAINTAINER iaroki
RUN apk --no-cache add \
	--repository https://dl-3.alpinelinux.org/alpine/edge/testing \
	libreoffice \
	ttf-dejavu

ENTRYPOINT [ "libreoffice" ]
