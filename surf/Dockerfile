FROM debian
MAINTAINER iaroki
RUN apt-get update && apt-get install -y \
	ca-certificates \
    surf \
	--no-install-recommends \
	&& rm -rf /var/lib/apt/lists/* 

RUN useradd -m -u 1000 -G audio,video iaroki
USER iaroki
WORKDIR /home/iaroki
ENTRYPOINT ["surf", "-g", "-n"]
