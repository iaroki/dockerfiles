FROM ubuntu:16.04
MAINTAINER iaroki
RUN apt-get update && apt-get -y install \
    wget \
    ca-certificates \
    openssl \
    openssh-client \
    rsync \
    git \
    vim \
    virtualbox \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*
ENV	VAGRANT_VERSION=2.0.0
RUN	wget https://releases.hashicorp.com/vagrant/${VAGRANT_VERSION}/vagrant_${VAGRANT_VERSION}_x86_64.deb \
    && dpkg -i vagrant_${VAGRANT_VERSION}_x86_64.deb \
	&& rm vagrant_${VAGRANT_VERSION}_x86_64.deb
ENV HOME=/home/iaroki
RUN useradd --create-home --home-dir $HOME iaroki \
	&& chown -R iaroki:iaroki $HOME
WORKDIR $HOME
USER iaroki
CMD ["/bin/bash"]
