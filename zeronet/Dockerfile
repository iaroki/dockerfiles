FROM alpine
RUN apk --no-cache --no-progress add musl-dev gcc python python-dev py2-pip git && \
    pip install gevent msgpack && \
    git clone https://github.com/HelloZeroNet/ZeroNet /root/zeronet && \
    apk del musl-dev gcc python-dev py2-pip git && \
    rm -rf /var/cache/apk/* /tmp/* /var/tmp*
ENV HOME /root
WORKDIR /root/zeronet
EXPOSE 43110 15441
CMD ["python", "/root/zeronet/zeronet.py", "--ui_ip 0.0.0.0"]
