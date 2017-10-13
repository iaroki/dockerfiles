FROM fedora 
MAINTAINER iaroki
RUN dnf install -y mesa-libGL mesa-dri-drivers dbus-x11 liberation-fonts \
    https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
RUN groupadd -r iaroki && useradd -r -g iaroki -G audio,video iaroki && \
    mkdir -p /home/iaroki/Downloads && chown -R iaroki:iaroki /home/iaroki
COPY asoundrc /home/iaroki/.asoundrc
USER iaroki
ENV DISPLAY :0
WORKDIR /home/iaroki
CMD ["google-chrome"]
