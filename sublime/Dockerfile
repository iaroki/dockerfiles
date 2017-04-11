FROM debian:jessie
MAINTAINER iaroki
RUN apt-get update -y && apt-get install wget libglib2.0-0 libx11-6 libgtk2.0 -y
RUN cd /root && wget https://download.sublimetext.com/sublime-text_build-3126_amd64.deb
RUN dpkg -i /root/sublime-text_build-3126_amd64.deb
RUN rm /root/sublime-text_build-3126_amd64.deb && apt-get clean
CMD ["/opt/sublime_text/sublime_text"]
