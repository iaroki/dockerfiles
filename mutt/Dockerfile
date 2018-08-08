FROM alpine:edge
MAINTAINER iaroki
RUN apk --update --no-cache add ca-certificates vim mutt
RUN adduser -u 1000 -D iaroki
WORKDIR /home/iaroki
USER iaroki
CMD ["mutt"]
