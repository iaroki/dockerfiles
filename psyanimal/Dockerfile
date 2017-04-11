FROM debian:jessie
MAINTAINER iaroki
RUN adduser iaroki
RUN apt-get update -y && apt-get install git python3 python3-pip -y && apt-get clean
RUN cd /home/iaroki && git clone https://github.com/iaroki/psyanimal.git && cd psyanimal && pip3 install -r requirements.txt
USER iaroki
EXPOSE 9999
WORKDIR /home/iaroki/psyanimal
CMD ["python3", "psyanimal.py"]
