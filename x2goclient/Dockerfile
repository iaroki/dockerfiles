FROM fedora:28
MAINTAINER iaroki
RUN dnf install -y x2goclient && dnf clean all
RUN useradd -u 1000 -m iaroki
USER iaroki
ENV QT_X11_NO_MITSHM=1
CMD ["x2goclient"]
