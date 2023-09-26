# docker run -d --rm \
#       -p 22222:22 \
#       --cap-add NET_ADMIN \
#       --device /dev/net/tun \
#       -v /home/msytnyk/vpn:/vpn \
#       ssh-vpn

FROM debian:12.1-slim

RUN apt-get update && \
  apt-get install -y \
  curl \
  sed \
  openvpn \
  supervisor \
  openssh-server

RUN mkdir /var/run/sshd && \
    mkdir /log && \
    touch /log/supervisord.log

RUN useradd -m msytnyk && \
    mkdir /home/msytnyk/.ssh && \
    chown msytnyk:msytnyk /home/msytnyk/.ssh

COPY supervisord.conf /etc/supervisord.conf
COPY entrypoint_ssh.sh /usr/local/bin/entrypoint_ssh.sh
COPY authorized_keys /home/msytnyk/.ssh/authorized_keys

EXPOSE 22

VOLUME ["/vpn", "/log"]

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
