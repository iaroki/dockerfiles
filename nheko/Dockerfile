FROM fedora:28
MAINTAINER iaroki
RUN dnf install mesa-libGL google-noto-fonts-common google-noto-cjk-fonts nheko -y && dnf clean all
RUN useradd -m -u 1000 iaroki
USER iaroki
CMD ["nheko"]
