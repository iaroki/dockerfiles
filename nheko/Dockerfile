FROM fedora:28
MAINTAINER iaroki
RUN dnf install mesa-libGL nheko -y && dnf clean all
RUN useradd -m -u 1000 iaroki
USER iaroki
CMD ["nheko"]
