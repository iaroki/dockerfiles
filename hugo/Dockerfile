FROM alpine:edge
MAINTAINER iaroki
ENV HUGO_VERSION=0.48
ENV HUGO_TARGZ=hugo_${HUGO_VERSION}_Linux-64bit.tar.gz
RUN apk --update --no-cache add wget
RUN wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_TARGZ} \
    && tar xvf ${HUGO_TARGZ} \
    && mv hugo /bin/hugo \
    && rm -rf README LICENSE ${HUGO_TARGZ}
RUN adduser -u 1000 -D iaroki
WORKDIR /home/iaroki/blog
USER iaroki
CMD ["hugo"]
