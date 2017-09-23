FROM debian:stretch
MAINTAINER iaroki
RUN useradd -m iaroki
RUN apt-get update && apt-get install \
    wget curl ca-certificates \
    gnupg2 \
    apt-transport-https \
    libglib2.0-0 \
    libx11-6 \
    libgtk2.0 --no-install-recommends -y && apt-get clean
RUN curl -sSL https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add - 
RUN echo "deb https://download.sublimetext.com/ apt/stable/" > /etc/apt/sources.list.d/sublime-text.list
RUN apt-get update && apt-get install sublime-text -y && apt-get clean
USER iaroki
COPY Consolas.ttf /home/iaroki/.fonts/Consolas.ttf
CMD ["subl", "-w"]
