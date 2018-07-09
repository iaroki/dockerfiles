FROM alpine:edge
MAINTAINER iaroki
RUN apk --update --no-cache add py2-pip git
RUN adduser -D -u 1000 iaroki
USER iaroki
ENV HOME=/home/iaroki
RUN cd $HOME && \
    git clone https://github.com/jpetazzo/container.training
RUN cd $HOME/container.training/slides \
    && pip install --user --no-cache-dir -r requirements.txt \
    && ./build.sh once \
    && rm index.html
EXPOSE 8080
WORKDIR $HOME/container.training/slides
CMD ["python", "-m", "SimpleHTTPServer", "8080"]
