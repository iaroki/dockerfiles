FROM fedora:29
MAINTAINER iaroki
RUN dnf install -y libpng12 libX11 libX11-xcb libXi libxslt xcb-util-renderutil xcb-util-wm xcb-util-image xcb-util-keysyms fontconfig freetype libxkbcommon
COPY pt /opt/pt
RUN useradd -u 1000 -m iaroki
USER iaroki
CMD ["/opt/pt/pt"]
