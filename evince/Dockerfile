# docker run -it \
#	-v $HOME:/home/iaroki \
#	-v /tmp/.X11-unix:/tmp/.X11-unix \
#	-e DISPLAY=$DISPLAY \
#	iaroki/evince
#

FROM alpine:latest
MAINTAINER iaroki
RUN apk --no-cache add \
	--repository https://dl-3.alpinelinux.org/alpine/edge/community \
	evince \
	ttf-opensans && \
	useradd -m -u 1000 iaroki
USER iaroki
WORKDIR /home/iaroki
CMD ["/usr/bin/evince"]
