FROM ubuntu:16.04
RUN apt-get update && apt-get install -y ciso && apt-get clean
RUN useradd -u 1000 -g 1000 -m iaroki
WORKDIR /home/iaroki
USER iaroki
CMD ["bash"]
