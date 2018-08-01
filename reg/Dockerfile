FROM golang:alpine as builder

ENV PATH /go/bin:/usr/local/go/bin:$PATH
ENV GOPATH /go

RUN	apk add --no-cache \
	ca-certificates \
    git

RUN git clone https://github.com/genuinetools/reg \
    /go/src/github.com/genuinetools/reg

RUN set -x \
	&& apk add --no-cache --virtual .build-deps \
		git \
		gcc \
		libc-dev \
		libgcc \
		make \
	&& cd /go/src/github.com/genuinetools/reg \
	&& make static \
	&& mv reg /usr/bin/reg \
	&& apk del .build-deps \
    && cp -a /go/src/github.com/genuinetools/reg/server /server \
	&& rm -rf /go \
	&& echo "Build complete."

FROM scratch

COPY --from=builder /usr/bin/reg /usr/bin/reg
COPY --from=builder /etc/ssl/certs/ /etc/ssl/certs

COPY --from=builder /server/static /src/static
COPY --from=builder /server/templates /src/templates

WORKDIR /src

EXPOSE 8080
ENTRYPOINT [ "reg" ]
CMD [ "server", "-f", "-r", "localhost:5000" ]
