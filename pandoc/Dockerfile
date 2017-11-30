FROM debian:stretch
RUN apt-get update && \
    apt-get install -y pandoc pandoc-citeproc && \
    apt-get clean
RUN useradd -u 1000 -m iaroki
USER iaroki
ENTRYPOINT ["pandoc"]
