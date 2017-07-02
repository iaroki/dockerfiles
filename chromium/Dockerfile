FROM debian:stretch
MAINTAINER iaroki
RUN apt-get update && apt-get install -y chromium chromium-l10n fonts-liberation fonts-roboto hicolor-icon-theme \
    libcanberra-gtk-module libexif-dev libgl1-mesa-dri libgl1-mesa-glx libpango1.0-0 \
    --no-install-recommends && apt-get clean
RUN groupadd -r iaroki && useradd -r -g iaroki -G audio,video iaroki && \
    mkdir -p /home/iaroki/Downloads && chown -R iaroki:iaroki /home/iaroki
COPY asoundrc /home/iaroki/.asoundrc
USER iaroki
WORKDIR /home/iaroki
ENTRYPOINT ["chromium"]
