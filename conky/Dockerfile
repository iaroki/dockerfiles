FROM alpine
MAINTAINER iaroki
RUN apk --update --no-cache add conky
RUN mkdir -p /root/.config/conky
COPY conky.conf /root/.config/conky/conky.conf
CMD ["conky"]
