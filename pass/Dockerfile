FROM fedora
MAINTAINER iaroki
RUN dnf install pass gnupg2 findutils -y && dnf clean all
RUN ln -s /usr/bin/gpg2 /usr/bin/gpg
ENV HOME=/home/iaroki
RUN useradd --create-home --home-dir $HOME iaroki \
    && chown -R iaroki:iaroki $HOME
WORKDIR $HOME
USER iaroki
#RUN dbus-uuidgen > /etc/machine-id
ENTRYPOINT ["pass"]
