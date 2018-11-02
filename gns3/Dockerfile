FROM alpine:edge
MAINTAINER iaroki
RUN apk --update --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ add dbus ttf-ubuntu-font-family gns3-server gns3-gui docker qemu qutebrowser
RUN dbus-uuidgen > /etc/machine-id
CMD ["gns3"]
