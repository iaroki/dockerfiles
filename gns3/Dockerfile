FROM alpine:edge
MAINTAINER iaroki
RUN apk --update --no-cache add dbus ttf-ubuntu-font-family gns3-server gns3-gui
RUN dbus-uuidgen > /etc/machine-id
CMD ["gns3"]
