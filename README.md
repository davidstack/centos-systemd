# centos-systemd
centos7.1.1503 with systemd
'''''
Centos 7.1.1503 with systemd

run contatiner with this command:
`docker run -itd --privileged -e "container=docker" -v /sys/fs/cgroup:/sys/fs/cgroup:ro centos/systemd:7.1.1503  /usr/sbin/init`
