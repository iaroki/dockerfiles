FROM debian:stretch
MAINTAINER iaroki
RUN apt-get update && \
    apt-get install -y pandoc pandoc-citeproc && \
    apt-get clean
RUN useradd -u 1000 -m iaroki
USER iaroki
RUN mkdir /home/iaroki/pandoc
WORKDIR /home/iaroki/pandoc
CMD ["bash"]
