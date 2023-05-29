# docker run -d --rm \
#       -p 22222:22 \
#       --cap-add NET_ADMIN \
#       --device /dev/net/tun \
#       -v /home/msytnyk/vpn:/vpn \
#       -v /home/msytnyk/.ssh:/root/ssh:ro \
#       ssh-vpn

FROM alpine:3.18.0

RUN apk --update add --no-cache \
  curl \
  sed \
  openvpn \
  supervisor \
  openssh

RUN mkdir /var/run/sshd && \
    mkdir /log && \
    touch /log/supervisord.log

RUN echo "root:root" | chpasswd && \
    sed -i s/#PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config && \
    sed -i s/AllowTcpForwarding.*/AllowTcpForwarding\ yes/ /etc/ssh/sshd_config
    # echo "PermitRootLogin yes" | tee -a /etc/ssh/sshd_config

COPY supervisord.conf /etc/supervisord.conf
COPY entrypoint_ssh.sh /usr/local/bin/entrypoint_ssh.sh

EXPOSE 22

VOLUME ["/vpn", "/log"]

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
