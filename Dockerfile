FROM centos:7.1.1503

ENV container docker
MAINTAINER wangdk
RUN yum swap -y fakesystemd systemd
COPY ./files/90-default.preset /usr/lib/systemd/system-preset/
RUN rm /usr/lib/systemd/system/getty@.service
VOLUME [ "/sys/fs/cgroup" ]

CMD ["/usr/sbin/init"]
