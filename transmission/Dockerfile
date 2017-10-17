FROM fedora 
MAINTAINER iaroki
RUN dnf install -y transmission-gtk
RUN groupadd -r iaroki && useradd -r -g iaroki -G audio,video iaroki && \
    mkdir -p /home/iaroki/Downloads && chown -R iaroki:iaroki /home/iaroki
USER iaroki
ENV DISPLAY :0
WORKDIR /home/iaroki
CMD ["transmission-gtk"]
