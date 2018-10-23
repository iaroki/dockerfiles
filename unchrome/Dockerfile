FROM debian:stretch
MAINTAINER iaroki
RUN apt-get update && apt-get install -y \
	apt-transport-https \
	ca-certificates \
	wget \
	gnupg \
	hicolor-icon-theme \
	libgl1-mesa-dri \
	libgl1-mesa-glx \
	libpango1.0-0 \
	libpulse0 \
	libv4l-0 \
	fonts-symbola \
    libasound2 \
    libatk-bridge2.0-0 \
    libatk1.0-0 \
    libatomic1 \
    libavcodec-extra57 \
    libavformat57 \
    libavutil55 \
    libcairo-gobject2 \
    libcups2 \
    libevent-2.0-5 \
    libgdk-pixbuf2.0-0 \
    libgtk-3-0 \
    libicu57 \
    liblcms2-2 \
    libminizip1 \
    libnspr4 \
    libnss3 \
    libopenjp2-7 \
    libopus0 \
    libpci3 \
    libre2-3 \
    libsnappy1v5 \
    libva1 \
    libvpx4 \
    libwebp6 \
    libwebpdemux2 \
    libwebpmux2 \
    libxcomposite1 \
    libxcursor1 \
    libxml2 \
    libxrandr2 \
    libxslt1.1 \
    libxss1 \
    x11-utils \
    xdg-utils \
	--no-install-recommends \
    && wget https://github.com/Eloston/ungoogled-chromium-binaries/releases/download/69.0.3497.100-2/ungoogled-chromium_69.0.3497.100-2.stretch_amd64.deb \
    && wget https://github.com/Eloston/ungoogled-chromium-binaries/releases/download/69.0.3497.100-2/ungoogled-chromium-common_69.0.3497.100-2.stretch_amd64.deb \
    && dpkg -i *.deb \
    && apt-get purge --auto-remove -y wget \
	&& rm -rf /var/lib/apt/lists/* \
    && rm -rf *.deb

RUN useradd -m -u 1000 -G audio,video iaroki
USER iaroki
COPY asoundrc /home/iaroki/.asoundrc
WORKDIR /home/iaroki
ENTRYPOINT ["chromium"]
