FROM centos:7
RUN yum install httpd -y && \
    yum clean all && \
    systemctl enable httpd
EXPOSE 80
CMD ["/sbin/init"]
