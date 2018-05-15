# docker run -it \
#	-v $HOME/doc:/home/iaroki/doc \
#	-v /tmp/.X11-unix:/tmp/.X11-unix \
#   --device /dev/dri
#	-e DISPLAY=$DISPLAY \
#	iaroki/zathura
#

FROM alpine:edge
MAINTAINER iaroki
RUN apk --no-cache add \
	zathura-pdf-poppler \
    mesa-gl \
    dbus \
	ttf-opensans && \
	adduser -D -u 1000 iaroki
RUN dbus-uuidgen > /etc/machine-id
USER iaroki
WORKDIR /home/iaroki
CMD ["/usr/bin/zathura"]
