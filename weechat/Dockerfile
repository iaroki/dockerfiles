FROM alpine:latest

RUN apk add --no-cache \
	weechat \
	weechat-perl \
	weechat-python

ENV HOME /home/iaroki

RUN adduser -S iaroki \
	&& chown -R iaroki $HOME

WORKDIR $HOME
USER iaroki

ENTRYPOINT [ "weechat" ]
