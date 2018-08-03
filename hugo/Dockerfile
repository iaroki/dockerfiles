FROM alpine:edge
MAINTAINER iaroki
RUN apk --update --no-cache add wget
RUN wget https://github.com/gohugoio/hugo/releases/download/v0.46/hugo_0.46_Linux-64bit.tar.gz \
    && tar xvf hugo_0.46_Linux-64bit.tar.gz \
    && mv hugo /bin/hugo \
    && rm -rf README LICENSE hugo_0.46_Linux-64bit.tar.gz
RUN adduser -u 1000 -D iaroki
WORKDIR /home/iaroki
USER iaroki
CMD ["hugo"]
