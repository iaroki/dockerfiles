FROM fedora:27
MAINTAINER iaroki
RUN dnf update -y && dnf install firefox -y && dnf clean all
ENV HOME=/home/iaroki
RUN useradd --create-home --home-dir $HOME iaroki \
    && chown -R iaroki:iaroki $HOME
WORKDIR $HOME
USER iaroki
#RUN dbus-uuidgen > /etc/machine-id
CMD ["firefox"]
