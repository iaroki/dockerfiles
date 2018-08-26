# Run libvirt deamon in a container
#
# docker run -d \
#	--privileged \
#	-v /var/run/libvirt:/var/run/libvirt \
#	--name kvm \
#	iaroki/kvm
#
FROM debian:sid

RUN apt-get update && apt-get install -y \
	iptables \
	libgl1-mesa-dri \
	libgl1-mesa-glx \
	libvirt-daemon-system \
	python-gi \
	python-ipaddr \
	qemu-kvm \
    qemu-utils \
	virtinst \
	virt-viewer \
    virt-manager \
    gir1.2-spiceclientglib-2.0 \
    gir1.2-spiceclientgtk-3.0 \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/*

COPY ./start.sh /start.sh

ENTRYPOINT ["/start.sh"]
CMD ["libvirtd"]
