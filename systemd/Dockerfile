FROM centos:7
ENV container docker
RUN yum install httpd -y && \
    yum clean all && \
    systemctl enable httpd
EXPOSE 80
CMD ["/sbin/init"]
