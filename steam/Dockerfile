FROM iaroki/voidlinux
RUN xbps-install -Sy void-repo-multilib void-repo-nonfree && \
    xbps-install -Sy steam mesa-ati-dri-32bit && \
    rm -rf /var/cache/xbps/*
RUN useradd -u 1000 -m -G video iaroki
USER iaroki
WORKDIR /home/iaroki
CMD ["steam"]
