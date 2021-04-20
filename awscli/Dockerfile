FROM alpine:3.13.5

RUN apk -uv add --no-cache aws-cli
RUN addgroup -S awsgroup && adduser -S awsuser -G awsgroup

USER awsuser

CMD sh
