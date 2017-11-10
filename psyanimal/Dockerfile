FROM debian:stretch
MAINTAINER iaroki
RUN useradd -m -u 1000 iaroki
RUN apt-get update && apt-get install --no-install-recommends python3-pip python3-setuptools python3-wheel libpython3.5 libasound2 gconf2 libgconf-2-4 libx11-xcb1 libgtk2.0-0 libnss3 libxss1 libxtst6 libfreetype6 git -y && apt-get clean
RUN cd /home/iaroki && git clone https://github.com/iaroki/psyanimal.git && cd psyanimal && pip3 install -r requirements.txt
RUN chown -R iaroki:iaroki /home/iaroki/psyanimal
USER iaroki
EXPOSE 9999
WORKDIR /home/iaroki/psyanimal
CMD ["python3", "psyanimal.py"]
