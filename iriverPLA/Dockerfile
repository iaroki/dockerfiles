FROM debian:jessie
MAINTAINER iaroki
RUN adduser iaroki
RUN apt-get update -y && apt-get install git pyqt4-dev-tools -y && apt-get clean
RUN cd /home/iaroki && git clone https://github.com/iaroki/iriverPLA.git
RUN chown -R iaroki:iaroki /home/iaroki/iriverPLA
USER iaroki
ENV QT_X11_NO_MITSHM=1
WORKDIR /home/iaroki/iriverPLA
CMD ["/home/iaroki/iriverPLA/iriverpla.py"]
