FROM debian:jessie
MAINTAINER iaroki
RUN useradd -m iaroki
RUN apt-get update && apt-get install wget libglib2.0-0 libx11-6 libgtk2.0 -y && \
    wget https://download.sublimetext.com/sublime-text_build-3126_amd64.deb && \
    dpkg -i sublime-text_build-3126_amd64.deb && apt-get install -f && \
    rm -rf sublime-text_build-3126_amd64.deb && apt-get clean
USER iaroki
CMD ["/opt/sublime_text/sublime_text", "-w"]
