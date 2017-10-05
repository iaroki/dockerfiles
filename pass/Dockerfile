FROM fedora
MAINTAINER iaroki
RUN dnf install pass -y && dnf clean all
ENV HOME=/home/iaroki
RUN useradd --create-home --home-dir $HOME iaroki \
    && chown -R iaroki:iaroki $HOME
WORKDIR $HOME
USER iaroki
#RUN dbus-uuidgen > /etc/machine-id
ENTRYPOINT ["pass"]
