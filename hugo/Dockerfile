FROM debian

RUN apt update \
    && apt install -y --no-install-recommends git wget ca-certificates vim \
    && mkdir /root/hugo \
    && cd /root/hugo \
    && wget https://github.com/gohugoio/hugo/releases/download/v0.29/hugo_0.29_Linux-64bit.tar.gz \
    && tar xf hugo_0.29_Linux-64bit.tar.gz \
    && rm hugo_0.29_Linux-64bit.tar.gz

WORKDIR /root/hugo
ENV PATH=$PATH:/root/hugo
EXPOSE 1313
CMD ["/bin/bash"]
