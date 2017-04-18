FROM debian:jessie
MAINTAINER iaroki
RUN adduser iaroki
RUN apt-get update && apt-get install -y wget xz-utils gconf2 gconf-service gvfs-bin libasound2 libcap2 libgconf-2-4 \
	libgnome-keyring-dev libgtk2.0-0 libnotify4 libnss3 libxkbfile1	libxss1	libxtst6 xdg-utils \
	&& apt-get clean && rm -rf /var/lib/apt/lists/* && mkdir /home/iaroki/PT && cd /home/iaroki/PT \
	&& wget https://get.popcorntime.sh/build/Popcorn-Time-0.3.10-Linux-64.tar.xz && tar xf Popcorn-Time-0.3.10-Linux-64.tar.xz \
	&& rm -rf Popcorn-Time-0.3.10-Linux-64.tar.xz && chown -R iaroki:iaroki /home/iaroki/PT
USER iaroki
WORKDIR /home/iaroki
ENTRYPOINT ["/home/iaroki/PT/Popcorn-Time"]
