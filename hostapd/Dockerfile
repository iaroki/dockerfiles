FROM alpine:latest
MAINTAINER iaroki
RUN apk add --no-cache \
	iptables \
	hostapd
COPY hostapd.conf /hostapd.conf
CMD [ "hostapd", "/hostapd.conf" ]
