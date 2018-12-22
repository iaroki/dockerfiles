FROM alpine:edge
MAINTAINER iaroki
RUN apk --update --no-cache add caddy
COPY Caddyfile /etc/caddy/caddy.conf
WORKDIR /var/www
EXPOSE 8080
CMD ["caddy", "-conf", "/etc/caddy/caddy.conf"]
