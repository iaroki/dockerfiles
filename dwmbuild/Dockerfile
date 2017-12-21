FROM iaroki/voidlinux
RUN xbps-install -S -y make gcc pkg-config libXft-devel freetype-devel && rm -rf /var/cache/xbps
COPY build.sh /bin/build.sh
VOLUME ["/src"]
ENTRYPOINT ["bash", "/bin/build.sh"]
