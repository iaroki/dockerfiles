FROM fedora:28
MAINTAINER iaroki
RUN dnf update -y \
    && dnf install buildah git vim -y
RUN useradd -m -u 1000 iaroki
WORKDIR /home/iaroki
USER iaroki
CMD [ "bash" ]
