FROM debian
MAINTAINER iaroki
ENV VERSION=0.31.1
RUN apt update && \
    apt install -y --no-install-recommends \
    git \
    wget \
    ca-certificates \
    vim && \
    cd /tmp && \
    wget https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_${VERSION}_Linux-64bit.tar.gz && \
    tar xf hugo_${VERSION}_Linux-64bit.tar.gz && \
    mv hugo /bin/hugo && \
    rm -rf /tmp/* && \
    apt clean
ENV BLOGDIR=/home/iaroki/blog
RUN useradd -u 1000 -m -s /bin/bash iaroki
USER iaroki
RUN mkdir ${BLOGDIR}
WORKDIR ${BLOGDIR}
EXPOSE 1313
CMD ["/bin/bash"]
