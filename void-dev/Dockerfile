FROM iaroki/voidlinux
MAINTAINER iaroki
RUN xbps-install -Sy vim git \
    && rm -rf /var/cache/xbps
RUN useradd -u 1000 -m iaroki
USER iaroki
COPY bashrc /home/iaroki/.bashrc
COPY vim /home/iaroki/.vim
COPY vimrc /home/iaroki/.vimrc
WORKDIR /home/iaroki
CMD ["bash"]
